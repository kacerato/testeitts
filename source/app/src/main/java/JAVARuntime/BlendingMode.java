package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:BlendingMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:BlendingMode.class
  classes.dex
 */
@ClassCategory(cat = {"Utils"})
public enum BlendingMode {
    OPAQUE,
    TRANSPARENT,
    ADD,
    MASKED,
    FADE,
    MULTIPLY;

    public static BlendingMode[] valuesCustom() {
        BlendingMode[] valuesCustom = values();
        int length = valuesCustom.length;
        BlendingMode[] blendingModeArr = new BlendingMode[length];
        java.lang.System.arraycopy(valuesCustom, 0, blendingModeArr, 0, length);
        return blendingModeArr;
    }
}
