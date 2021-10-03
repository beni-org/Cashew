// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tables.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Transaction extends DataClass implements Insertable<Transaction> {
  final int transactionPk;
  final String name;
  final double amount;
  final String note;
  final int budgetFk;
  final int categoryFk;
  final List<int>? labelFks;
  final DateTime dateCreated;
  Transaction(
      {required this.transactionPk,
      required this.name,
      required this.amount,
      required this.note,
      required this.budgetFk,
      required this.categoryFk,
      this.labelFks,
      required this.dateCreated});
  factory Transaction.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Transaction(
      transactionPk: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}transaction_pk'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      amount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      note: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}note'])!,
      budgetFk: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}budget_fk'])!,
      categoryFk: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category_fk'])!,
      labelFks: $TransactionsTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}label_fks'])),
      dateCreated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_created'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['transaction_pk'] = Variable<int>(transactionPk);
    map['name'] = Variable<String>(name);
    map['amount'] = Variable<double>(amount);
    map['note'] = Variable<String>(note);
    map['budget_fk'] = Variable<int>(budgetFk);
    map['category_fk'] = Variable<int>(categoryFk);
    if (!nullToAbsent || labelFks != null) {
      final converter = $TransactionsTable.$converter0;
      map['label_fks'] = Variable<String?>(converter.mapToSql(labelFks));
    }
    map['date_created'] = Variable<DateTime>(dateCreated);
    return map;
  }

  TransactionsCompanion toCompanion(bool nullToAbsent) {
    return TransactionsCompanion(
      transactionPk: Value(transactionPk),
      name: Value(name),
      amount: Value(amount),
      note: Value(note),
      budgetFk: Value(budgetFk),
      categoryFk: Value(categoryFk),
      labelFks: labelFks == null && nullToAbsent
          ? const Value.absent()
          : Value(labelFks),
      dateCreated: Value(dateCreated),
    );
  }

  factory Transaction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Transaction(
      transactionPk: serializer.fromJson<int>(json['transactionPk']),
      name: serializer.fromJson<String>(json['name']),
      amount: serializer.fromJson<double>(json['amount']),
      note: serializer.fromJson<String>(json['note']),
      budgetFk: serializer.fromJson<int>(json['budgetFk']),
      categoryFk: serializer.fromJson<int>(json['categoryFk']),
      labelFks: serializer.fromJson<List<int>?>(json['labelFks']),
      dateCreated: serializer.fromJson<DateTime>(json['dateCreated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'transactionPk': serializer.toJson<int>(transactionPk),
      'name': serializer.toJson<String>(name),
      'amount': serializer.toJson<double>(amount),
      'note': serializer.toJson<String>(note),
      'budgetFk': serializer.toJson<int>(budgetFk),
      'categoryFk': serializer.toJson<int>(categoryFk),
      'labelFks': serializer.toJson<List<int>?>(labelFks),
      'dateCreated': serializer.toJson<DateTime>(dateCreated),
    };
  }

  Transaction copyWith(
          {int? transactionPk,
          String? name,
          double? amount,
          String? note,
          int? budgetFk,
          int? categoryFk,
          List<int>? labelFks,
          DateTime? dateCreated}) =>
      Transaction(
        transactionPk: transactionPk ?? this.transactionPk,
        name: name ?? this.name,
        amount: amount ?? this.amount,
        note: note ?? this.note,
        budgetFk: budgetFk ?? this.budgetFk,
        categoryFk: categoryFk ?? this.categoryFk,
        labelFks: labelFks ?? this.labelFks,
        dateCreated: dateCreated ?? this.dateCreated,
      );
  @override
  String toString() {
    return (StringBuffer('Transaction(')
          ..write('transactionPk: $transactionPk, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('note: $note, ')
          ..write('budgetFk: $budgetFk, ')
          ..write('categoryFk: $categoryFk, ')
          ..write('labelFks: $labelFks, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      transactionPk.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              amount.hashCode,
              $mrjc(
                  note.hashCode,
                  $mrjc(
                      budgetFk.hashCode,
                      $mrjc(categoryFk.hashCode,
                          $mrjc(labelFks.hashCode, dateCreated.hashCode))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Transaction &&
          other.transactionPk == this.transactionPk &&
          other.name == this.name &&
          other.amount == this.amount &&
          other.note == this.note &&
          other.budgetFk == this.budgetFk &&
          other.categoryFk == this.categoryFk &&
          other.labelFks == this.labelFks &&
          other.dateCreated == this.dateCreated);
}

class TransactionsCompanion extends UpdateCompanion<Transaction> {
  final Value<int> transactionPk;
  final Value<String> name;
  final Value<double> amount;
  final Value<String> note;
  final Value<int> budgetFk;
  final Value<int> categoryFk;
  final Value<List<int>?> labelFks;
  final Value<DateTime> dateCreated;
  const TransactionsCompanion({
    this.transactionPk = const Value.absent(),
    this.name = const Value.absent(),
    this.amount = const Value.absent(),
    this.note = const Value.absent(),
    this.budgetFk = const Value.absent(),
    this.categoryFk = const Value.absent(),
    this.labelFks = const Value.absent(),
    this.dateCreated = const Value.absent(),
  });
  TransactionsCompanion.insert({
    this.transactionPk = const Value.absent(),
    required String name,
    required double amount,
    required String note,
    required int budgetFk,
    required int categoryFk,
    this.labelFks = const Value.absent(),
    this.dateCreated = const Value.absent(),
  })  : name = Value(name),
        amount = Value(amount),
        note = Value(note),
        budgetFk = Value(budgetFk),
        categoryFk = Value(categoryFk);
  static Insertable<Transaction> custom({
    Expression<int>? transactionPk,
    Expression<String>? name,
    Expression<double>? amount,
    Expression<String>? note,
    Expression<int>? budgetFk,
    Expression<int>? categoryFk,
    Expression<List<int>?>? labelFks,
    Expression<DateTime>? dateCreated,
  }) {
    return RawValuesInsertable({
      if (transactionPk != null) 'transaction_pk': transactionPk,
      if (name != null) 'name': name,
      if (amount != null) 'amount': amount,
      if (note != null) 'note': note,
      if (budgetFk != null) 'budget_fk': budgetFk,
      if (categoryFk != null) 'category_fk': categoryFk,
      if (labelFks != null) 'label_fks': labelFks,
      if (dateCreated != null) 'date_created': dateCreated,
    });
  }

  TransactionsCompanion copyWith(
      {Value<int>? transactionPk,
      Value<String>? name,
      Value<double>? amount,
      Value<String>? note,
      Value<int>? budgetFk,
      Value<int>? categoryFk,
      Value<List<int>?>? labelFks,
      Value<DateTime>? dateCreated}) {
    return TransactionsCompanion(
      transactionPk: transactionPk ?? this.transactionPk,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      note: note ?? this.note,
      budgetFk: budgetFk ?? this.budgetFk,
      categoryFk: categoryFk ?? this.categoryFk,
      labelFks: labelFks ?? this.labelFks,
      dateCreated: dateCreated ?? this.dateCreated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (transactionPk.present) {
      map['transaction_pk'] = Variable<int>(transactionPk.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (budgetFk.present) {
      map['budget_fk'] = Variable<int>(budgetFk.value);
    }
    if (categoryFk.present) {
      map['category_fk'] = Variable<int>(categoryFk.value);
    }
    if (labelFks.present) {
      final converter = $TransactionsTable.$converter0;
      map['label_fks'] = Variable<String?>(converter.mapToSql(labelFks.value));
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime>(dateCreated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsCompanion(')
          ..write('transactionPk: $transactionPk, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('note: $note, ')
          ..write('budgetFk: $budgetFk, ')
          ..write('categoryFk: $categoryFk, ')
          ..write('labelFks: $labelFks, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }
}

class $TransactionsTable extends Transactions
    with TableInfo<$TransactionsTable, Transaction> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TransactionsTable(this._db, [this._alias]);
  final VerificationMeta _transactionPkMeta =
      const VerificationMeta('transactionPk');
  late final GeneratedColumn<int?> transactionPk = GeneratedColumn<int?>(
      'transaction_pk', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  late final GeneratedColumn<double?> amount = GeneratedColumn<double?>(
      'amount', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _noteMeta = const VerificationMeta('note');
  late final GeneratedColumn<String?> note = GeneratedColumn<String?>(
      'note', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _budgetFkMeta = const VerificationMeta('budgetFk');
  late final GeneratedColumn<int?> budgetFk = GeneratedColumn<int?>(
      'budget_fk', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _categoryFkMeta = const VerificationMeta('categoryFk');
  late final GeneratedColumn<int?> categoryFk = GeneratedColumn<int?>(
      'category_fk', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _labelFksMeta = const VerificationMeta('labelFks');
  late final GeneratedColumnWithTypeConverter<List<int>, String?> labelFks =
      GeneratedColumn<String?>('label_fks', aliasedName, true,
              typeName: 'TEXT', requiredDuringInsert: false)
          .withConverter<List<int>>($TransactionsTable.$converter0);
  final VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  late final GeneratedColumn<DateTime?> dateCreated =
      GeneratedColumn<DateTime?>('date_created', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          clientDefault: () => new DateTime.now());
  @override
  List<GeneratedColumn> get $columns => [
        transactionPk,
        name,
        amount,
        note,
        budgetFk,
        categoryFk,
        labelFks,
        dateCreated
      ];
  @override
  String get aliasedName => _alias ?? 'transactions';
  @override
  String get actualTableName => 'transactions';
  @override
  VerificationContext validateIntegrity(Insertable<Transaction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('transaction_pk')) {
      context.handle(
          _transactionPkMeta,
          transactionPk.isAcceptableOrUnknown(
              data['transaction_pk']!, _transactionPkMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('budget_fk')) {
      context.handle(_budgetFkMeta,
          budgetFk.isAcceptableOrUnknown(data['budget_fk']!, _budgetFkMeta));
    } else if (isInserting) {
      context.missing(_budgetFkMeta);
    }
    if (data.containsKey('category_fk')) {
      context.handle(
          _categoryFkMeta,
          categoryFk.isAcceptableOrUnknown(
              data['category_fk']!, _categoryFkMeta));
    } else if (isInserting) {
      context.missing(_categoryFkMeta);
    }
    context.handle(_labelFksMeta, const VerificationResult.success());
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {transactionPk};
  @override
  Transaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Transaction.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TransactionsTable createAlias(String alias) {
    return $TransactionsTable(_db, alias);
  }

  static TypeConverter<List<int>, String> $converter0 =
      const IntListInColumnConverter();
}

class TransactionCategory extends DataClass
    implements Insertable<TransactionCategory> {
  final int categoryPk;
  final String name;
  final String? colour;
  final String? iconName;
  final DateTime dateCreated;
  TransactionCategory(
      {required this.categoryPk,
      required this.name,
      this.colour,
      this.iconName,
      required this.dateCreated});
  factory TransactionCategory.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TransactionCategory(
      categoryPk: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category_pk'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      colour: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}colour']),
      iconName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}icon_name']),
      dateCreated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_created'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['category_pk'] = Variable<int>(categoryPk);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || colour != null) {
      map['colour'] = Variable<String?>(colour);
    }
    if (!nullToAbsent || iconName != null) {
      map['icon_name'] = Variable<String?>(iconName);
    }
    map['date_created'] = Variable<DateTime>(dateCreated);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      categoryPk: Value(categoryPk),
      name: Value(name),
      colour:
          colour == null && nullToAbsent ? const Value.absent() : Value(colour),
      iconName: iconName == null && nullToAbsent
          ? const Value.absent()
          : Value(iconName),
      dateCreated: Value(dateCreated),
    );
  }

  factory TransactionCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TransactionCategory(
      categoryPk: serializer.fromJson<int>(json['categoryPk']),
      name: serializer.fromJson<String>(json['name']),
      colour: serializer.fromJson<String?>(json['colour']),
      iconName: serializer.fromJson<String?>(json['iconName']),
      dateCreated: serializer.fromJson<DateTime>(json['dateCreated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'categoryPk': serializer.toJson<int>(categoryPk),
      'name': serializer.toJson<String>(name),
      'colour': serializer.toJson<String?>(colour),
      'iconName': serializer.toJson<String?>(iconName),
      'dateCreated': serializer.toJson<DateTime>(dateCreated),
    };
  }

  TransactionCategory copyWith(
          {int? categoryPk,
          String? name,
          String? colour,
          String? iconName,
          DateTime? dateCreated}) =>
      TransactionCategory(
        categoryPk: categoryPk ?? this.categoryPk,
        name: name ?? this.name,
        colour: colour ?? this.colour,
        iconName: iconName ?? this.iconName,
        dateCreated: dateCreated ?? this.dateCreated,
      );
  @override
  String toString() {
    return (StringBuffer('TransactionCategory(')
          ..write('categoryPk: $categoryPk, ')
          ..write('name: $name, ')
          ..write('colour: $colour, ')
          ..write('iconName: $iconName, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      categoryPk.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(colour.hashCode,
              $mrjc(iconName.hashCode, dateCreated.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionCategory &&
          other.categoryPk == this.categoryPk &&
          other.name == this.name &&
          other.colour == this.colour &&
          other.iconName == this.iconName &&
          other.dateCreated == this.dateCreated);
}

class CategoriesCompanion extends UpdateCompanion<TransactionCategory> {
  final Value<int> categoryPk;
  final Value<String> name;
  final Value<String?> colour;
  final Value<String?> iconName;
  final Value<DateTime> dateCreated;
  const CategoriesCompanion({
    this.categoryPk = const Value.absent(),
    this.name = const Value.absent(),
    this.colour = const Value.absent(),
    this.iconName = const Value.absent(),
    this.dateCreated = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.categoryPk = const Value.absent(),
    required String name,
    this.colour = const Value.absent(),
    this.iconName = const Value.absent(),
    this.dateCreated = const Value.absent(),
  }) : name = Value(name);
  static Insertable<TransactionCategory> custom({
    Expression<int>? categoryPk,
    Expression<String>? name,
    Expression<String?>? colour,
    Expression<String?>? iconName,
    Expression<DateTime>? dateCreated,
  }) {
    return RawValuesInsertable({
      if (categoryPk != null) 'category_pk': categoryPk,
      if (name != null) 'name': name,
      if (colour != null) 'colour': colour,
      if (iconName != null) 'icon_name': iconName,
      if (dateCreated != null) 'date_created': dateCreated,
    });
  }

  CategoriesCompanion copyWith(
      {Value<int>? categoryPk,
      Value<String>? name,
      Value<String?>? colour,
      Value<String?>? iconName,
      Value<DateTime>? dateCreated}) {
    return CategoriesCompanion(
      categoryPk: categoryPk ?? this.categoryPk,
      name: name ?? this.name,
      colour: colour ?? this.colour,
      iconName: iconName ?? this.iconName,
      dateCreated: dateCreated ?? this.dateCreated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (categoryPk.present) {
      map['category_pk'] = Variable<int>(categoryPk.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (colour.present) {
      map['colour'] = Variable<String?>(colour.value);
    }
    if (iconName.present) {
      map['icon_name'] = Variable<String?>(iconName.value);
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime>(dateCreated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('categoryPk: $categoryPk, ')
          ..write('name: $name, ')
          ..write('colour: $colour, ')
          ..write('iconName: $iconName, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, TransactionCategory> {
  final GeneratedDatabase _db;
  final String? _alias;
  $CategoriesTable(this._db, [this._alias]);
  final VerificationMeta _categoryPkMeta = const VerificationMeta('categoryPk');
  late final GeneratedColumn<int?> categoryPk = GeneratedColumn<int?>(
      'category_pk', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _colourMeta = const VerificationMeta('colour');
  late final GeneratedColumn<String?> colour = GeneratedColumn<String?>(
      'colour', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(),
      typeName: 'TEXT',
      requiredDuringInsert: false);
  final VerificationMeta _iconNameMeta = const VerificationMeta('iconName');
  late final GeneratedColumn<String?> iconName = GeneratedColumn<String?>(
      'icon_name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  late final GeneratedColumn<DateTime?> dateCreated =
      GeneratedColumn<DateTime?>('date_created', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          clientDefault: () => new DateTime.now());
  @override
  List<GeneratedColumn> get $columns =>
      [categoryPk, name, colour, iconName, dateCreated];
  @override
  String get aliasedName => _alias ?? 'categories';
  @override
  String get actualTableName => 'categories';
  @override
  VerificationContext validateIntegrity(
      Insertable<TransactionCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('category_pk')) {
      context.handle(
          _categoryPkMeta,
          categoryPk.isAcceptableOrUnknown(
              data['category_pk']!, _categoryPkMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('colour')) {
      context.handle(_colourMeta,
          colour.isAcceptableOrUnknown(data['colour']!, _colourMeta));
    }
    if (data.containsKey('icon_name')) {
      context.handle(_iconNameMeta,
          iconName.isAcceptableOrUnknown(data['icon_name']!, _iconNameMeta));
    }
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {categoryPk};
  @override
  TransactionCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TransactionCategory.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(_db, alias);
  }
}

class TransactionLabel extends DataClass
    implements Insertable<TransactionLabel> {
  final int label_pk;
  final String name;
  final int categoryFk;
  final DateTime dateCreated;
  TransactionLabel(
      {required this.label_pk,
      required this.name,
      required this.categoryFk,
      required this.dateCreated});
  factory TransactionLabel.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TransactionLabel(
      label_pk: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}label_pk'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      categoryFk: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category_fk'])!,
      dateCreated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_created'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['label_pk'] = Variable<int>(label_pk);
    map['name'] = Variable<String>(name);
    map['category_fk'] = Variable<int>(categoryFk);
    map['date_created'] = Variable<DateTime>(dateCreated);
    return map;
  }

  LabelsCompanion toCompanion(bool nullToAbsent) {
    return LabelsCompanion(
      label_pk: Value(label_pk),
      name: Value(name),
      categoryFk: Value(categoryFk),
      dateCreated: Value(dateCreated),
    );
  }

  factory TransactionLabel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TransactionLabel(
      label_pk: serializer.fromJson<int>(json['label_pk']),
      name: serializer.fromJson<String>(json['name']),
      categoryFk: serializer.fromJson<int>(json['categoryFk']),
      dateCreated: serializer.fromJson<DateTime>(json['dateCreated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'label_pk': serializer.toJson<int>(label_pk),
      'name': serializer.toJson<String>(name),
      'categoryFk': serializer.toJson<int>(categoryFk),
      'dateCreated': serializer.toJson<DateTime>(dateCreated),
    };
  }

  TransactionLabel copyWith(
          {int? label_pk,
          String? name,
          int? categoryFk,
          DateTime? dateCreated}) =>
      TransactionLabel(
        label_pk: label_pk ?? this.label_pk,
        name: name ?? this.name,
        categoryFk: categoryFk ?? this.categoryFk,
        dateCreated: dateCreated ?? this.dateCreated,
      );
  @override
  String toString() {
    return (StringBuffer('TransactionLabel(')
          ..write('label_pk: $label_pk, ')
          ..write('name: $name, ')
          ..write('categoryFk: $categoryFk, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(label_pk.hashCode,
      $mrjc(name.hashCode, $mrjc(categoryFk.hashCode, dateCreated.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionLabel &&
          other.label_pk == this.label_pk &&
          other.name == this.name &&
          other.categoryFk == this.categoryFk &&
          other.dateCreated == this.dateCreated);
}

class LabelsCompanion extends UpdateCompanion<TransactionLabel> {
  final Value<int> label_pk;
  final Value<String> name;
  final Value<int> categoryFk;
  final Value<DateTime> dateCreated;
  const LabelsCompanion({
    this.label_pk = const Value.absent(),
    this.name = const Value.absent(),
    this.categoryFk = const Value.absent(),
    this.dateCreated = const Value.absent(),
  });
  LabelsCompanion.insert({
    this.label_pk = const Value.absent(),
    required String name,
    required int categoryFk,
    this.dateCreated = const Value.absent(),
  })  : name = Value(name),
        categoryFk = Value(categoryFk);
  static Insertable<TransactionLabel> custom({
    Expression<int>? label_pk,
    Expression<String>? name,
    Expression<int>? categoryFk,
    Expression<DateTime>? dateCreated,
  }) {
    return RawValuesInsertable({
      if (label_pk != null) 'label_pk': label_pk,
      if (name != null) 'name': name,
      if (categoryFk != null) 'category_fk': categoryFk,
      if (dateCreated != null) 'date_created': dateCreated,
    });
  }

  LabelsCompanion copyWith(
      {Value<int>? label_pk,
      Value<String>? name,
      Value<int>? categoryFk,
      Value<DateTime>? dateCreated}) {
    return LabelsCompanion(
      label_pk: label_pk ?? this.label_pk,
      name: name ?? this.name,
      categoryFk: categoryFk ?? this.categoryFk,
      dateCreated: dateCreated ?? this.dateCreated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (label_pk.present) {
      map['label_pk'] = Variable<int>(label_pk.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (categoryFk.present) {
      map['category_fk'] = Variable<int>(categoryFk.value);
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime>(dateCreated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LabelsCompanion(')
          ..write('label_pk: $label_pk, ')
          ..write('name: $name, ')
          ..write('categoryFk: $categoryFk, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }
}

class $LabelsTable extends Labels
    with TableInfo<$LabelsTable, TransactionLabel> {
  final GeneratedDatabase _db;
  final String? _alias;
  $LabelsTable(this._db, [this._alias]);
  final VerificationMeta _label_pkMeta = const VerificationMeta('label_pk');
  late final GeneratedColumn<int?> label_pk = GeneratedColumn<int?>(
      'label_pk', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _categoryFkMeta = const VerificationMeta('categoryFk');
  late final GeneratedColumn<int?> categoryFk = GeneratedColumn<int?>(
      'category_fk', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  late final GeneratedColumn<DateTime?> dateCreated =
      GeneratedColumn<DateTime?>('date_created', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          clientDefault: () => new DateTime.now());
  @override
  List<GeneratedColumn> get $columns =>
      [label_pk, name, categoryFk, dateCreated];
  @override
  String get aliasedName => _alias ?? 'labels';
  @override
  String get actualTableName => 'labels';
  @override
  VerificationContext validateIntegrity(Insertable<TransactionLabel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('label_pk')) {
      context.handle(_label_pkMeta,
          label_pk.isAcceptableOrUnknown(data['label_pk']!, _label_pkMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('category_fk')) {
      context.handle(
          _categoryFkMeta,
          categoryFk.isAcceptableOrUnknown(
              data['category_fk']!, _categoryFkMeta));
    } else if (isInserting) {
      context.missing(_categoryFkMeta);
    }
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {label_pk};
  @override
  TransactionLabel map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TransactionLabel.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LabelsTable createAlias(String alias) {
    return $LabelsTable(_db, alias);
  }
}

class Budget extends DataClass implements Insertable<Budget> {
  final int budgetPk;
  final String name;
  final double amount;
  final String colour;
  final DateTime startDate;
  final DateTime endDate;
  final BudgetReoccurence? reoccurrence;
  final double? optimalDailySpending;
  final DateTime dateCreated;
  Budget(
      {required this.budgetPk,
      required this.name,
      required this.amount,
      required this.colour,
      required this.startDate,
      required this.endDate,
      this.reoccurrence,
      this.optimalDailySpending,
      required this.dateCreated});
  factory Budget.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Budget(
      budgetPk: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}budget_pk'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      amount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      colour: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}colour'])!,
      startDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date'])!,
      endDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date'])!,
      reoccurrence: $BudgetsTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reoccurrence'])),
      optimalDailySpending: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}optimal_daily_spending']),
      dateCreated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_created'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['budget_pk'] = Variable<int>(budgetPk);
    map['name'] = Variable<String>(name);
    map['amount'] = Variable<double>(amount);
    map['colour'] = Variable<String>(colour);
    map['start_date'] = Variable<DateTime>(startDate);
    map['end_date'] = Variable<DateTime>(endDate);
    if (!nullToAbsent || reoccurrence != null) {
      final converter = $BudgetsTable.$converter0;
      map['reoccurrence'] = Variable<int?>(converter.mapToSql(reoccurrence));
    }
    if (!nullToAbsent || optimalDailySpending != null) {
      map['optimal_daily_spending'] = Variable<double?>(optimalDailySpending);
    }
    map['date_created'] = Variable<DateTime>(dateCreated);
    return map;
  }

  BudgetsCompanion toCompanion(bool nullToAbsent) {
    return BudgetsCompanion(
      budgetPk: Value(budgetPk),
      name: Value(name),
      amount: Value(amount),
      colour: Value(colour),
      startDate: Value(startDate),
      endDate: Value(endDate),
      reoccurrence: reoccurrence == null && nullToAbsent
          ? const Value.absent()
          : Value(reoccurrence),
      optimalDailySpending: optimalDailySpending == null && nullToAbsent
          ? const Value.absent()
          : Value(optimalDailySpending),
      dateCreated: Value(dateCreated),
    );
  }

  factory Budget.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Budget(
      budgetPk: serializer.fromJson<int>(json['budgetPk']),
      name: serializer.fromJson<String>(json['name']),
      amount: serializer.fromJson<double>(json['amount']),
      colour: serializer.fromJson<String>(json['colour']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime>(json['endDate']),
      reoccurrence:
          serializer.fromJson<BudgetReoccurence?>(json['reoccurrence']),
      optimalDailySpending:
          serializer.fromJson<double?>(json['optimalDailySpending']),
      dateCreated: serializer.fromJson<DateTime>(json['dateCreated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'budgetPk': serializer.toJson<int>(budgetPk),
      'name': serializer.toJson<String>(name),
      'amount': serializer.toJson<double>(amount),
      'colour': serializer.toJson<String>(colour),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime>(endDate),
      'reoccurrence': serializer.toJson<BudgetReoccurence?>(reoccurrence),
      'optimalDailySpending': serializer.toJson<double?>(optimalDailySpending),
      'dateCreated': serializer.toJson<DateTime>(dateCreated),
    };
  }

  Budget copyWith(
          {int? budgetPk,
          String? name,
          double? amount,
          String? colour,
          DateTime? startDate,
          DateTime? endDate,
          BudgetReoccurence? reoccurrence,
          double? optimalDailySpending,
          DateTime? dateCreated}) =>
      Budget(
        budgetPk: budgetPk ?? this.budgetPk,
        name: name ?? this.name,
        amount: amount ?? this.amount,
        colour: colour ?? this.colour,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        reoccurrence: reoccurrence ?? this.reoccurrence,
        optimalDailySpending: optimalDailySpending ?? this.optimalDailySpending,
        dateCreated: dateCreated ?? this.dateCreated,
      );
  @override
  String toString() {
    return (StringBuffer('Budget(')
          ..write('budgetPk: $budgetPk, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('colour: $colour, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('reoccurrence: $reoccurrence, ')
          ..write('optimalDailySpending: $optimalDailySpending, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      budgetPk.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              amount.hashCode,
              $mrjc(
                  colour.hashCode,
                  $mrjc(
                      startDate.hashCode,
                      $mrjc(
                          endDate.hashCode,
                          $mrjc(
                              reoccurrence.hashCode,
                              $mrjc(optimalDailySpending.hashCode,
                                  dateCreated.hashCode)))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Budget &&
          other.budgetPk == this.budgetPk &&
          other.name == this.name &&
          other.amount == this.amount &&
          other.colour == this.colour &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.reoccurrence == this.reoccurrence &&
          other.optimalDailySpending == this.optimalDailySpending &&
          other.dateCreated == this.dateCreated);
}

class BudgetsCompanion extends UpdateCompanion<Budget> {
  final Value<int> budgetPk;
  final Value<String> name;
  final Value<double> amount;
  final Value<String> colour;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<BudgetReoccurence?> reoccurrence;
  final Value<double?> optimalDailySpending;
  final Value<DateTime> dateCreated;
  const BudgetsCompanion({
    this.budgetPk = const Value.absent(),
    this.name = const Value.absent(),
    this.amount = const Value.absent(),
    this.colour = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.reoccurrence = const Value.absent(),
    this.optimalDailySpending = const Value.absent(),
    this.dateCreated = const Value.absent(),
  });
  BudgetsCompanion.insert({
    this.budgetPk = const Value.absent(),
    required String name,
    required double amount,
    required String colour,
    required DateTime startDate,
    required DateTime endDate,
    this.reoccurrence = const Value.absent(),
    this.optimalDailySpending = const Value.absent(),
    this.dateCreated = const Value.absent(),
  })  : name = Value(name),
        amount = Value(amount),
        colour = Value(colour),
        startDate = Value(startDate),
        endDate = Value(endDate);
  static Insertable<Budget> custom({
    Expression<int>? budgetPk,
    Expression<String>? name,
    Expression<double>? amount,
    Expression<String>? colour,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<BudgetReoccurence?>? reoccurrence,
    Expression<double?>? optimalDailySpending,
    Expression<DateTime>? dateCreated,
  }) {
    return RawValuesInsertable({
      if (budgetPk != null) 'budget_pk': budgetPk,
      if (name != null) 'name': name,
      if (amount != null) 'amount': amount,
      if (colour != null) 'colour': colour,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (reoccurrence != null) 'reoccurrence': reoccurrence,
      if (optimalDailySpending != null)
        'optimal_daily_spending': optimalDailySpending,
      if (dateCreated != null) 'date_created': dateCreated,
    });
  }

  BudgetsCompanion copyWith(
      {Value<int>? budgetPk,
      Value<String>? name,
      Value<double>? amount,
      Value<String>? colour,
      Value<DateTime>? startDate,
      Value<DateTime>? endDate,
      Value<BudgetReoccurence?>? reoccurrence,
      Value<double?>? optimalDailySpending,
      Value<DateTime>? dateCreated}) {
    return BudgetsCompanion(
      budgetPk: budgetPk ?? this.budgetPk,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      colour: colour ?? this.colour,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      reoccurrence: reoccurrence ?? this.reoccurrence,
      optimalDailySpending: optimalDailySpending ?? this.optimalDailySpending,
      dateCreated: dateCreated ?? this.dateCreated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (budgetPk.present) {
      map['budget_pk'] = Variable<int>(budgetPk.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (colour.present) {
      map['colour'] = Variable<String>(colour.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (reoccurrence.present) {
      final converter = $BudgetsTable.$converter0;
      map['reoccurrence'] =
          Variable<int?>(converter.mapToSql(reoccurrence.value));
    }
    if (optimalDailySpending.present) {
      map['optimal_daily_spending'] =
          Variable<double?>(optimalDailySpending.value);
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime>(dateCreated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BudgetsCompanion(')
          ..write('budgetPk: $budgetPk, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('colour: $colour, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('reoccurrence: $reoccurrence, ')
          ..write('optimalDailySpending: $optimalDailySpending, ')
          ..write('dateCreated: $dateCreated')
          ..write(')'))
        .toString();
  }
}

class $BudgetsTable extends Budgets with TableInfo<$BudgetsTable, Budget> {
  final GeneratedDatabase _db;
  final String? _alias;
  $BudgetsTable(this._db, [this._alias]);
  final VerificationMeta _budgetPkMeta = const VerificationMeta('budgetPk');
  late final GeneratedColumn<int?> budgetPk = GeneratedColumn<int?>(
      'budget_pk', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  late final GeneratedColumn<double?> amount = GeneratedColumn<double?>(
      'amount', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _colourMeta = const VerificationMeta('colour');
  late final GeneratedColumn<String?> colour = GeneratedColumn<String?>(
      'colour', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _startDateMeta = const VerificationMeta('startDate');
  late final GeneratedColumn<DateTime?> startDate = GeneratedColumn<DateTime?>(
      'start_date', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _endDateMeta = const VerificationMeta('endDate');
  late final GeneratedColumn<DateTime?> endDate = GeneratedColumn<DateTime?>(
      'end_date', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _reoccurrenceMeta =
      const VerificationMeta('reoccurrence');
  late final GeneratedColumnWithTypeConverter<BudgetReoccurence?, int?>
      reoccurrence = GeneratedColumn<int?>('reoccurrence', aliasedName, true,
              typeName: 'INTEGER', requiredDuringInsert: false)
          .withConverter<BudgetReoccurence?>($BudgetsTable.$converter0);
  final VerificationMeta _optimalDailySpendingMeta =
      const VerificationMeta('optimalDailySpending');
  late final GeneratedColumn<double?> optimalDailySpending =
      GeneratedColumn<double?>('optimal_daily_spending', aliasedName, true,
          typeName: 'REAL', requiredDuringInsert: false);
  final VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  late final GeneratedColumn<DateTime?> dateCreated =
      GeneratedColumn<DateTime?>('date_created', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          clientDefault: () => new DateTime.now());
  @override
  List<GeneratedColumn> get $columns => [
        budgetPk,
        name,
        amount,
        colour,
        startDate,
        endDate,
        reoccurrence,
        optimalDailySpending,
        dateCreated
      ];
  @override
  String get aliasedName => _alias ?? 'budgets';
  @override
  String get actualTableName => 'budgets';
  @override
  VerificationContext validateIntegrity(Insertable<Budget> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('budget_pk')) {
      context.handle(_budgetPkMeta,
          budgetPk.isAcceptableOrUnknown(data['budget_pk']!, _budgetPkMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('colour')) {
      context.handle(_colourMeta,
          colour.isAcceptableOrUnknown(data['colour']!, _colourMeta));
    } else if (isInserting) {
      context.missing(_colourMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    } else if (isInserting) {
      context.missing(_endDateMeta);
    }
    context.handle(_reoccurrenceMeta, const VerificationResult.success());
    if (data.containsKey('optimal_daily_spending')) {
      context.handle(
          _optimalDailySpendingMeta,
          optimalDailySpending.isAcceptableOrUnknown(
              data['optimal_daily_spending']!, _optimalDailySpendingMeta));
    }
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {budgetPk};
  @override
  Budget map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Budget.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $BudgetsTable createAlias(String alias) {
    return $BudgetsTable(_db, alias);
  }

  static TypeConverter<BudgetReoccurence?, int> $converter0 =
      const EnumIndexConverter<BudgetReoccurence>(BudgetReoccurence.values);
}

class UserSettings extends DataClass implements Insertable<UserSettings> {
  final int userPk;
  final String name;
  final Theme theme;
  final String currency;
  UserSettings(
      {required this.userPk,
      required this.name,
      required this.theme,
      required this.currency});
  factory UserSettings.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserSettings(
      userPk: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_pk'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      theme: $SettingsTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}theme']))!,
      currency: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}currency'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_pk'] = Variable<int>(userPk);
    map['name'] = Variable<String>(name);
    {
      final converter = $SettingsTable.$converter0;
      map['theme'] = Variable<int>(converter.mapToSql(theme)!);
    }
    map['currency'] = Variable<String>(currency);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      userPk: Value(userPk),
      name: Value(name),
      theme: Value(theme),
      currency: Value(currency),
    );
  }

  factory UserSettings.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserSettings(
      userPk: serializer.fromJson<int>(json['userPk']),
      name: serializer.fromJson<String>(json['name']),
      theme: serializer.fromJson<Theme>(json['theme']),
      currency: serializer.fromJson<String>(json['currency']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userPk': serializer.toJson<int>(userPk),
      'name': serializer.toJson<String>(name),
      'theme': serializer.toJson<Theme>(theme),
      'currency': serializer.toJson<String>(currency),
    };
  }

  UserSettings copyWith(
          {int? userPk, String? name, Theme? theme, String? currency}) =>
      UserSettings(
        userPk: userPk ?? this.userPk,
        name: name ?? this.name,
        theme: theme ?? this.theme,
        currency: currency ?? this.currency,
      );
  @override
  String toString() {
    return (StringBuffer('UserSettings(')
          ..write('userPk: $userPk, ')
          ..write('name: $name, ')
          ..write('theme: $theme, ')
          ..write('currency: $currency')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(userPk.hashCode,
      $mrjc(name.hashCode, $mrjc(theme.hashCode, currency.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserSettings &&
          other.userPk == this.userPk &&
          other.name == this.name &&
          other.theme == this.theme &&
          other.currency == this.currency);
}

class SettingsCompanion extends UpdateCompanion<UserSettings> {
  final Value<int> userPk;
  final Value<String> name;
  final Value<Theme> theme;
  final Value<String> currency;
  const SettingsCompanion({
    this.userPk = const Value.absent(),
    this.name = const Value.absent(),
    this.theme = const Value.absent(),
    this.currency = const Value.absent(),
  });
  SettingsCompanion.insert({
    this.userPk = const Value.absent(),
    required String name,
    required Theme theme,
    required String currency,
  })  : name = Value(name),
        theme = Value(theme),
        currency = Value(currency);
  static Insertable<UserSettings> custom({
    Expression<int>? userPk,
    Expression<String>? name,
    Expression<Theme>? theme,
    Expression<String>? currency,
  }) {
    return RawValuesInsertable({
      if (userPk != null) 'user_pk': userPk,
      if (name != null) 'name': name,
      if (theme != null) 'theme': theme,
      if (currency != null) 'currency': currency,
    });
  }

  SettingsCompanion copyWith(
      {Value<int>? userPk,
      Value<String>? name,
      Value<Theme>? theme,
      Value<String>? currency}) {
    return SettingsCompanion(
      userPk: userPk ?? this.userPk,
      name: name ?? this.name,
      theme: theme ?? this.theme,
      currency: currency ?? this.currency,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userPk.present) {
      map['user_pk'] = Variable<int>(userPk.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (theme.present) {
      final converter = $SettingsTable.$converter0;
      map['theme'] = Variable<int>(converter.mapToSql(theme.value)!);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('userPk: $userPk, ')
          ..write('name: $name, ')
          ..write('theme: $theme, ')
          ..write('currency: $currency')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings
    with TableInfo<$SettingsTable, UserSettings> {
  final GeneratedDatabase _db;
  final String? _alias;
  $SettingsTable(this._db, [this._alias]);
  final VerificationMeta _userPkMeta = const VerificationMeta('userPk');
  late final GeneratedColumn<int?> userPk = GeneratedColumn<int?>(
      'user_pk', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _themeMeta = const VerificationMeta('theme');
  late final GeneratedColumnWithTypeConverter<Theme, int?> theme =
      GeneratedColumn<int?>('theme', aliasedName, false,
              typeName: 'INTEGER', requiredDuringInsert: true)
          .withConverter<Theme>($SettingsTable.$converter0);
  final VerificationMeta _currencyMeta = const VerificationMeta('currency');
  late final GeneratedColumn<String?> currency = GeneratedColumn<String?>(
      'currency', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [userPk, name, theme, currency];
  @override
  String get aliasedName => _alias ?? 'settings';
  @override
  String get actualTableName => 'settings';
  @override
  VerificationContext validateIntegrity(Insertable<UserSettings> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_pk')) {
      context.handle(_userPkMeta,
          userPk.isAcceptableOrUnknown(data['user_pk']!, _userPkMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_themeMeta, const VerificationResult.success());
    if (data.containsKey('currency')) {
      context.handle(_currencyMeta,
          currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta));
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userPk};
  @override
  UserSettings map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserSettings.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(_db, alias);
  }

  static TypeConverter<Theme, int> $converter0 =
      const EnumIndexConverter<Theme>(Theme.values);
}

abstract class _$FinanceDatabase extends GeneratedDatabase {
  _$FinanceDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $TransactionsTable transactions = $TransactionsTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $LabelsTable labels = $LabelsTable(this);
  late final $BudgetsTable budgets = $BudgetsTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [transactions, categories, labels, budgets, settings];
}
