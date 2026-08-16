package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:StyleGradientMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:StyleGradientMode.class
  classes.dex
 */
@ClassCategory(cat = {"UI", "Style"})
public enum StyleGradientMode {
    Solid,
    Linear,
    Radial,
    Sweep;

    public static StyleGradientMode[] valuesCustom() {
        StyleGradientMode[] valuesCustom = values();
        int length = valuesCustom.length;
        StyleGradientMode[] styleGradientModeArr = new StyleGradientMode[length];
        java.lang.System.arraycopy(valuesCustom, 0, styleGradientModeArr, 0, length);
        return styleGradientModeArr;
    }
}
