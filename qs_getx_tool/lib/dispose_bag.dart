import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisposeBag {
  /// System
  void dispose() {
    for (var worker in _everWorkers) {
      worker.dispose();
    }
    _everWorkers.clear();

    for (var scription in _streamSubscriptions) {
      scription.cancel();
    }
    _streamSubscriptions.clear();

    for (var listener in _listenerControllers) {
      listener.removeListener(() {});
    }
    _listenerControllers.clear();

    for (var controller in _controllers) {
      controller.dispose();
    }
    _controllers.clear();

    for (var timer in _timers) {
      timer.cancel();
    }
    _timers.clear();
  }

  /// Func
  void addWorker(Worker worker) {
    _everWorkers.add(worker);
  }

  void addStreamSubscription(StreamSubscription streamSubscription) {
    _streamSubscriptions.add(streamSubscription);
  }

  void addController(ChangeNotifier controller) {
    _controllers.add(controller);
  }

  void addlistener(ChangeNotifier controller) {
    _listenerControllers.add(controller);
  }

  void addTimer(Timer timer) {
    _timers.add(timer);
  }

  /// Property
  final List<Worker> _everWorkers = [];
  final List<StreamSubscription> _streamSubscriptions = [];
  final List<ChangeNotifier> _controllers = [];
  final List<ChangeNotifier> _listenerControllers = [];
  final List<Timer> _timers = [];
}

mixin DisposeBagMixin {
  final DisposeBag disposeBag = DisposeBag();

  void disposeDisposeBag() {
    disposeBag.dispose();
  }
}
