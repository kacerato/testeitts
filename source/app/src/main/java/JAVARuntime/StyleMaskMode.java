package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:StyleMaskMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:StyleMaskMode.class
  classes.dex
 */
@ClassCategory(cat = {"UI", "Style"})
public enum StyleMaskMode {
    Linear,
    Radial,
    Sweep;

    public static StyleMaskMode[] valuesCustom() {
        StyleMaskMode[] valuesCustom = values();
        int length = valuesCustom.length;
        StyleMaskMode[] styleMaskModeArr = new StyleMaskMode[length];
        java.lang.System.arraycopy(valuesCustom, 0, styleMaskModeArr, 0, length);
        return styleMaskModeArr;
    }
}
