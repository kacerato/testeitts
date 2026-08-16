package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:FixedFraming.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:FixedFraming.class
  classes.dex
 */
@ClassCategory(cat = {"Framerate"})
public final class FixedFraming {

    public class AnonymousClass1 implements L9.a {
        final FixedFrameListener val$fixedFrameListener;

        public AnonymousClass1(final FixedFrameListener val$fixedFrameListener) {
            this.val$fixedFrameListener = val$fixedFrameListener;
        }

        @Override
        public void repeat(float deltaTime) {
            this.val$fixedFrameListener.repeat(deltaTime);
        }
    }

    public class AnonymousClass2 implements L9.a {
        final FixedFrameListener val$fixedFrameListener;

        public AnonymousClass2(final FixedFrameListener val$fixedFrameListener) {
            this.val$fixedFrameListener = val$fixedFrameListener;
        }

        @Override
        public void repeat(float deltaTime) {
            this.val$fixedFrameListener.repeat(deltaTime);
        }
    }

    public FixedFraming(int i10, FixedFrameListener fixedFrameListener) {
    }

    public void engineRepeat() {
    }

    public void setAllowTimeScale(boolean z10) {
    }

    public void setDesyncLowFrameRate(boolean z10) {
    }

    public void setDesyncHighFrameRate(boolean z10) {
    }

    @HideGetSet
    public float getFixedFrames() {
        return 0.0f;
    }

    @HideGetSet
    public void setFixedFrames(int i10) {
    }

    public void setFixedFrameListener(FixedFrameListener fixedFrameListener) {
    }
}
