package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Time.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Time.class
  classes.dex
 */
@ClassCategory(cat = {"Time"})
public final class Time {
    private Time() {
    }

    @DeprecatedInfo(info = {"use virtual attribute [float t = Time.deltaTime;] or getDeltaTime() [float t = Time.getDeltaTime();] instead"})
    @Deprecated
    public static float deltaTime() {
        return 0.0f;
    }

    @HideGetSet
    public static float getDeltaTime() {
        return 0.0f;
    }

    @Deprecated
    public static float frameTime() {
        return 0.0f;
    }

    @HideGetSet
    public static float getFrameTime() {
        return 0.0f;
    }

    public static float unscaledDeltaTime() {
        return 0.0f;
    }

    @HideGetSet
    public static float getUnscaledDeltaTime() {
        return 0.0f;
    }

    @HideGetSet
    public static float getUnscaledFrameTime() {
        return 0.0f;
    }

    @HideGetSet
    public static float getTimeSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public static void setTimeSpeed(float f10) {
    }

    @HideGetSet
    public static float getTimeScale() {
        return 0.0f;
    }

    @HideGetSet
    public static void setTimeScale(float f10) {
    }
}
