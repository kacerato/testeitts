package android.renderscript;

import android.renderscript.Script;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/ScriptGroup.class
 */
public final class ScriptGroup extends BaseObj {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/ScriptGroup$Closure.class
 */
    public static final class Closure extends BaseObj {
        Closure() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void destroy() {
            throw new RuntimeException("Stub!");
        }

        @Override
        protected void finalize() throws Throwable {
            throw new RuntimeException("Stub!");
        }

        public Future getReturn() {
            throw new RuntimeException("Stub!");
        }

        public Future getGlobal(Script.FieldID field) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/ScriptGroup$Future.class
 */
    public static final class Future {
        Future() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/ScriptGroup$Input.class
 */
    public static final class Input {
        Input() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/ScriptGroup$Builder.class
 */
    @Deprecated
    public static final class Builder {
        public Builder(RenderScript rs) {
            throw new RuntimeException("Stub!");
        }

        public Builder addKernel(Script.KernelID k10) {
            throw new RuntimeException("Stub!");
        }

        public Builder addConnection(Type t10, Script.KernelID from, Script.FieldID to) {
            throw new RuntimeException("Stub!");
        }

        public Builder addConnection(Type t10, Script.KernelID from, Script.KernelID to) {
            throw new RuntimeException("Stub!");
        }

        public ScriptGroup create() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/ScriptGroup$Binding.class
 */
    public static final class Binding {
        public Binding(Script.FieldID field, Object value) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/ScriptGroup$Builder2.class
 */
    public static final class Builder2 {
        public Builder2(RenderScript rs) {
            throw new RuntimeException("Stub!");
        }

        public Input addInput() {
            throw new RuntimeException("Stub!");
        }

        public Closure addKernel(Script.KernelID k10, Type returnType, Object... argsAndBindings) {
            throw new RuntimeException("Stub!");
        }

        public Closure addInvoke(Script.InvokeID invoke, Object... argsAndBindings) {
            throw new RuntimeException("Stub!");
        }

        public ScriptGroup create(String name, Future... outputs) {
            throw new RuntimeException("Stub!");
        }
    }

    ScriptGroup() {
        throw new RuntimeException("Stub!");
    }

    public Object[] execute(Object... inputs) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setInput(Script.KernelID s10, Allocation a10) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setOutput(Script.KernelID s10, Allocation a10) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void execute() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void destroy() {
        throw new RuntimeException("Stub!");
    }
}
