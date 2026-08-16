package com.eclipsesource.v8;

import java.lang.reflect.Method;

public class V8Object extends V8Value {
    public V8Object(V8 v82) {
        this(v82, null);
    }

    public V8Object(V8 v82, Object data) {
        super(v82);
        if (v82 != null) {
            this.f59464v8.checkThread();
            initialize(this.f59464v8.getV8RuntimePtr(), data);
        }
    }

    public V8Object() {
    }

    @Override
    protected V8Value createTwin() {
        return new V8Object(this.f59464v8);
    }

    @Override
    public V8Object twin() {
        return (V8Object) super.twin();
    }

    public boolean contains(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        checkKey(key);
        return this.f59464v8.contains(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
    }

    public String[] getKeys() {
        this.f59464v8.checkThread();
        checkReleased();
        return this.f59464v8.getKeys(this.f59464v8.getV8RuntimePtr(), this.objectHandle);
    }

    public int getType(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        checkKey(key);
        return this.f59464v8.getType(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
    }

    public Object get(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        checkKey(key);
        return this.f59464v8.get(this.f59464v8.getV8RuntimePtr(), 6, this.objectHandle, key);
    }

    public int getInteger(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        checkKey(key);
        return this.f59464v8.getInteger(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
    }

    public boolean getBoolean(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        checkKey(key);
        return this.f59464v8.getBoolean(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
    }

    public double getDouble(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        checkKey(key);
        return this.f59464v8.getDouble(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
    }

    public String getString(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        checkKey(key);
        return this.f59464v8.getString(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
    }

    public V8Array getArray(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        checkKey(key);
        Object result = this.f59464v8.get(this.f59464v8.getV8RuntimePtr(), 5, this.objectHandle, key);
        if (result == null || (result instanceof V8Array)) {
            return (V8Array) result;
        }
        throw new V8ResultUndefined();
    }

    public V8Object getObject(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        checkKey(key);
        Object result = this.f59464v8.get(this.f59464v8.getV8RuntimePtr(), 6, this.objectHandle, key);
        if (result == null || (result instanceof V8Object)) {
            return (V8Object) result;
        }
        throw new V8ResultUndefined();
    }

    public int executeIntegerFunction(String name, V8Array parameters) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(parameters);
        long parametersHandle = parameters == null ? 0L : parameters.getHandle();
        return this.f59464v8.executeIntegerFunction(this.f59464v8.getV8RuntimePtr(), getHandle(), name, parametersHandle);
    }

    public double executeDoubleFunction(String name, V8Array parameters) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(parameters);
        long parametersHandle = parameters == null ? 0L : parameters.getHandle();
        return this.f59464v8.executeDoubleFunction(this.f59464v8.getV8RuntimePtr(), getHandle(), name, parametersHandle);
    }

    public String executeStringFunction(String name, V8Array parameters) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(parameters);
        long parametersHandle = parameters == null ? 0L : parameters.getHandle();
        return this.f59464v8.executeStringFunction(this.f59464v8.getV8RuntimePtr(), getHandle(), name, parametersHandle);
    }

    public boolean executeBooleanFunction(String name, V8Array parameters) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(parameters);
        long parametersHandle = parameters == null ? 0L : parameters.getHandle();
        return this.f59464v8.executeBooleanFunction(this.f59464v8.getV8RuntimePtr(), getHandle(), name, parametersHandle);
    }

    public V8Array executeArrayFunction(String name, V8Array parameters) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(parameters);
        long parametersHandle = parameters == null ? 0L : parameters.getHandle();
        Object result = this.f59464v8.executeFunction(this.f59464v8.getV8RuntimePtr(), 5, this.objectHandle, name, parametersHandle);
        if (result instanceof V8Array) {
            return (V8Array) result;
        }
        throw new V8ResultUndefined();
    }

    public V8Object executeObjectFunction(String name, V8Array parameters) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(parameters);
        long parametersHandle = parameters == null ? 0L : parameters.getHandle();
        Object result = this.f59464v8.executeFunction(this.f59464v8.getV8RuntimePtr(), 6, this.objectHandle, name, parametersHandle);
        if (result instanceof V8Object) {
            return (V8Object) result;
        }
        throw new V8ResultUndefined();
    }

    public Object executeFunction(String name, V8Array parameters) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(parameters);
        long parametersHandle = parameters == null ? 0L : parameters.getHandle();
        return this.f59464v8.executeFunction(this.f59464v8.getV8RuntimePtr(), 0, this.objectHandle, name, parametersHandle);
    }

    public Object executeJSFunction(String name) {
        return executeFunction(name, null);
    }

    public Object executeJSFunction(String name, Object... parameters) {
        if (parameters == null) {
            return executeFunction(name, null);
        }
        V8Array parameterArray = new V8Array(this.f59464v8.getRuntime());
        try {
            for (Object object : parameters) {
                if (object == null) {
                    parameterArray.pushNull();
                } else if (object instanceof V8Value) {
                    parameterArray.push((V8Value) object);
                } else if (object instanceof Integer) {
                    parameterArray.push((Integer) object);
                } else if (object instanceof Double) {
                    parameterArray.push((Double) object);
                } else if (object instanceof Long) {
                    parameterArray.push(((Long) object).doubleValue());
                } else if (object instanceof Float) {
                    parameterArray.push(((Float) object).floatValue());
                } else if (object instanceof Boolean) {
                    parameterArray.push((Boolean) object);
                } else if (object instanceof String) {
                    parameterArray.push((String) object);
                } else {
                    throw new IllegalArgumentException("Unsupported Object of type: " + ((Object) object.getClass()));
                }
            }
            Object executeFunction = executeFunction(name, parameterArray);
            parameterArray.release();
            return executeFunction;
        } catch (Throwable th2) {
            parameterArray.release();
            throw th2;
        }
    }

    public void executeVoidFunction(String name, V8Array parameters) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(parameters);
        long parametersHandle = parameters == null ? 0L : parameters.getHandle();
        this.f59464v8.executeVoidFunction(this.f59464v8.getV8RuntimePtr(), this.objectHandle, name, parametersHandle);
    }

    public V8Object add(String key, int value) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.add(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key, value);
        return this;
    }

    public V8Object add(String key, boolean value) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.add(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key, value);
        return this;
    }

    public V8Object add(String key, double value) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.add(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key, value);
        return this;
    }

    public V8Object add(String key, String value) {
        this.f59464v8.checkThread();
        checkReleased();
        if (value == null) {
            this.f59464v8.addNull(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
        } else if (value.equals(V8.getUndefined())) {
            this.f59464v8.addUndefined(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
        } else {
            this.f59464v8.add(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key, value);
        }
        return this;
    }

    public V8Object add(String key, V8Value value) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.checkRuntime(value);
        if (value == null) {
            this.f59464v8.addNull(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
        } else if (value.equals(V8.getUndefined())) {
            this.f59464v8.addUndefined(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
        } else {
            this.f59464v8.addObject(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key, value.getHandle());
        }
        return this;
    }

    public V8Object addUndefined(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.addUndefined(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
        return this;
    }

    public V8Object addNull(String key) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.addNull(this.f59464v8.getV8RuntimePtr(), this.objectHandle, key);
        return this;
    }

    public V8Object setPrototype(V8Object value) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.setPrototype(this.f59464v8.getV8RuntimePtr(), this.objectHandle, value.getHandle());
        return this;
    }

    public V8Object registerJavaMethod(JavaCallback callback, String jsFunctionName) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.registerCallback(callback, getHandle(), jsFunctionName);
        return this;
    }

    public V8Object registerJavaMethod(JavaVoidCallback callback, String jsFunctionName) {
        this.f59464v8.checkThread();
        checkReleased();
        this.f59464v8.registerVoidCallback(callback, getHandle(), jsFunctionName);
        return this;
    }

    public V8Object registerJavaMethod(Object object, String methodName, String jsFunctionName, Class<?>[] parameterTypes) {
        return registerJavaMethod(object, methodName, jsFunctionName, parameterTypes, false);
    }

    public V8Object registerJavaMethod(Object object, String methodName, String jsFunctionName, Class<?>[] parameterTypes, boolean includeReceiver) {
        this.f59464v8.checkThread();
        checkReleased();
        try {
            Method method = object.getClass().getMethod(methodName, parameterTypes);
            method.setAccessible(true);
            this.f59464v8.registerCallback(object, method, getHandle(), jsFunctionName, includeReceiver);
            return this;
        } catch (NoSuchMethodException e10) {
            throw new IllegalStateException(e10);
        } catch (SecurityException e11) {
            throw new IllegalStateException(e11);
        }
    }

    public String toString() {
        if (isReleased() || this.f59464v8.isReleased()) {
            return "[Object released]";
        }
        this.f59464v8.checkThread();
        return this.f59464v8.toString(this.f59464v8.getV8RuntimePtr(), getHandle());
    }

    private void checkKey(String key) {
        if (key == null) {
            throw new IllegalArgumentException("Key cannot be null");
        }
    }

    public static class Undefined extends V8Object {
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
        public V8Object add(String key, boolean value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V8 getRuntime() {
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
        public Object executeJSFunction(String name, Object... parameters) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object executeFunction(String name, V8Array parameters) {
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
    }
}
