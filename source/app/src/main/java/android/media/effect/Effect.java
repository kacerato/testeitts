package android.media.effect;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/effect/Effect.class
 */
public abstract class Effect {
    public abstract String getName();

    public abstract void apply(int i10, int i11, int i12, int i13);

    public abstract void setParameter(String str, Object obj);

    public abstract void release();

    public Effect() {
        throw new RuntimeException("Stub!");
    }

    public void setUpdateListener(EffectUpdateListener listener) {
        throw new RuntimeException("Stub!");
    }
}
