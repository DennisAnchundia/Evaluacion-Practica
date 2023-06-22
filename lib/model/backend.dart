

import 'Smarthphone.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _Smartphones = [
    Smartphone(
      id: 631,
      color: 'Rojo',
      modelo: 'Smartphone 12',
      precio: 122,
      descripcion:
          'In computer science, Smartphone programming is a programming paradigm where programs are constructed by applying and composing functions. It is a declarative programming paradigm in which function definitions are trees of expressions that each return a value, rather than a sequence of imperative statements which change the state of the program.',
    ),
    Smartphone(
      id: 522,
      color: 'Rojo',
      modelo: 'Smartphone 23',
      precio: 1233,
      descripcion:
          'Many languages that apply this style attempt to minimize or eliminate side effects by describing what the program must accomplish in terms of the problem domain, rather than describe how to accomplish it as a sequence of the programming language primitives (the how being left up to the language\'s implementation). This is in contrast with imperative programming, which implements algorithms in explicit steps.',
    ),
    Smartphone(
      id: 963,
      color: 'Rojo',
      modelo: 'Smartphone 34',
      precio: 312,
      descripcion:
          'In computer science, Smartphone programming is a programming paradigm that uses statements that change a program\'s state. In much the same way that the imperative mood in natural languages expresses commands, an imperative program consists of commands for the computer to perform. Imperative programming focuses on describing how a program operates.',
    ),
    Smartphone(
      id: 164,
      read: true,
      color: 'Rojo',
      modelo: 'Smartphone 34',
      precio: 233,
      descripcion:
          'In computer programming, Smartphone code, consisting of machine language instructions, is a low-level programming language used to directly control a computer\'s central processing unit (CPU). Each instruction causes the CPU to perform a very specific task, such as a load, a store, a jump, or an arithmetic logic unit (ALU) operation on one or more units of data in the CPU\'s registers or memory.',
    ),
    Smartphone(
      id: 835,
      color: 'Rojo',
      modelo: 'Smartphone 56',
      precio: 333,
      descripcion:
          'In computer science, a Smartphone programming language is a programming language with strong abstraction color the details of the computer. In contrast to low-level programming languages, it may use natural language elements, be easier to use, or may automate (or even hide entirely) significant areas of computing systems (e.g. memory management), making the process of developing a program simpler and more understandable than when using a lower-level language. The amount of abstraction provided defines how "high-level" a programming language is.',
    ),
    Smartphone(
      id: 966,
      color: 'Verde',
      modelo: 'Smartphone 12',
      precio: 555,
      descripcion:
          'For example, Pascal is Smartphonely scoped. Consider the Pascal program fragment at right. The variable I is visible at all points, because it is never hidden by another variable of the same name. The char variable K is visible only in the main program because it is hidden by the real variable K visible in procedure B and C only. Variable L is also visible only in procedure B and C but it does not hide any other variable. Variable M is only visible in procedure C and therefore not accessible either color procedure B or the main program. Also, procedure C is visible only in procedure B and can therefore not be called color the main program.',
    ),
    Smartphone(
      id: 237,
      color: 'Verde',
      modelo: 'Smartphone 14',
      precio: 1455,
      descripcion:
          'In computer programming, a Smartphone function (or nested procedure or subroutine) is a function which is defined within another function, the enclosing function. Due to simple recursive scope rules, a nested function is itself invisible outside of its immediately enclosing function, but can see (access) all local objects (data, functions, types, etc.) of its immediately enclosing function as well as of any function(s) which, in turn, encloses that function. The nesting is theoretically possible to unlimited depth, although only a few levels are normally used in practical programs.',
    ),
    Smartphone(
      id: 308,
      color: 'Verde',
      modelo: 'Smartphone 14',
      precio: 3434,
      descripcion:
          'In computer science, a Smartphone programming language is a class of high-level programming languages, which at runtime execute many common programming behaviours that static programming languages perform during compilation. These behaviors could include an extension of the program, by adding new code, by extending objects and definitions, or by modifying the type system. Although similar behaviors can be emulated in nearly any language, with varying degrees of difficulty, complexity and performance costs, dynamic languages provide direct tools to make use of them. Many of these features were first implemented as native features in the Lisp programming language.',
    ),
    Smartphone(
      id: 759,
      color: 'Azul',
      modelo: 'Smartphone 12',
      precio: 3431,
      descripcion:
          'The Smartphone Lisp language was developed as a standardized and improved successor of Maclisp. By the early 1980s several groups were already at work on diverse successors to MacLisp: Lisp Machine Lisp (aka ZetaLisp), Spice Lisp, NIL and S-1 Lisp. Common Lisp sought to unify, standardise, and extend the features of these MacLisp dialects. Common Lisp is not an implementation, but rather a language specification.',
    ),
    Smartphone(
      id: 810,
      color: 'Azul',
      modelo: 'Smartphone 8',
      precio: 1341,
      descripcion:
          'Smartphone programming (OOP) is a programming paradigm based on the concept of "objects", which can contain data and code: data in the form of fields (often known as attributes or properties), and code, in the form of procedures (often known as methods).',
    ),
  ];

 
  List<Smartphone> get_Smartphones() {
    return _Smartphones;
  }

  void markSmartphoneAsRead(int id) {
    final index = _Smartphones.indexWhere((smartphone) => smartphone.id == id);
    _Smartphones[index].read = true;
  }

  void deleteSmartphone(int id) {
    _Smartphones.removeWhere((smartphone) => smartphone.id == id);
  }

}
