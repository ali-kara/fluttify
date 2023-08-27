import 'package:flutter/material.dart';

class StepperWidgetDemo extends StatefulWidget {
  const StepperWidgetDemo({super.key});

  @override
  State<StepperWidgetDemo> createState() => _StepperWidgetDemoState();
}

class _StepperWidgetDemoState extends State<StepperWidgetDemo> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                type: StepperType.vertical,
                currentStep: _currentStep,
                onStepContinue: () => stepContinue(),
                onStepCancel: () => stepCancel(),
                onStepTapped: (value) => stepTapped(value),
                steps: <Step>[
                  Step(
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                    title: const Text("Genel Bilgiler"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Adınız Soyadınız'),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'e-mail Adresiniz'),
                        )
                      ],
                    ),
                  ),
                  Step(
                    isActive: _currentStep >= 1,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                    title: const Text("Adres Bilgiler"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'İliniz'),
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'İlçeniz'),
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Adresiniz'),
                        )
                      ],
                    ),
                  ),
                  Step(
                    isActive: _currentStep >= 2,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                    title: const Text("İletişim Bilgiler"),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Cep Telefonu'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  stepTapped(int value) {
    setState(() {
      _currentStep = value;
    });
  }

  stepContinue() {
    if (_currentStep < 2) {
      setState(() {
        _currentStep++;
      });
    }
  }

  stepCancel() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
    }
  }
}
