import 'dart:math';

import 'package:budget/database/tables.dart';
import 'package:budget/struct/databaseGlobal.dart';

void generatePreviewData() async {
  await database.createOrUpdateWallet(
    TransactionWallet(
      walletPk: 1690425351861,
      name: "Euros",
      colour: null,
      iconName: null,
      dateCreated: DateTime.now(),
      dateTimeModified: null,
      order: 1,
      currency: "eur",
      decimals: 2,
    ),
  );
  await database.createOrUpdateWallet(
    TransactionWallet(
      walletPk: 1690425363794,
      name: "Bitcoin",
      colour: null,
      iconName: null,
      dateCreated: DateTime.now(),
      dateTimeModified: null,
      order: 2,
      currency: "btc",
      decimals: 7,
    ),
  );
  DateTime tripStart = DateTime.now().subtract(Duration(days: 7));
  DateTime tripEnd = DateTime.now().add(Duration(days: 14));
  await database.createOrUpdateBudget(
    updateSharedEntry: false,
    Budget(
      budgetPk: 1690425631620,
      name: "Graduation Trip",
      amount: 2500.0,
      colour: "0xffef5350",
      startDate: tripStart,
      endDate: tripEnd,
      categoryFks: [],
      allCategoryFks: true,
      addedTransactionsOnly: true,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.custom,
      dateCreated: DateTime.now(),
      dateTimeModified: null,
      pinned: true,
      order: 1,
      walletFk: 0,
      isAbsoluteSpendingLimit: false,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426112220,
      name: "Plane Ticket",
      amount: -1000.0,
      note: "",
      categoryFk: 11,
      walletFk: 0,
      dateCreated: tripStart,
      dateTimeModified: null,
      income: false,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
      sharedReferenceBudgetPk: 1690425631620,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
        transactionPk: 1690426073796,
        name: "Phone Bill",
        amount: -25.6,
        note: "Extra fees",
        categoryFk: 6,
        walletFk: 0,
        dateCreated: tripStart.add(Duration(days: 2)),
        dateTimeModified: null,
        income: false,
        periodLength: 1,
        reoccurrence: BudgetReoccurence.monthly,
        upcomingTransactionNotification: true,
        type: null,
        paid: true,
        createdAnotherFutureTransaction: false,
        skipPaid: true,
        sharedReferenceBudgetPk: 1690425631620),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426036765,
      name: "Coffee",
      amount: -6,
      note: "",
      categoryFk: 1,
      walletFk: 1690425351861,
      dateCreated: tripStart.add(Duration(days: 2)),
      dateTimeModified: null,
      income: false,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
      sharedReferenceBudgetPk: 1690425631620,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426036764,
      name: "Coffee",
      amount: -10.0,
      note: "",
      categoryFk: 1,
      walletFk: 1690425351861,
      dateCreated: tripStart.add(Duration(days: 4)),
      dateTimeModified: null,
      income: false,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
      sharedReferenceBudgetPk: 1690425631620,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426036763,
      name: "Restaurant",
      amount: -50.0,
      note: "",
      categoryFk: 1,
      walletFk: 1690425351861,
      dateCreated: tripStart.add(Duration(days: 1)),
      dateTimeModified: null,
      income: false,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
      sharedReferenceBudgetPk: 1690425631620,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426036762,
      name: "",
      amount: -22.0,
      note: "",
      categoryFk: 2,
      walletFk: 1690425351861,
      dateCreated: tripStart.add(Duration(days: 4)),
      dateTimeModified: null,
      income: false,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
      sharedReferenceBudgetPk: 1690425631620,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426036761,
      name: "",
      amount: -15,
      note: "",
      categoryFk: 4,
      walletFk: 1690425351861,
      dateCreated: tripStart.add(Duration(days: 3)),
      dateTimeModified: null,
      income: false,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
      sharedReferenceBudgetPk: 1690425631620,
    ),
  );
  await database.createOrUpdateBudget(
    updateSharedEntry: false,
    Budget(
      budgetPk: 1690425318506,
      name: "Monthly Spending",
      amount: 500.0,
      colour: null,
      startDate: DateTime(DateTime.now().year, DateTime.now().month, 1),
      endDate: DateTime.now(),
      categoryFks: null,
      allCategoryFks: true,
      addedTransactionsOnly: false,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      dateCreated: DateTime.now(),
      dateTimeModified: null,
      pinned: true,
      order: 0,
      walletFk: 0,
      budgetTransactionFilters: [],
      memberTransactionFilters: null,
      sharedKey: null,
      sharedOwnerMember: null,
      sharedDateUpdated: null,
      sharedMembers: null,
      sharedAllMembersEver: null,
      isAbsoluteSpendingLimit: false,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426251631,
      name: "Payroll",
      amount: 580.89,
      note: "",
      categoryFk: 6,
      walletFk: 0,
      dateCreated: DateTime(DateTime.now().year, DateTime.now().month - 2, 1),
      dateTimeModified: null,
      income: true,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426251632,
      name: "Payroll",
      amount: 780.55,
      note: "",
      categoryFk: 6,
      walletFk: 0,
      dateCreated: DateTime(DateTime.now().year, DateTime.now().month - 1, 1),
      dateTimeModified: null,
      income: true,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426251633,
      name: "Payroll",
      amount: 650.45,
      note: "",
      categoryFk: 6,
      walletFk: 0,
      dateCreated: DateTime(DateTime.now().year, DateTime.now().month, 1),
      dateTimeModified: null,
      income: true,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426226582,
      name: "Extra income",
      amount: 0.005,
      note: "",
      categoryFk: 6,
      walletFk: 1690425363794,
      dateCreated: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day - 20),
      dateTimeModified: null,
      income: true,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426189760,
      name: "Clothes",
      amount: -95.0,
      note: "Department store",
      categoryFk: 3,
      walletFk: 0,
      dateCreated: DateTime.now().subtract(Duration(days: 5)),
      dateTimeModified: null,
      income: false,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426189759,
      name: "",
      amount: -32.0,
      note: "",
      categoryFk: 1,
      walletFk: 0,
      dateCreated: DateTime.now().subtract(Duration(days: 9)),
      dateTimeModified: null,
      income: false,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426189758,
      name: "",
      amount: -8.53,
      note: "",
      categoryFk: 1,
      walletFk: 0,
      dateCreated: DateTime.now().subtract(Duration(days: 11)),
      dateTimeModified: null,
      income: false,
      periodLength: 1,
      reoccurrence: BudgetReoccurence.monthly,
      upcomingTransactionNotification: true,
      type: null,
      paid: true,
      createdAnotherFutureTransaction: false,
      skipPaid: true,
    ),
  );
  await database.createOrUpdateTransaction(
    updateSharedEntry: false,
    Transaction(
      transactionPk: 1690426415990,
      name: "Movie stream",
      amount: -15.0,
      note: "",
      categoryFk: 5,
      walletFk: 0,
      dateCreated: DateTime.now(),
      dateTimeModified: null,
      income: false,
      periodLength: 1,
      paid: false,
      skipPaid: false,
    ),
  );
  for (int i = 5; i < 300; i = i + Random().nextInt(4)) {
    List<int> moreCommonCategories = [1, 2, 3, 4, 5];
    List<int> moreCommonCommonCategories = [1, 2, 4];
    await database.createOrUpdateTransaction(
      updateSharedEntry: false,
      insert: true,
      Transaction(
        transactionPk: -1,
        name: "",
        amount: (1 + Random().nextDouble() * 45) * -1,
        note: "",
        categoryFk: Random().nextInt(2) == 0
            ? Random().nextInt(2) == 0
                ? moreCommonCategories[
                    Random().nextInt(moreCommonCommonCategories.length)]
                : moreCommonCategories[
                    Random().nextInt(moreCommonCategories.length)]
            : Random().nextInt(11) + 1,
        walletFk: 0,
        dateCreated: DateTime.now().subtract(Duration(days: i)),
        income: false,
        paid: true,
        skipPaid: true,
      ),
    );
  }

  for (int i = 90; i < 320; i = i + 25 + Random().nextInt(10)) {
    await database.createOrUpdateTransaction(
      updateSharedEntry: false,
      insert: true,
      Transaction(
        transactionPk: -1,
        name: "",
        amount: 300 + Random().nextDouble() * 200,
        note: "",
        categoryFk: Random().nextInt(2) == 0 ? 6 : 10,
        walletFk: 0,
        dateCreated: DateTime.now().subtract(Duration(days: i)),
        income: true,
        paid: true,
        skipPaid: true,
      ),
    );
  }
}