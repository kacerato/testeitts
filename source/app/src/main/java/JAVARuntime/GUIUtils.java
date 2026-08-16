package JAVARuntime;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GUIUtils.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GUIUtils.class
  classes.dex
 */
@ClassCategory(cat = {"GUI"})
public final class GUIUtils {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GUIUtils$TouchFilter.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GUIUtils$TouchFilter.class
  classes.dex
 */
    public enum TouchFilter {
        All,
        Pressed,
        Down,
        Up,
        DownAndPressed,
        DownAndUp,
        PressedAndUp;

        public static TouchFilter[] valuesCustom() {
            TouchFilter[] valuesCustom = values();
            int length = valuesCustom.length;
            TouchFilter[] touchFilterArr = new TouchFilter[length];
            java.lang.System.arraycopy(valuesCustom, 0, touchFilterArr, 0, length);
            return touchFilterArr;
        }
    }

    private GUIUtils() {
    }

    public static boolean isTouchInside(Touch touch, int i10, int i11, int i12, int i13) {
        return false;
    }

    public static Touch determineTouch(int i10, int i11, int i12, int i13) {
        return determineTouch(i10, i11, i12, i13, TouchFilter.All);
    }

    public static Touch determineTouch(int i10, int i11, int i12, int i13, TouchFilter touchFilter) {
        return null;
    }

    public static Touch[] determineTouches(int i10, int i11, int i12, int i13) {
        return determineTouches(i10, i11, i12, i13, TouchFilter.All);
    }

    public static Touch[] determineTouches(int i10, int i11, int i12, int i13, TouchFilter touchFilter) {
        return null;
    }

    public static List<Touch> determineTouchList(int i10, int i11, int i12, int i13) {
        return determineTouchList(i10, i11, i12, i13, TouchFilter.All);
    }

    public static List<Touch> determineTouchList(int i10, int i11, int i12, int i13, TouchFilter touchFilter) {
        return null;
    }
}
