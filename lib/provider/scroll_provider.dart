import 'package:flutter/cupertino.dart';
import 'package:folio/configs/app_dimensions.dart';

class ScrollProvider extends ChangeNotifier {
  BuildContext context;

  ScrollProvider(this.context);

  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1
        ? 250
        : index == 2
            ? 240
            : index == 3
                ? MediaQuery.of(context).size.width > 1141.1
                    ? 207
                    : 238
                : MediaQuery.of(context).size.width > 1389.1
                    ? 245
                    : MediaQuery.of(context).size.width > 1367.2727
                        ? 202
                        : MediaQuery.of(context).size.width > 1141.1
                            ? 227
                            : 250;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    double offset = MediaQuery.of(context).size.width > 480
        ? MediaQuery.of(context).size.width > 512.7
            ? MediaQuery.of(context).size.width > 556.36
                ? MediaQuery.of(context).size.width > 652.36
                    ? MediaQuery.of(context).size.width > 712.73
                        ? MediaQuery.of(context).size.width > 788.36
                            ? MediaQuery.of(context).size.width > 819.64
                                ? MediaQuery.of(context).size.width > 904.72
                                    ? (index == 1
                                        ? 245
                                        : index == 2
                                            ? 240
                                            : index == 3
                                                ? 213
                                                : 290)
                                    : (index == 1
                                        ? 245
                                        : index == 2
                                            ? 245
                                            : index == 3
                                                ? 216.5
                                                : 290)
                                : (index == 1
                                    ? 245
                                    : index == 2
                                        ? 245
                                        : index == 3
                                            ? 216.5
                                            : 290)
                            : (index == 1
                                ? 245
                                : index == 2
                                    ? 250
                                    : index == 3
                                        ? 220
                                        : 290)
                        : (index == 1
                            ? 245
                            : index == 2
                                ? 260
                                : index == 3
                                    ? 226
                                    : 290)
                    : (index == 1
                        ? 245
                        : index == 2
                            ? 265
                            : index == 3
                                ? 230
                                : 290)
                : (index == 1
                    ? 245
                    : index == 2
                        ? 268
                        : index == 3
                            ? 232
                            : 290)
            : (index == 1
                ? 245
                : index == 2
                    ? 275
                    : index == 3
                        ? 236
                        : 290)
        : (index == 1
            ? 280
            : index == 2
                ? 310
                : index == 3
                    ? 266
                    : 310);
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
