package com.eclipsesource.v8;

public class V8Function extends V8Object {
    public V8Function(V8 v82, JavaCallback javaCallback) {
        super(v82, javaCallback);
    }

    protected V8Function(V8 v82) {
        this(v82, null);
    }

    @Override
    protected V8Value createTwin() {
        return new V8Function(this.f59464v8);
    }

    @Override
    public String toString() {
        if (this.released || this.f59464v8.isReleased()) {
            return "[Function released]";
        }
        return super.toString();
    }

    @Override
    public void initialize(long runtimePtr, Object data) {
        if (data == null) {
            super.initialize(runtimePtr, null);
            return;
        }
        JavaCallback javaCallback = (JavaCallback) data;
        long[] pointers = this.f59464v8.initNewV8Function(runtimePtr);
        this.f59464v8.createAndRegisterMethodDescriptor(javaCallback, pointers[1]);
        this.released = false;
        addObjectReference(pointers[0]);
    }

    @Override
    public V8Function twin() {
        return (V8Function) super.twin();
    }

    public Object call(V8Object receiver, V8Array parameters) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(receiver);
        this.f59464v8.checkRuntime(parameters);
        V8Object receiver2 = receiver != null ? receiver : this.f59464v8;
        long parametersHandle = parameters == null ? 0L : parameters.getHandle();
        long receiverHandle = receiver2.isUndefined() ? this.f59464v8.getHandle() : receiver2.getHandle();
        return this.f59464v8.executeFunction(this.f59464v8.getV8RuntimePtr(), receiverHandle, this.objectHandle, parametersHandle);
    }
}
