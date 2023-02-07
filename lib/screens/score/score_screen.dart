import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/screens/score/chart.dart';

import '../../constants/app_styles.dart';
import '../../controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Score",
          style: AppTextStyle.primaryB(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ism:Azizbek", style: AppTextStyle.title(size: 25)),
                Text("Jami savollar:${qnController.questions.length}",
                    style: AppTextStyle.title(size: 25)),
                Text("To`gri javoblar :${qnController.numOfCorrectAns}",
                    style: AppTextStyle.title(size: 25)),
                Text(
                    "Xato javoblar :${qnController.questions.length - qnController.numOfCorrectAns}",
                    style: AppTextStyle.title(size: 25)),
                ChartScreen(
                    tj: (qnController.numOfCorrectAns /
                            qnController.questions.length)
                        .toDouble(),
                    xj: (qnController.questions.length -
                            qnController.numOfCorrectAns) /
                        (qnController.questions.length).toDouble()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 4,
                    color: Theme.of(context).colorScheme.onSecondary,
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Sizning natijangiz',
                                ),
                                const Text(
                                  'Siz 10 ta savoldan 6 tasiga to`g`ri 4 tasiga xato javob berdingiz',
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Transform.translate(
                                  offset: const Offset(-5, 0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Продолжить',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.asset(
                                'assets/images/4772.jpg',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
