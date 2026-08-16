package android.renderscript;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Sampler.class
 */
public class Sampler extends BaseObj {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Sampler$Value.class
 */
    public enum Value {
        CLAMP,
        LINEAR,
        LINEAR_MIP_LINEAR,
        LINEAR_MIP_NEAREST,
        MIRRORED_REPEAT,
        NEAREST,
        WRAP
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Sampler$Builder.class
 */
    public static class Builder {
        public Builder(RenderScript rs) {
            throw new RuntimeException("Stub!");
        }

        public void setMinification(Value v10) {
            throw new RuntimeException("Stub!");
        }

        public void setMagnification(Value v10) {
            throw new RuntimeException("Stub!");
        }

        public void setWrapS(Value v10) {
            throw new RuntimeException("Stub!");
        }

        public void setWrapT(Value v10) {
            throw new RuntimeException("Stub!");
        }

        public void setAnisotropy(float v10) {
            throw new RuntimeException("Stub!");
        }

        public Sampler create() {
            throw new RuntimeException("Stub!");
        }
    }

    Sampler() {
        throw new RuntimeException("Stub!");
    }

    public Value getMinification() {
        throw new RuntimeException("Stub!");
    }

    public Value getMagnification() {
        throw new RuntimeException("Stub!");
    }

    public Value getWrapS() {
        throw new RuntimeException("Stub!");
    }

    public Value getWrapT() {
        throw new RuntimeException("Stub!");
    }

    public float getAnisotropy() {
        throw new RuntimeException("Stub!");
    }

    public static Sampler CLAMP_NEAREST(RenderScript rs) {
        throw new RuntimeException("Stub!");
    }

    public static Sampler CLAMP_LINEAR(RenderScript rs) {
        throw new RuntimeException("Stub!");
    }

    public static Sampler CLAMP_LINEAR_MIP_LINEAR(RenderScript rs) {
        throw new RuntimeException("Stub!");
    }

    public static Sampler WRAP_NEAREST(RenderScript rs) {
        throw new RuntimeException("Stub!");
    }

    public static Sampler WRAP_LINEAR(RenderScript rs) {
        throw new RuntimeException("Stub!");
    }

    public static Sampler WRAP_LINEAR_MIP_LINEAR(RenderScript rs) {
        throw new RuntimeException("Stub!");
    }

    public static Sampler MIRRORED_REPEAT_NEAREST(RenderScript rs) {
        throw new RuntimeException("Stub!");
    }

    public static Sampler MIRRORED_REPEAT_LINEAR(RenderScript rs) {
        throw new RuntimeException("Stub!");
    }

    public static Sampler MIRRORED_REPEAT_LINEAR_MIP_LINEAR(RenderScript rs) {
        throw new RuntimeException("Stub!");
    }
}
