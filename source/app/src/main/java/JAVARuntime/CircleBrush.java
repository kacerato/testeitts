package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:CircleBrush.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:CircleBrush.class
  classes.dex
 */
@ClassCategory(cat = {"Brushs"})
public class CircleBrush implements Brush {
    @Override
    public float getIntensity(float f10, float f11) {
        if (Math.sqrt((f10 * f10) + (f11 * f11)) <= 1.0f) {
            return 1.0f;
        }
        return 0.0f;
    }
}
