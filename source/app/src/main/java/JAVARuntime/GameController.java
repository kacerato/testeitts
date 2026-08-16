package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GameController.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GameController.class
  classes.dex
 */
@ClassCategory(cat = {"Platform"})
public final class GameController {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GameController$GraphicsMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GameController$GraphicsMode.class
  classes.dex
 */
    public enum GraphicsMode {
        Lite,
        Advanced;

        public static GraphicsMode[] valuesCustom() {
            GraphicsMode[] valuesCustom = values();
            int length = valuesCustom.length;
            GraphicsMode[] graphicsModeArr = new GraphicsMode[length];
            java.lang.System.arraycopy(valuesCustom, 0, graphicsModeArr, 0, length);
            return graphicsModeArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GameController$State.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GameController$State.class
  classes.dex
 */
    public enum State {
        Stopped,
        Paused,
        Running;

        public static State[] valuesCustom() {
            State[] valuesCustom = values();
            int length = valuesCustom.length;
            State[] stateArr = new State[length];
            java.lang.System.arraycopy(valuesCustom, 0, stateArr, 0, length);
            return stateArr;
        }
    }

    private GameController() {
    }

    public static void quit() {
    }

    public static State getState() {
        return null;
    }

    @HideGetSet
    public static boolean isEnableFrameLimit() {
        return false;
    }

    @HideGetSet
    public static void setEnableFrameLimit(boolean z10) {
    }

    @HideGetSet
    public static int getLimitFrames() {
        return 0;
    }

    @HideGetSet
    public static void setLimitFrames(int i10) {
    }

    @HideGetSet
    public static GraphicsMode getGraphicsMode() {
        return null;
    }

    @HideGetSet
    public static void setGraphicsMode(GraphicsMode graphicsMode) {
    }
}
