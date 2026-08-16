package com.eclipsesource.v8;

public class V8Array extends V8Object {
    protected V8Array() {
    }

    public V8Array(V8 v82) {
        super(v82);
        v82.checkThread();
    }

    public V8Array(V8 v82, Object data) {
        super(v82, data);
    }

    @Override
    protected V8Value createTwin() {
        return new V8Array(this.f59464v8);
    }

    @Override
    public V8Array twin() {
        return (V8Array) super.twin();
    }

    @Override
    public String toString() {
        if (this.released || this.f59464v8.isReleased()) {
            return "[Array released]";
        }
        return super.toString();
    }

    @Override
    public void initialize(long runtimePtr, Object data) {
        long handle = this.f59464v8.initNewV8Array(runtimePtr);
        this.released = false;
        addObjectReference(handle);
    }

    public int length() {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetSize(this.f59464v8.getV8RuntimePtr(), getHandle());
    }

    public int getType(int index) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.getType(this.f59464v8.getV8RuntimePtr(), getHandle(), index);
    }

    public int getType() {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.getArrayType(this.f59464v8.getV8RuntimePtr(), getHandle());
    }

    public int getType(int index, int length) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.getType(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    public int getInteger(int index) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetInteger(this.f59464v8.getV8RuntimePtr(), getHandle(), index);
    }

    public boolean getBoolean(int index) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetBoolean(this.f59464v8.getV8RuntimePtr(), getHandle(), index);
    }

    public byte getByte(int index) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetByte(this.f59464v8.getV8RuntimePtr(), getHandle(), index);
    }

    public double getDouble(int index) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetDouble(this.f59464v8.getV8RuntimePtr(), getHandle(), index);
    }

    public String getString(int index) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetString(this.f59464v8.getV8RuntimePtr(), getHandle(), index);
    }

    public int[] getIntegers(int index, int length) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetIntegers(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    public int getIntegers(int index, int length, int[] resultArray) {
        this.f59464v8.checkThread();
        checkReleased();
        if (length > resultArray.length) {
            throw new IndexOutOfBoundsException();
        }
        return this.f59464v8.arrayGetIntegers(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length, resultArray);
    }

    public double[] getDoubles(int index, int length) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetDoubles(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    public int getDoubles(int index, int length, double[] resultArray) {
        this.f59464v8.checkThread();
        checkReleased();
        if (length > resultArray.length) {
            throw new IndexOutOfBoundsException();
        }
        return this.f59464v8.arrayGetDoubles(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length, resultArray);
    }

    public boolean[] getBooleans(int index, int length) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetBooleans(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    public byte[] getBytes(int index, int length) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetBytes(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    public int getBooleans(int index, int length, boolean[] resultArray) {
        this.f59464v8.checkThread();
        checkReleased();
        if (length > resultArray.length) {
            throw new IndexOutOfBoundsException();
        }
        return this.f59464v8.arrayGetBooleans(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length, resultArray);
    }

    public int getBytes(int index, int length, byte[] resultArray) {
        this.f59464v8.checkThread();
        checkReleased();
        if (length > resultArray.length) {
            throw new IndexOutOfBoundsException();
        }
        return this.f59464v8.arrayGetBytes(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length, resultArray);
    }

    public String[] getStrings(int index, int length) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGetStrings(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length);
    }

    public int getStrings(int index, int length, String[] resultArray) {
        this.f59464v8.checkThread();
        checkReleased();
        if (length > resultArray.length) {
            throw new IndexOutOfBoundsException();
        }
        return this.f59464v8.arrayGetStrings(this.f59464v8.getV8RuntimePtr(), getHandle(), index, length, resultArray);
    }

    public Object get(int index) {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.arrayGet(this.f59464v8.getV8RuntimePtr(), 6, this.objectHandle, index);
    }

    public V8Array getArray(int index) {
        this.f59464v8.checkThread();
        checkReleased();
        Object result = this.f59464v8.arrayGet(this.f59464v8.getV8RuntimePtr(), 5, this.objectHandle, index);
        if (result == null || (result instanceof V8Array)) {
            return (V8Array) result;
        }
        throw new V8ResultUndefined();
    }

    public V8Object getObject(int index) {
        this.f59464v8.checkThread();
        checkReleased();
        Object result = this.f59464v8.arrayGet(this.f59464v8.getV8RuntimePtr(), 6, this.objectHandle, index);
        if (result == null || (result instanceof V8Object)) {
            return (V8Object) result;
        }
        throw new V8ResultUndefined();
    }

    public V8Array push(int value) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.addArrayIntItem(this.f59464v8.getV8RuntimePtr(), getHandle(), value);
        return this;
    }

    public V8Array push(boolean value) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.addArrayBooleanItem(this.f59464v8.getV8RuntimePtr(), getHandle(), value);
        return this;
    }

    public V8Array push(double value) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.addArrayDoubleItem(this.f59464v8.getV8RuntimePtr(), getHandle(), value);
        return this;
    }

    public V8Array push(String value) {
        this.f59464v8.checkThread();
        checkReleased();
        if (value == null) {
            this.f59464v8.addArrayNullItem(this.f59464v8.getV8RuntimePtr(), getHandle());
        } else if (value.equals(V8.getUndefined())) {
            this.f59464v8.addArrayUndefinedItem(this.f59464v8.getV8RuntimePtr(), getHandle());
        } else {
            this.f59464v8.addArrayStringItem(this.f59464v8.getV8RuntimePtr(), getHandle(), value);
        }
        return this;
    }

    public V8Array push(V8Value value) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(value);
        if (value == null) {
            this.f59464v8.addArrayNullItem(this.f59464v8.getV8RuntimePtr(), getHandle());
        } else if (value.equals(V8.getUndefined())) {
            this.f59464v8.addArrayUndefinedItem(this.f59464v8.getV8RuntimePtr(), getHandle());
        } else {
            this.f59464v8.addArrayObjectItem(this.f59464v8.getV8RuntimePtr(), getHandle(), value.getHandle());
        }
        return this;
    }

    public V8Array push(Object value) {
        this.f59464v8.checkThread();
        checkReleased();
        if (value instanceof V8Value) {
            this.f59464v8.checkRuntime((V8Value) value);
        }
        if (value == null) {
            this.f59464v8.addArrayNullItem(this.f59464v8.getV8RuntimePtr(), getHandle());
        } else if (value.equals(V8.getUndefined())) {
            this.f59464v8.addArrayUndefinedItem(this.f59464v8.getV8RuntimePtr(), getHandle());
        } else if (value instanceof Double) {
            this.f59464v8.addArrayDoubleItem(this.f59464v8.getV8RuntimePtr(), getHandle(), ((Double) value).doubleValue());
        } else if (value instanceof Integer) {
            this.f59464v8.addArrayIntItem(this.f59464v8.getV8RuntimePtr(), getHandle(), ((Integer) value).intValue());
        } else if (value instanceof Float) {
            this.f59464v8.addArrayDoubleItem(this.f59464v8.getV8RuntimePtr(), getHandle(), ((Float) value).doubleValue());
        } else if (value instanceof Number) {
            this.f59464v8.addArrayDoubleItem(this.f59464v8.getV8RuntimePtr(), getHandle(), ((Number) value).doubleValue());
        } else if (value instanceof Boolean) {
            this.f59464v8.addArrayBooleanItem(this.f59464v8.getV8RuntimePtr(), getHandle(), ((Boolean) value).booleanValue());
        } else if (value instanceof String) {
            this.f59464v8.addArrayStringItem(this.f59464v8.getV8RuntimePtr(), getHandle(), (String) value);
        } else if (value instanceof V8Value) {
            this.f59464v8.addArrayObjectItem(this.f59464v8.getV8RuntimePtr(), getHandle(), ((V8Value) value).getHandle());
        } else {
            throw new IllegalArgumentException();
        }
        return this;
    }

    public V8Array pushNull() {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.addArrayNullItem(this.f59464v8.getV8RuntimePtr(), getHandle());
        return this;
    }

    public V8Array pushUndefined() {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.addArrayUndefinedItem(this.f59464v8.getV8RuntimePtr(), getHandle());
        return this;
    }

    public static class Undefined extends V8Array {
        @Override
        public boolean isUndefined() {
            return true;
        }

        @Override
        public boolean isReleased() {
            return false;
        }

        @Override
        public void release() {
        }

        @Override
        public Undefined twin() {
            return (Undefined) super.twin();
        }

        @Override
        public String toString() {
            return "undefined";
        }

        @Override
        public boolean equals(Object that) {
            if ((that instanceof V8Object) && ((V8Object) that).isUndefined()) {
                return true;
            }
            return false;
        }

        @Override
        public int hashCode() {
            return 919;
        }

        @Override
        public V8 getRuntime() {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object add(String key, boolean value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object add(String key, double value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object add(String key, int value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object add(String key, String value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object add(String key, V8Value value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object addUndefined(String key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean contains(String key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Array executeArrayFunction(String name, V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean executeBooleanFunction(String name, V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        @Override
        public double executeDoubleFunction(String name, V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int executeIntegerFunction(String name, V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object executeObjectFunction(String name, V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        @Override
        public String executeStringFunction(String name, V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void executeVoidFunction(String name, V8Array parameters) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Array getArray(String key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean getBoolean(String key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public double getDouble(String key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getInteger(String key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public String[] getKeys() {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object getObject(String key) throws V8ResultUndefined {
            throw new UnsupportedOperationException();
        }

        @Override
        public String getString(String key) throws V8ResultUndefined {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getType(String key) throws V8ResultUndefined {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object registerJavaMethod(JavaCallback callback, String jsFunctionName) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object registerJavaMethod(JavaVoidCallback callback, String jsFunctionName) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object registerJavaMethod(Object object, String methodName, String jsFunctionName, Class<?>[] parameterTypes, boolean includeReceiver) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object setPrototype(V8Object value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object get(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Array getArray(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean getBoolean(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean[] getBooleans(int index, int length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] getBytes(int index, int length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getBytes(int index, int length, byte[] resultArray) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte getByte(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getBooleans(int index, int length, boolean[] resultArray) {
            throw new UnsupportedOperationException();
        }

        @Override
        public double getDouble(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public double[] getDoubles(int index, int length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getDoubles(int index, int length, double[] resultArray) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getInteger(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int[] getIntegers(int index, int length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getIntegers(int index, int length, int[] resultArray) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Object getObject(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public String getString(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public String[] getStrings(int index, int length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getStrings(int index, int length, String[] resultArray) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getType() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getType(int index) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getType(int index, int length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int length() {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Array push(boolean value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Array push(double value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Array push(int value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Array push(String value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Array push(V8Value value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8Array pushUndefined() {
            throw new UnsupportedOperationException();
        }
    }
}
