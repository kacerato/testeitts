package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:StyleCornerType.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:StyleCornerType.class
  classes.dex
 */
@ClassCategory(cat = {"UI", "Style"})
public enum StyleCornerType {
    Sharp,
    Round,
    InvertedRound,
    Bevel,
    Notch,
    Squircle;

    public static StyleCornerType[] valuesCustom() {
        StyleCornerType[] valuesCustom = values();
        int length = valuesCustom.length;
        StyleCornerType[] styleCornerTypeArr = new StyleCornerType[length];
        java.lang.System.arraycopy(valuesCustom, 0, styleCornerTypeArr, 0, length);
        return styleCornerTypeArr;
    }
}
