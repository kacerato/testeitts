package android.renderscript;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Script.class
 */
public class Script extends BaseObj {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Script$KernelID.class
 */
    public static final class KernelID extends BaseObj {
        KernelID() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Script$InvokeID.class
 */
    public static final class InvokeID extends BaseObj {
        InvokeID() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Script$FieldID.class
 */
    public static final class FieldID extends BaseObj {
        FieldID() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Script$Builder.class
 */
    public static class Builder {
        Builder() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Script$FieldBase.class
 */
    public static class FieldBase {
        protected Allocation mAllocation;
        protected Element mElement;

        protected FieldBase() {
            throw new RuntimeException("Stub!");
        }

        protected void init(RenderScript rs, int dimx) {
            throw new RuntimeException("Stub!");
        }

        protected void init(RenderScript rs, int dimx, int usages) {
            throw new RuntimeException("Stub!");
        }

        public Element getElement() {
            throw new RuntimeException("Stub!");
        }

        public Type getType() {
            throw new RuntimeException("Stub!");
        }

        public Allocation getAllocation() {
            throw new RuntimeException("Stub!");
        }

        public void updateAllocation() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Script$LaunchOptions.class
 */
    public static final class LaunchOptions {
        public LaunchOptions() {
            throw new RuntimeException("Stub!");
        }

        public LaunchOptions setX(int xstartArg, int xendArg) {
            throw new RuntimeException("Stub!");
        }

        public LaunchOptions setY(int ystartArg, int yendArg) {
            throw new RuntimeException("Stub!");
        }

        public LaunchOptions setZ(int zstartArg, int zendArg) {
            throw new RuntimeException("Stub!");
        }

        public int getXStart() {
            throw new RuntimeException("Stub!");
        }

        public int getXEnd() {
            throw new RuntimeException("Stub!");
        }

        public int getYStart() {
            throw new RuntimeException("Stub!");
        }

        public int getYEnd() {
            throw new RuntimeException("Stub!");
        }

        public int getZStart() {
            throw new RuntimeException("Stub!");
        }

        public int getZEnd() {
            throw new RuntimeException("Stub!");
        }
    }

    public Script() {
        throw new RuntimeException("Stub!");
    }

    protected KernelID createKernelID(int slot, int sig, Element ein, Element eout) {
        throw new RuntimeException("Stub!");
    }

    protected InvokeID createInvokeID(int slot) {
        throw new RuntimeException("Stub!");
    }

    protected FieldID createFieldID(int slot, Element e10) {
        throw new RuntimeException("Stub!");
    }

    protected void invoke(int slot) {
        throw new RuntimeException("Stub!");
    }

    protected void invoke(int slot, FieldPacker v10) {
        throw new RuntimeException("Stub!");
    }

    protected void forEach(int slot, Allocation ain, Allocation aout, FieldPacker v10) {
        throw new RuntimeException("Stub!");
    }

    protected void forEach(int slot, Allocation ain, Allocation aout, FieldPacker v10, LaunchOptions sc2) {
        throw new RuntimeException("Stub!");
    }

    protected void forEach(int slot, Allocation[] ains, Allocation aout, FieldPacker v10) {
        throw new RuntimeException("Stub!");
    }

    protected void forEach(int slot, Allocation[] ains, Allocation aout, FieldPacker v10, LaunchOptions sc2) {
        throw new RuntimeException("Stub!");
    }

    protected void reduce(int slot, Allocation[] ains, Allocation aout, LaunchOptions sc2) {
        throw new RuntimeException("Stub!");
    }

    public void bindAllocation(Allocation va2, int slot) {
        throw new RuntimeException("Stub!");
    }

    public void setVar(int index, float v10) {
        throw new RuntimeException("Stub!");
    }

    public float getVarF(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setVar(int index, double v10) {
        throw new RuntimeException("Stub!");
    }

    public double getVarD(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setVar(int index, int v10) {
        throw new RuntimeException("Stub!");
    }

    public int getVarI(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setVar(int index, long v10) {
        throw new RuntimeException("Stub!");
    }

    public long getVarJ(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setVar(int index, boolean v10) {
        throw new RuntimeException("Stub!");
    }

    public boolean getVarB(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setVar(int index, BaseObj o10) {
        throw new RuntimeException("Stub!");
    }

    public void setVar(int index, FieldPacker v10) {
        throw new RuntimeException("Stub!");
    }

    public void setVar(int index, FieldPacker v10, Element e10, int[] dims) {
        throw new RuntimeException("Stub!");
    }

    public void getVarV(int index, FieldPacker v10) {
        throw new RuntimeException("Stub!");
    }

    public void setTimeZone(String timeZone) {
        throw new RuntimeException("Stub!");
    }
}
