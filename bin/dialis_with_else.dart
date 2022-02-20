import 'dart:io';

void myWeightToDialis(dynamic) {
  print('Введи свой сухой вес ');
  var dryWeight = double.parse(stdin.readLineSync() ?? "");

  print('''Твой сухой вес сейчас:$dryWeight
Введи свой вес в данный момент'''); //вывод сухого вес

  var currentWeightline = stdin.readLineSync() ?? ""; // запрос веса в string
  var currentWeightInt =
      double.tryParse(currentWeightline); // парсим его в дабл
  var toDialisate = dryWeight - currentWeightInt!; // формула для вычитания веса
  if (currentWeightInt > dryWeight) {
    // условие при котором вес будет считаться нормально
    toDialisate = currentWeightInt - dryWeight;
  }
  if (currentWeightInt == dryWeight) {
    // если ты пришел в нуле
    print("Ты пришел в нуле");
  }
  print('Ты принес $toDialisate'); // вывод результата
  print(
      'Если хочешь изменить сухой вес, введи !Dry, для завершения введи любое значение'); //установка нового сухого веса
  var nextStep = stdin.readLineSync(); // запрос
  if (nextStep == "!Dry") {
    // проверка выполнения
    print('Введи сухой вес:');
    var newDryWeightStr = stdin.readLineSync(); //парс
    var newDryWeightInt = double.tryParse(newDryWeightStr!); // перевод в дабл
    double dryWeight = newDryWeightInt!; // присваивание
    print('Новый сухой вес :$dryWeight'); // вывод
  }
}

void main(List<String> arguments) {
  print("Для расчета вашего веса введите !вес"); //запрос действия
  var entrStr = stdin.readLineSync() ?? "";
  // ответ
  switch (entrStr) {
    //проверка
    case "!вес": //если содержит строку
      myWeightToDialis(dynamic); //выполнение функции
      break;
    default: // в другом случай

      (print('Завершение'));
  }
}
