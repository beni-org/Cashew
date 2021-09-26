import 'package:budget/functions.dart';
import 'package:budget/widgets/button.dart';
import 'package:budget/widgets/textInput.dart';
import 'package:budget/widgets/textWidgets.dart';
import 'package:budget/widgets/transactionEntry.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:budget/colors.dart';
import 'package:math_expressions/math_expressions.dart';

//TODO
//only show the tags that correspond to selected category
//put recent used tags at the top? when no category selected

class AddTransactionPage extends StatefulWidget {
  AddTransactionPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _AddTransactionPageState createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 0), () {
      openBottomSheet(
        context,
        PopupFramework(
          title: "Select Category",
          child: SelectCategory(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: Container(),
                backgroundColor: Colors.black,
                floating: false,
                pinned: true,
                expandedHeight: 200.0,
                collapsedHeight: 65,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                  title: TextFont(
                    text: "Add Transaction",
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    TextInput(labelText: "labelText"),
                  ],
                ),
              ),
              SliverFillRemaining()
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Button(
              label: "Select Category",
              width: MediaQuery.of(context).size.width,
              height: 50,
              fractionScaleHeight: 0.93,
              fractionScaleWidth: 0.98,
              onTap: () {
                openBottomSheet(
                  context,
                  PopupFramework(
                    title: "Select Category",
                    child: SelectCategory(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

openBottomSheet(context, child) {
  return showMaterialModalBottomSheet(
    animationCurve: Curves.fastOutSlowIn,
    duration: Duration(milliseconds: 500),
    backgroundColor: Colors.transparent,
    expand: true,
    context: context,
    builder: (context) => GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      behavior: HitTestBehavior.opaque,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: SingleChildScrollView(
          controller: ModalScrollController.of(context),
          child: child,
        ),
      ),
    ),
  );
}

class PopupFramework extends StatelessWidget {
  PopupFramework({Key? key, required this.child, this.title}) : super(key: key);
  final Widget child;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color:
                Theme.of(context).colorScheme.lightDarkAccent.withOpacity(0.5),
          ),
        ),
        Container(height: 5),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              color: Theme.of(context).colorScheme.lightDarkAccent,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 15),
                  title == null
                      ? Container(height: 5)
                      : TextFont(
                          text: title ?? "",
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                  Container(height: 10),
                  child,
                  Container(height: 10),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SelectCategory extends StatefulWidget {
  SelectCategory({Key? key}) : super(key: key);

  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        children: listCategory()
            .asMap()
            .map(
              (index, category) => MapEntry(
                index,
                CategoryIcon(
                  category: category,
                  size: 42,
                  label: true,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                    Future.delayed(Duration(milliseconds: 100), () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                      openBottomSheet(
                        context,
                        PopupFramework(
                          title: "Enter Amount",
                          child: SelectAmount(),
                        ),
                      );
                    });
                  },
                  outline: selectedIndex == index,
                ),
              ),
            )
            .values
            .toList(),
      ),
    );
  }
}

class SelectAmount extends StatefulWidget {
  SelectAmount({Key? key}) : super(key: key);

  @override
  _SelectAmountState createState() => _SelectAmountState();
}

class _SelectAmountState extends State<SelectAmount> {
  String amount = "";
  addToAmount(String input) {
    String amountClone = amount;
    if (input == "." &&
        !decimalCheck(operationsWithSpaces(amountClone + "."))) {
      return;
    }
    if (amount.length == 0 && !includesOperations(input, false)) {
      if (input == "0") {
        return;
      }
      if (input == ".") {
        setState(() {
          amount += "0" + input;
        });
      } else {
        setState(() {
          amount += input;
        });
      }
    } else if (amount.substring(amount.length - 1) == "0" && input == "0") {
      return;
    } else if ((!includesOperations(
                amount.substring(amount.length - 1), true) &&
            includesOperations(input, true)) ||
        !includesOperations(input, true)) {
      setState(() {
        amount += input;
      });
    } else if (includesOperations(amount.substring(amount.length - 1), false) &&
        input == ".") {
      setState(() {
        amount += "0" + input;
      });
    } else if (amount.substring(amount.length - 1) == "." &&
        includesOperations(input, false)) {
      setState(() {
        amount = amount.substring(0, amount.length - 1) + input;
      });
    }
  }

  void removeToAmount() {
    setState(() {
      if (amount.length > 0) {
        amount = amount.substring(0, amount.length - 1);
      }
    });
  }

  bool includesOperations(String input, bool includeDecimal) {
    List<String> operations = [
      "÷",
      "×",
      "-",
      "+",
      (includeDecimal ? "." : "+")
    ];
    for (String operation in operations) {
      if (input.contains(operation)) {
        print(operation);
        return true;
      }
    }
    return false;
  }

  bool decimalCheck(input) {
    var splitInputs = input.split(" ");
    for (var splitInput in splitInputs) {
      print('.'.allMatches(splitInput));
      if ('.'.allMatches(splitInput).length > 1) {
        return false;
      }
    }
    return true;
  }

  String operationsWithSpaces(String input) {
    return input
        .replaceAll("÷", " ÷ ")
        .replaceAll("×", " × ")
        .replaceAll("-", " - ")
        .replaceAll("+", " + ");
  }

  double calculateResult(input) {
    if (input == "") {
      return 0;
    }
    String changedInput = input;
    if (includesOperations(input.substring(input.length - 1), true)) {
      changedInput = input.substring(0, input.length - 1);
    }
    changedInput = changedInput.replaceAll("÷", "/");
    changedInput = changedInput.replaceAll("×", "*");
    double result = 0;
    try {
      ContextModel cm = ContextModel();
      Parser p = new Parser();
      Expression exp = p.parse(changedInput);
      result = exp.evaluate(EvaluationType.REAL, cm);
    } catch (e) {}
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              FractionallySizedBox(
                widthFactor: 0.5,
                child: TextFont(
                  text: (includesOperations(amount, false)
                      ? operationsWithSpaces(amount)
                      : ""),
                  textAlign: TextAlign.left,
                  fontSize: 18,
                  maxLines: 5,
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.5,
                child: TextFont(
                  text: amount == ""
                      ? getCurrencyString() + "0"
                      : includesOperations(amount, false)
                          ? convertToMoney(calculateResult(amount))
                          : getCurrencyString() + amount,
                  // text: amount,
                  textAlign: TextAlign.right,
                  fontSize: 28,
                  maxLines: 5,
                ),
              ),
            ],
          ),
          Row(
            children: [
              CalculatorButton(
                  label: "1",
                  editAmount: () {
                    addToAmount("1");
                  }),
              CalculatorButton(
                  label: "2",
                  editAmount: () {
                    addToAmount("2");
                  }),
              CalculatorButton(
                  label: "3",
                  editAmount: () {
                    addToAmount("3");
                  }),
              CalculatorButton(
                  label: "÷",
                  editAmount: () {
                    addToAmount("÷");
                  }),
            ],
          ),
          Row(
            children: [
              CalculatorButton(
                  label: "4",
                  editAmount: () {
                    addToAmount("4");
                  }),
              CalculatorButton(
                  label: "5",
                  editAmount: () {
                    addToAmount("5");
                  }),
              CalculatorButton(
                  label: "6",
                  editAmount: () {
                    addToAmount("6");
                  }),
              CalculatorButton(
                  label: "×",
                  editAmount: () {
                    addToAmount("×");
                  }),
            ],
          ),
          Row(
            children: [
              CalculatorButton(
                  label: "7",
                  editAmount: () {
                    addToAmount("7");
                  }),
              CalculatorButton(
                  label: "8",
                  editAmount: () {
                    addToAmount("8");
                  }),
              CalculatorButton(
                  label: "9",
                  editAmount: () {
                    addToAmount("9");
                  }),
              CalculatorButton(
                  label: "-",
                  editAmount: () {
                    addToAmount("-");
                  }),
            ],
          ),
          Row(
            children: [
              CalculatorButton(
                  label: ".",
                  editAmount: () {
                    addToAmount(".");
                  }),
              CalculatorButton(
                  label: "0",
                  editAmount: () {
                    addToAmount("0");
                  }),
              CalculatorButton(
                  label: "<",
                  editAmount: () {
                    removeToAmount();
                  }),
              CalculatorButton(
                  label: "+",
                  editAmount: () {
                    addToAmount("+");
                  }),
            ],
          ),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: amount != ""
                ? Button(
                    key: Key("addSuccess"),
                    label: "Add Transaction",
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    fractionScaleHeight: 0.93,
                    fractionScaleWidth: 0.91,
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                  )
                : Button(
                    key: Key("addNoSuccess"),
                    label: "Add Transaction",
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    fractionScaleHeight: 0.93,
                    fractionScaleWidth: 0.91,
                    onTap: () {},
                    color: Colors.grey,
                  ),
          )
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  CalculatorButton({Key? key, required this.label, required this.editAmount})
      : super(key: key);
  final String label;
  final VoidCallback editAmount;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: editAmount,
          child: Container(
            height: 50,
            child: Center(
              child: TextFont(
                text: label,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
