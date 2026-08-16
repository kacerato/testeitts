package com.eclipsesource.v8;

import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.utils.V8Executor;
import com.eclipsesource.v8.utils.V8Map;
import com.eclipsesource.v8.utils.V8Runnable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class V8 extends V8Object {
    protected Map<Long, V8Value> v8WeakReferences;
    private Map<String, Object> data;
    private final V8Locker locker;
    private long objectReferences;
    private long v8RuntimePtr;
    private List<Releasable> resources;
    private V8Map<V8Executor> executors;
    private boolean forceTerminateExecutors;
    private Map<Long, MethodDescriptor> functionRegistry;
    private LinkedList<ReferenceHandler> referenceHandlers;
    private LinkedList<V8Runnable> releaseHandlers;
    private static Object lock = new Object();
    private static volatile int runtimeCounter = 0;
    private static String v8Flags = null;
    private static boolean initialized = false;
    private static boolean nativeLibraryLoaded = false;
    private static Error nativeLoadError = null;
    private static Exception nativeLoadException = null;
    private static V8Value undefined = new V8Object.Undefined();
    private static Object invalid = new Object();

    private native long _initNewV8Object(long j10);

    private native void _acquireLock(long j10);

    private native void _releaseLock(long j10);

    private native void _lowMemoryNotification(long j10);

    private native void _createTwin(long j10, long j11, long j12);

    private native void _releaseRuntime(long j10);

    private native long _createIsolate(String str);

    private native int _executeIntegerScript(long j10, String str, String str2, int i10);

    private native double _executeDoubleScript(long j10, String str, String str2, int i10);

    private native String _executeStringScript(long j10, String str, String str2, int i10);

    private native boolean _executeBooleanScript(long j10, String str, String str2, int i10);

    private native Object _executeScript(long j10, int i10, String str, String str2, int i11);

    private native void _executeVoidScript(long j10, String str, String str2, int i10);

    private native void _release(long j10, long j11);

    private native void _releaseMethodDescriptor(long j10, long j11);

    private native boolean _contains(long j10, long j11, String str);

    private native String[] _getKeys(long j10, long j11);

    private native int _getInteger(long j10, long j11, String str);

    private native boolean _getBoolean(long j10, long j11, String str);

    private native double _getDouble(long j10, long j11, String str);

    private native String _getString(long j10, long j11, String str);

    private native Object _get(long j10, int i10, long j11, String str);

    private native int _executeIntegerFunction(long j10, long j11, String str, long j12);

    private native double _executeDoubleFunction(long j10, long j11, String str, long j12);

    private native String _executeStringFunction(long j10, long j11, String str, long j12);

    private native boolean _executeBooleanFunction(long j10, long j11, String str, long j12);

    private native Object _executeFunction(long j10, int i10, long j11, String str, long j12);

    private native Object _executeFunction(long j10, long j11, long j12, long j13);

    private native void _executeVoidFunction(long j10, long j11, String str, long j12);

    private native boolean _equals(long j10, long j11, long j12);

    private native String _toString(long j10, long j11);

    private native boolean _strictEquals(long j10, long j11, long j12);

    private native boolean _sameValue(long j10, long j11, long j12);

    private native int _identityHash(long j10, long j11);

    private native void _add(long j10, long j11, String str, int i10);

    private native void _addObject(long j10, long j11, String str, long j12);

    private native void _add(long j10, long j11, String str, boolean z10);

    private native void _add(long j10, long j11, String str, double d10);

    private native void _add(long j10, long j11, String str, String str2);

    private native void _addUndefined(long j10, long j11, String str);

    private native void _addNull(long j10, long j11, String str);

    private native long _registerJavaMethod(long j10, long j11, String str, boolean z10);

    private native long _initNewV8Array(long j10);

    private native long[] _initNewV8Function(long j10);

    private native int _arrayGetSize(long j10, long j11);

    private native int _arrayGetInteger(long j10, long j11, int i10);

    private native boolean _arrayGetBoolean(long j10, long j11, int i10);

    private native byte _arrayGetByte(long j10, long j11, int i10);

    private native double _arrayGetDouble(long j10, long j11, int i10);

    private native String _arrayGetString(long j10, long j11, int i10);

    private native Object _arrayGet(long j10, int i10, long j11, int i11);

    private native void _addArrayIntItem(long j10, long j11, int i10);

    private native void _addArrayBooleanItem(long j10, long j11, boolean z10);

    private native void _addArrayDoubleItem(long j10, long j11, double d10);

    private native void _addArrayStringItem(long j10, long j11, String str);

    private native void _addArrayObjectItem(long j10, long j11, long j12);

    private native void _addArrayUndefinedItem(long j10, long j11);

    private native void _addArrayNullItem(long j10, long j11);

    private native int _getType(long j10, long j11, String str);

    private native int _getType(long j10, long j11, int i10);

    private native int _getArrayType(long j10, long j11);

    private native void _setPrototype(long j10, long j11, long j12);

    private native int _getType(long j10, long j11);

    private native int _getType(long j10, long j11, int i10, int i11);

    private native double[] _arrayGetDoubles(long j10, long j11, int i10, int i11);

    private native int[] _arrayGetIntegers(long j10, long j11, int i10, int i11);

    private native boolean[] _arrayGetBooleans(long j10, long j11, int i10, int i11);

    private native byte[] _arrayGetBytes(long j10, long j11, int i10, int i11);

    private native String[] _arrayGetStrings(long j10, long j11, int i10, int i11);

    private native int _arrayGetIntegers(long j10, long j11, int i10, int i11, int[] iArr);

    private native int _arrayGetDoubles(long j10, long j11, int i10, int i11, double[] dArr);

    private native int _arrayGetBooleans(long j10, long j11, int i10, int i11, boolean[] zArr);

    private native int _arrayGetBytes(long j10, long j11, int i10, int i11, byte[] bArr);

    private native int _arrayGetStrings(long j10, long j11, int i10, int i11, String[] strArr);

    private native long _initNewV8ArrayBuffer(long j10, int i10);

    private native long _initNewV8ArrayBuffer(long j10, ByteBuffer byteBuffer, int i10);

    private native long _initNewV8Int32Array(long j10, long j11, int i10, int i11);

    private native long _initNewV8UInt32Array(long j10, long j11, int i10, int i11);

    private native long _initNewV8Float32Array(long j10, long j11, int i10, int i11);

    private native long _initNewV8Float64Array(long j10, long j11, int i10, int i11);

    private native long _initNewV8Int16Array(long j10, long j11, int i10, int i11);

    private native long _initNewV8UInt16Array(long j10, long j11, int i10, int i11);

    private native long _initNewV8Int8Array(long j10, long j11, int i10, int i11);

    private native long _initNewV8UInt8Array(long j10, long j11, int i10, int i11);

    private native long _initNewV8UInt8ClampedArray(long j10, long j11, int i10, int i11);

    private native void _setWeak(long j10, long j11);

    private native boolean _isWeak(long j10, long j11);

    private native ByteBuffer _createV8ArrayBufferBackingStore(long j10, long j11, int i10);

    private static native String _getVersion();

    private static native void _setFlags(String str);

    private native void _terminateExecution(long j10);

    private native long _getGlobalObject(long j10);

    private native long _getBuildID();

    private static native void _startNodeJS(long j10, String str);

    private static native boolean _pumpMessageLoop(long j10);

    private static native boolean _isRunning(long j10);

    private static native boolean _isNodeCompatible();

    public class MethodDescriptor {
        Object object;
        Method method;
        JavaCallback callback;
        JavaVoidCallback voidCallback;
        boolean includeReceiver;

        private MethodDescriptor() {
        }
    }

    private static synchronized void load(String tmpDirectory) {
        try {
            LibraryLoader.loadLibrary(tmpDirectory);
            nativeLibraryLoaded = true;
        } catch (Error e10) {
            nativeLoadError = e10;
        } catch (Exception e11) {
            nativeLoadException = e11;
        }
    }

    public static boolean isLoaded() {
        return nativeLibraryLoaded;
    }

    public static void setFlags(String flags) {
        v8Flags = flags;
        initialized = false;
    }

    public static V8 createV8Runtime() {
        return createV8Runtime(null, null);
    }

    public static V8 createV8Runtime(String globalAlias) {
        return createV8Runtime(globalAlias, null);
    }

    public static V8 createV8Runtime(String globalAlias, String tempDirectory) {
        if (!nativeLibraryLoaded) {
            synchronized (lock) {
                if (!nativeLibraryLoaded) {
                    load(tempDirectory);
                }
            }
        }
        checkNativeLibraryLoaded();
        if (!initialized) {
            _setFlags(v8Flags);
            initialized = true;
        }
        V8 runtime = new V8(globalAlias);
        synchronized (lock) {
            runtimeCounter++;
        }
        return runtime;
    }

    public void addReferenceHandler(ReferenceHandler handler) {
        this.referenceHandlers.add(0, handler);
    }

    public void addReleaseHandler(V8Runnable handler) {
        this.releaseHandlers.add(handler);
    }

    public void removeReferenceHandler(ReferenceHandler handler) {
        this.referenceHandlers.remove(handler);
    }

    public void removeReleaseHandler(V8Runnable handler) {
        this.releaseHandlers.remove(handler);
    }

    public synchronized void setData(String key, Object value) {
        if (this.data == null) {
            this.data = new HashMap();
        }
        this.data.put(key, value);
    }

    public Object getData(String key) {
        if (this.data == null) {
            return null;
        }
        return this.data.get(key);
    }

    private void notifyReleaseHandlers(V8 runtime) {
        Iterator<V8Runnable> it = this.releaseHandlers.iterator();
        while (it.hasNext()) {
            V8Runnable handler = it.next();
            handler.run(runtime);
        }
    }

    private void notifyReferenceCreated(V8Value object) {
        Iterator<ReferenceHandler> it = this.referenceHandlers.iterator();
        while (it.hasNext()) {
            ReferenceHandler referenceHandler = it.next();
            referenceHandler.v8HandleCreated(object);
        }
    }

    private void notifyReferenceDisposed(V8Value object) {
        Iterator<ReferenceHandler> it = this.referenceHandlers.iterator();
        while (it.hasNext()) {
            ReferenceHandler referenceHandler = it.next();
            referenceHandler.v8HandleDisposed(object);
        }
    }

    private static void checkNativeLibraryLoaded() {
        if (!nativeLibraryLoaded) {
            String vendorName = LibraryLoader.computeLibraryShortName(true);
            String baseName = LibraryLoader.computeLibraryShortName(false);
            String message = "J2V8 native library not loaded (" + baseName + "/" + vendorName + ")";
            if (nativeLoadError != null) {
                throw new IllegalStateException(message, nativeLoadError);
            }
            if (nativeLoadException != null) {
                throw new IllegalStateException(message, nativeLoadException);
            }
            throw new IllegalStateException(message);
        }
    }

    protected V8() {
        this(null);
    }

    protected V8(String globalAlias) {
        super(null);
        this.v8WeakReferences = new HashMap();
        this.data = null;
        this.objectReferences = 0L;
        this.v8RuntimePtr = 0L;
        this.resources = null;
        this.executors = null;
        this.forceTerminateExecutors = false;
        this.functionRegistry = new HashMap();
        this.referenceHandlers = new LinkedList<>();
        this.releaseHandlers = new LinkedList<>();
        this.released = false;
        this.v8RuntimePtr = _createIsolate(globalAlias);
        this.locker = new V8Locker(this);
        checkThread();
        this.objectHandle = _getGlobalObject(this.v8RuntimePtr);
    }

    public static V8Value getUndefined() {
        return undefined;
    }

    public static int getActiveRuntimes() {
        return runtimeCounter;
    }

    public long getObjectReferenceCount() {
        return this.objectReferences - this.v8WeakReferences.size();
    }

    public long getV8RuntimePtr() {
        return this.v8RuntimePtr;
    }

    public static String getV8Version() {
        return _getVersion();
    }

    public static String getSCMRevision() {
        return "8d061e327811b84bd8050bf5b9767feb30c486f6";
    }

    @Override
    public void release() {
        release(true);
    }

    public void terminateExecution() {
        this.forceTerminateExecutors = true;
        terminateExecution(this.v8RuntimePtr);
    }

    public void release(boolean reportMemoryLeaks) {
        if (isReleased()) {
            return;
        }
        checkThread();
        try {
            notifyReleaseHandlers(this);
            releaseResources();
            shutdownExecutors(this.forceTerminateExecutors);
            if (this.executors != null) {
                this.executors.clear();
            }
            releaseNativeMethodDescriptors();
            synchronized (lock) {
                runtimeCounter--;
            }
            _releaseRuntime(this.v8RuntimePtr);
            this.v8RuntimePtr = 0L;
            this.released = true;
            if (reportMemoryLeaks && getObjectReferenceCount() > 0) {
                throw new IllegalStateException(this.objectReferences + " Object(s) still exist in runtime");
            }
        } catch (Throwable th2) {
            releaseResources();
            shutdownExecutors(this.forceTerminateExecutors);
            if (this.executors != null) {
                this.executors.clear();
            }
            releaseNativeMethodDescriptors();
            synchronized (lock) {
                runtimeCounter--;
                _releaseRuntime(this.v8RuntimePtr);
                this.v8RuntimePtr = 0L;
                this.released = true;
                if (reportMemoryLeaks && getObjectReferenceCount() > 0) {
                    throw new IllegalStateException(this.objectReferences + " Object(s) still exist in runtime");
                }
                throw th2;
            }
        }
    }

    private void releaseNativeMethodDescriptors() {
        Set<Long> nativeMethodDescriptors = this.functionRegistry.o();
        for (Long nativeMethodDescriptor : nativeMethodDescriptors) {
            releaseMethodDescriptor(this.v8RuntimePtr, nativeMethodDescriptor.longValue());
        }
    }

    private void releaseResources() {
        if (this.resources != null) {
            for (Releasable releasable : this.resources) {
                releasable.release();
            }
            this.resources.clear();
            this.resources = null;
        }
    }

    public void registerV8Executor(V8Object key, V8Executor executor) {
        checkThread();
        if (this.executors == null) {
            this.executors = new V8Map<>();
        }
        this.executors.put((V8Value) key, (V8Object) executor);
    }

    public V8Executor removeExecutor(V8Object key) {
        checkThread();
        if (this.executors == null) {
            return null;
        }
        return this.executors.remove(key);
    }

    public V8Executor getExecutor(V8Object key) {
        checkThread();
        if (this.executors == null) {
            return null;
        }
        return this.executors.get(key);
    }

    public void shutdownExecutors(boolean forceTerminate) {
        checkThread();
        if (this.executors == null) {
            return;
        }
        for (V8Executor executor : this.executors.values()) {
            if (forceTerminate) {
                executor.forceTermination();
            } else {
                executor.shutdown();
            }
        }
    }

    public void registerResource(Releasable resource) {
        checkThread();
        if (this.resources == null) {
            this.resources = new ArrayList();
        }
        this.resources.add(resource);
    }

    public int executeIntegerScript(String script) {
        return executeIntegerScript(script, null, 0);
    }

    public int executeIntegerScript(String script, String scriptName, int lineNumber) {
        checkThread();
        checkScript(script);
        return executeIntegerScript(this.v8RuntimePtr, script, scriptName, lineNumber);
    }

    public void createTwin(V8Value value, V8Value twin) {
        checkThread();
        createTwin(this.v8RuntimePtr, value.getHandle(), twin.getHandle());
    }

    public double executeDoubleScript(String script) {
        return executeDoubleScript(script, null, 0);
    }

    public double executeDoubleScript(String script, String scriptName, int lineNumber) {
        checkThread();
        checkScript(script);
        return executeDoubleScript(this.v8RuntimePtr, script, scriptName, lineNumber);
    }

    public String executeStringScript(String script) {
        return executeStringScript(script, null, 0);
    }

    public String executeStringScript(String script, String scriptName, int lineNumber) {
        checkThread();
        checkScript(script);
        return executeStringScript(this.v8RuntimePtr, script, scriptName, lineNumber);
    }

    public boolean executeBooleanScript(String script) {
        return executeBooleanScript(script, null, 0);
    }

    public boolean executeBooleanScript(String script, String scriptName, int lineNumber) {
        checkThread();
        checkScript(script);
        return executeBooleanScript(this.v8RuntimePtr, script, scriptName, lineNumber);
    }

    public V8Array executeArrayScript(String script) {
        return executeArrayScript(script, null, 0);
    }

    public V8Array executeArrayScript(String script, String scriptName, int lineNumber) {
        checkThread();
        Object result = executeScript(script, scriptName, lineNumber);
        if (result instanceof V8Array) {
            return (V8Array) result;
        }
        throw new V8ResultUndefined();
    }

    public Object executeScript(String script) {
        return executeScript(script, null, 0);
    }

    public Object executeScript(String script, String scriptName, int lineNumber) {
        checkThread();
        checkScript(script);
        return executeScript(getV8RuntimePtr(), 0, script, scriptName, lineNumber);
    }

    public V8Object executeObjectScript(String script) {
        return executeObjectScript(script, null, 0);
    }

    public V8Object executeObjectScript(String script, String scriptName, int lineNumber) {
        checkThread();
        Object result = executeScript(script, scriptName, lineNumber);
        if (result instanceof V8Object) {
            return (V8Object) result;
        }
        throw new V8ResultUndefined();
    }

    public void executeVoidScript(String script) {
        executeVoidScript(script, null, 0);
    }

    public void executeVoidScript(String script, String scriptName, int lineNumber) {
        checkThread();
        checkScript(script);
        executeVoidScript(this.v8RuntimePtr, script, scriptName, lineNumber);
    }

    public V8Locker getLocker() {
        return this.locker;
    }

    public long getBuildID() {
        return _getBuildID();
    }

    public void lowMemoryNotification() {
        checkThread();
        lowMemoryNotification(getV8RuntimePtr());
    }

    public void checkRuntime(V8Value value) {
        if (value == null || value.isUndefined()) {
            return;
        }
        V8 runtime = value.getRuntime();
        if (runtime == null || runtime.isReleased() || runtime != this) {
            throw new Error("Invalid target runtime");
        }
    }

    public void checkThread() {
        this.locker.checkThread();
        if (isReleased()) {
            throw new Error("Runtime disposed error");
        }
    }

    static void checkScript(String script) {
        if (script == null) {
            throw new NullPointerException("Script is null");
        }
    }

    public void registerCallback(Object object, Method method, long objectHandle, String jsFunctionName, boolean includeReceiver) {
        MethodDescriptor methodDescriptor = new MethodDescriptor();
        methodDescriptor.object = object;
        methodDescriptor.method = method;
        methodDescriptor.includeReceiver = includeReceiver;
        long methodID = registerJavaMethod(getV8RuntimePtr(), objectHandle, jsFunctionName, isVoidMethod(method));
        this.functionRegistry.put(Long.valueOf(methodID), methodDescriptor);
    }

    public void registerVoidCallback(JavaVoidCallback callback, long objectHandle, String jsFunctionName) {
        MethodDescriptor methodDescriptor = new MethodDescriptor();
        methodDescriptor.voidCallback = callback;
        long methodID = registerJavaMethod(getV8RuntimePtr(), objectHandle, jsFunctionName, true);
        this.functionRegistry.put(Long.valueOf(methodID), methodDescriptor);
    }

    public void registerCallback(JavaCallback callback, long objectHandle, String jsFunctionName) {
        long methodID = registerJavaMethod(getV8RuntimePtr(), objectHandle, jsFunctionName, false);
        createAndRegisterMethodDescriptor(callback, methodID);
    }

    public void createAndRegisterMethodDescriptor(JavaCallback callback, long methodID) {
        MethodDescriptor methodDescriptor = new MethodDescriptor();
        methodDescriptor.callback = callback;
        this.functionRegistry.put(Long.valueOf(methodID), methodDescriptor);
    }

    private boolean isVoidMethod(Method method) {
        Class<?> returnType = method.getReturnType();
        if (returnType.equals(Void.TYPE)) {
            return true;
        }
        return false;
    }

    private Object getDefaultValue(Class<?> type) {
        if (type.equals(V8Object.class)) {
            return new V8Object.Undefined();
        }
        if (type.equals(V8Array.class)) {
            return new V8Array.Undefined();
        }
        return invalid;
    }

    protected void disposeMethodID(long methodID) {
        this.functionRegistry.remove(Long.valueOf(methodID));
    }

    protected void weakReferenceReleased(long objectID) {
        V8Value v8Value = this.v8WeakReferences.get(Long.valueOf(objectID));
        if (v8Value != null) {
            this.v8WeakReferences.remove(Long.valueOf(objectID));
            try {
                v8Value.release();
            } catch (Exception e10) {
            }
        }
    }

    protected Object callObjectJavaMethod(long methodID, V8Object receiver, V8Array parameters) throws Throwable {
        MethodDescriptor methodDescriptor = this.functionRegistry.get(Long.valueOf(methodID));
        if (methodDescriptor.callback != null) {
            return checkResult(methodDescriptor.callback.invoke(receiver, parameters));
        }
        boolean hasVarArgs = methodDescriptor.method.isVarArgs();
        Object[] args = getArgs(receiver, methodDescriptor, parameters, hasVarArgs);
        checkArgs(args);
        try {
            try {
                Object result = methodDescriptor.method.invoke(methodDescriptor.object, args);
                Object checkResult = checkResult(result);
                releaseArguments(args, hasVarArgs);
                return checkResult;
            } catch (IllegalAccessException e10) {
                throw e10;
            } catch (IllegalArgumentException e11) {
                throw e11;
            } catch (InvocationTargetException e12) {
                throw e12.getTargetException();
            }
        } catch (Throwable th2) {
            releaseArguments(args, hasVarArgs);
            throw th2;
        }
    }

    private Object checkResult(Object result) {
        if (result == null) {
            return result;
        }
        if (result instanceof Float) {
            return Double.valueOf(((Float) result).doubleValue());
        }
        if ((result instanceof Integer) || (result instanceof Double) || (result instanceof Boolean) || (result instanceof String)) {
            return result;
        }
        if (result instanceof V8Value) {
            if (((V8Value) result).isReleased()) {
                throw new V8RuntimeException("V8Value already released");
            }
            return result;
        }
        throw new V8RuntimeException("Unknown return type: " + ((Object) result.getClass()));
    }

    protected void callVoidJavaMethod(long methodID, V8Object receiver, V8Array parameters) throws Throwable {
        MethodDescriptor methodDescriptor = this.functionRegistry.get(Long.valueOf(methodID));
        if (methodDescriptor.voidCallback != null) {
            methodDescriptor.voidCallback.invoke(receiver, parameters);
            return;
        }
        boolean hasVarArgs = methodDescriptor.method.isVarArgs();
        Object[] args = getArgs(receiver, methodDescriptor, parameters, hasVarArgs);
        checkArgs(args);
        try {
            try {
                try {
                    try {
                        methodDescriptor.method.invoke(methodDescriptor.object, args);
                        releaseArguments(args, hasVarArgs);
                    } catch (InvocationTargetException e10) {
                        throw e10.getTargetException();
                    }
                } catch (IllegalArgumentException e11) {
                    throw e11;
                }
            } catch (IllegalAccessException e12) {
                throw e12;
            }
        } catch (Throwable th2) {
            releaseArguments(args, hasVarArgs);
            throw th2;
        }
    }

    private void checkArgs(Object[] args) {
        for (Object argument : args) {
            if (argument == invalid) {
                throw new IllegalArgumentException("argument type mismatch");
            }
        }
    }

    private void releaseArguments(Object[] args, boolean hasVarArgs) {
        if (hasVarArgs && args.length > 0 && (args[args.length - 1] instanceof Object[])) {
            Object[] varArgs = (Object[]) args[args.length - 1];
            for (Object object : varArgs) {
                if (object instanceof V8Value) {
                    ((V8Value) object).release();
                }
            }
        }
        for (Object arg : args) {
            if (arg instanceof V8Value) {
                ((V8Value) arg).release();
            }
        }
    }

    private Object[] getArgs(V8Object receiver, MethodDescriptor methodDescriptor, V8Array parameters, boolean hasVarArgs) {
        int numberOfParameters = methodDescriptor.method.getParameterTypes().length;
        int varArgIndex = hasVarArgs ? numberOfParameters - 1 : numberOfParameters;
        Object[] args = setDefaultValues(new Object[numberOfParameters], methodDescriptor.method.getParameterTypes(), receiver, methodDescriptor.includeReceiver);
        List<Object> varArgs = new ArrayList<>();
        populateParamters(parameters, varArgIndex, args, varArgs, methodDescriptor.includeReceiver);
        if (hasVarArgs) {
            Object varArgContainer = getVarArgContainer(methodDescriptor.method.getParameterTypes(), varArgs.size());
            System.arraycopy(varArgs.toArray(), 0, varArgContainer, 0, varArgs.size());
            args[varArgIndex] = varArgContainer;
        }
        return args;
    }

    private Object getVarArgContainer(Class<?>[] parameterTypes, int size) {
        Class<?> clazz = parameterTypes[parameterTypes.length - 1];
        if (clazz.isArray()) {
            clazz = clazz.getComponentType();
        }
        Object result = Array.newInstance(clazz, size);
        return result;
    }

    private void populateParamters(V8Array parameters, int varArgIndex, Object[] args, List<Object> varArgs, boolean includeReceiver) {
        int start = 0;
        if (includeReceiver) {
            start = 1;
        }
        for (int i10 = start; i10 < parameters.length() + start; i10++) {
            if (i10 >= varArgIndex) {
                varArgs.add(getArrayItem(parameters, i10 - start));
            } else {
                args[i10] = getArrayItem(parameters, i10 - start);
            }
        }
    }

    private Object[] setDefaultValues(Object[] parameters, Class<?>[] parameterTypes, V8Object receiver, boolean includeReceiver) {
        int start = 0;
        if (includeReceiver) {
            start = 1;
            parameters[0] = receiver;
        }
        for (int i10 = start; i10 < parameters.length; i10++) {
            parameters[i10] = getDefaultValue(parameterTypes[i10]);
        }
        return parameters;
    }

    private Object getArrayItem(V8Array array, int index) {
        try {
            int type = array.getType(index);
            switch (type) {
                case 1:
                    return Integer.valueOf(array.getInteger(index));
                case 2:
                    return Double.valueOf(array.getDouble(index));
                case 3:
                    return Boolean.valueOf(array.getBoolean(index));
                case 4:
                    return array.getString(index);
                case 5:
                case 8:
                    return array.getArray(index);
                case 6:
                    return array.getObject(index);
                case 7:
                    return array.getObject(index);
                case 10:
                    return array.get(index);
                case 99:
                    return getUndefined();
                default:
                    return null;
            }
        } catch (V8ResultUndefined e10) {
            return null;
        }
    }

    public void createNodeRuntime(String fileName) {
        _startNodeJS(this.v8RuntimePtr, fileName);
    }

    public boolean pumpMessageLoop() {
        return _pumpMessageLoop(this.v8RuntimePtr);
    }

    public boolean isRunning() {
        return _isRunning(this.v8RuntimePtr);
    }

    public long initNewV8Object(long v8RuntimePtr) {
        return _initNewV8Object(v8RuntimePtr);
    }

    public void acquireLock(long v8RuntimePtr) {
        _acquireLock(v8RuntimePtr);
    }

    public void releaseLock(long v8RuntimePtr) {
        _releaseLock(v8RuntimePtr);
    }

    protected void lowMemoryNotification(long v8RuntimePtr) {
        _lowMemoryNotification(v8RuntimePtr);
    }

    protected void createTwin(long v8RuntimePtr, long objectHandle, long twinHandle) {
        _createTwin(v8RuntimePtr, objectHandle, twinHandle);
    }

    protected int executeIntegerScript(long v8RuntimePtr, String script, String scriptName, int lineNumber) {
        return _executeIntegerScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    protected double executeDoubleScript(long v8RuntimePtr, String script, String scriptName, int lineNumber) {
        return _executeDoubleScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    protected String executeStringScript(long v8RuntimePtr, String script, String scriptName, int lineNumber) {
        return _executeStringScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    protected boolean executeBooleanScript(long v8RuntimePtr, String script, String scriptName, int lineNumber) {
        return _executeBooleanScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    protected Object executeScript(long v8RuntimePtr, int expectedType, String script, String scriptName, int lineNumber) {
        return _executeScript(v8RuntimePtr, expectedType, script, scriptName, lineNumber);
    }

    protected void executeVoidScript(long v8RuntimePtr, String script, String scriptName, int lineNumber) {
        _executeVoidScript(v8RuntimePtr, script, scriptName, lineNumber);
    }

    public void setWeak(long v8RuntimePtr, long objectHandle) {
        _setWeak(v8RuntimePtr, objectHandle);
    }

    public boolean isWeak(long v8RuntimePtr, long objectHandle) {
        return _isWeak(v8RuntimePtr, objectHandle);
    }

    public void release(long v8RuntimePtr, long objectHandle) {
        _release(v8RuntimePtr, objectHandle);
    }

    public boolean contains(long v8RuntimePtr, long objectHandle, String key) {
        return _contains(v8RuntimePtr, objectHandle, key);
    }

    public String[] getKeys(long v8RuntimePtr, long objectHandle) {
        return _getKeys(v8RuntimePtr, objectHandle);
    }

    public int getInteger(long v8RuntimePtr, long objectHandle, String key) {
        return _getInteger(v8RuntimePtr, objectHandle, key);
    }

    public boolean getBoolean(long v8RuntimePtr, long objectHandle, String key) {
        return _getBoolean(v8RuntimePtr, objectHandle, key);
    }

    public double getDouble(long v8RuntimePtr, long objectHandle, String key) {
        return _getDouble(v8RuntimePtr, objectHandle, key);
    }

    public String getString(long v8RuntimePtr, long objectHandle, String key) {
        return _getString(v8RuntimePtr, objectHandle, key);
    }

    public Object get(long v8RuntimePtr, int expectedType, long objectHandle, String key) {
        return _get(v8RuntimePtr, expectedType, objectHandle, key);
    }

    public int executeIntegerFunction(long v8RuntimePtr, long objectHandle, String name, long parametersHandle) {
        return _executeIntegerFunction(v8RuntimePtr, objectHandle, name, parametersHandle);
    }

    public double executeDoubleFunction(long v8RuntimePtr, long objectHandle, String name, long parametersHandle) {
        return _executeDoubleFunction(v8RuntimePtr, objectHandle, name, parametersHandle);
    }

    public String executeStringFunction(long v8RuntimePtr, long handle, String name, long parametersHandle) {
        return _executeStringFunction(v8RuntimePtr, handle, name, parametersHandle);
    }

    public boolean executeBooleanFunction(long v8RuntimePtr, long handle, String name, long parametersHandle) {
        return _executeBooleanFunction(v8RuntimePtr, handle, name, parametersHandle);
    }

    public Object executeFunction(long v8RuntimePtr, int expectedType, long objectHandle, String name, long parametersHandle) {
        return _executeFunction(v8RuntimePtr, expectedType, objectHandle, name, parametersHandle);
    }

    public Object executeFunction(long v8RuntimePtr, long receiverHandle, long functionHandle, long parametersHandle) {
        return _executeFunction(v8RuntimePtr, receiverHandle, functionHandle, parametersHandle);
    }

    public void executeVoidFunction(long v8RuntimePtr, long objectHandle, String name, long parametersHandle) {
        _executeVoidFunction(v8RuntimePtr, objectHandle, name, parametersHandle);
    }

    public boolean equals(long v8RuntimePtr, long objectHandle, long that) {
        return _equals(v8RuntimePtr, objectHandle, that);
    }

    public String toString(long v8RuntimePtr, long objectHandle) {
        return _toString(v8RuntimePtr, objectHandle);
    }

    public boolean strictEquals(long v8RuntimePtr, long objectHandle, long that) {
        return _strictEquals(v8RuntimePtr, objectHandle, that);
    }

    protected boolean sameValue(long v8RuntimePtr, long objectHandle, long that) {
        return _sameValue(v8RuntimePtr, objectHandle, that);
    }

    public int identityHash(long v8RuntimePtr, long objectHandle) {
        return _identityHash(v8RuntimePtr, objectHandle);
    }

    public void add(long v8RuntimePtr, long objectHandle, String key, int value) {
        _add(v8RuntimePtr, objectHandle, key, value);
    }

    public void addObject(long v8RuntimePtr, long objectHandle, String key, long value) {
        _addObject(v8RuntimePtr, objectHandle, key, value);
    }

    public void add(long v8RuntimePtr, long objectHandle, String key, boolean value) {
        _add(v8RuntimePtr, objectHandle, key, value);
    }

    public void add(long v8RuntimePtr, long objectHandle, String key, double value) {
        _add(v8RuntimePtr, objectHandle, key, value);
    }

    public void add(long v8RuntimePtr, long objectHandle, String key, String value) {
        _add(v8RuntimePtr, objectHandle, key, value);
    }

    public void addUndefined(long v8RuntimePtr, long objectHandle, String key) {
        _addUndefined(v8RuntimePtr, objectHandle, key);
    }

    public void addNull(long v8RuntimePtr, long objectHandle, String key) {
        _addNull(v8RuntimePtr, objectHandle, key);
    }

    protected long registerJavaMethod(long v8RuntimePtr, long objectHandle, String functionName, boolean voidMethod) {
        return _registerJavaMethod(v8RuntimePtr, objectHandle, functionName, voidMethod);
    }

    public long initNewV8ArrayBuffer(long v8RuntimePtr, ByteBuffer buffer, int capacity) {
        return _initNewV8ArrayBuffer(v8RuntimePtr, buffer, capacity);
    }

    public long initNewV8ArrayBuffer(long v8RuntimePtr, int capacity) {
        return _initNewV8ArrayBuffer(v8RuntimePtr, capacity);
    }

    public long initNewV8Int32Array(long runtimePtr, long bufferHandle, int offset, int size) {
        return _initNewV8Int32Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8Float32Array(long runtimePtr, long bufferHandle, int offset, int size) {
        return _initNewV8Float32Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8Float64Array(long runtimePtr, long bufferHandle, int offset, int size) {
        return _initNewV8Float64Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8UInt32Array(long runtimePtr, long bufferHandle, int offset, int size) {
        return _initNewV8UInt32Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8UInt16Array(long runtimePtr, long bufferHandle, int offset, int size) {
        return _initNewV8UInt16Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8Int16Array(long runtimePtr, long bufferHandle, int offset, int size) {
        return _initNewV8Int16Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8UInt8Array(long runtimePtr, long bufferHandle, int offset, int size) {
        return _initNewV8UInt8Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8Int8Array(long runtimePtr, long bufferHandle, int offset, int size) {
        return _initNewV8Int8Array(runtimePtr, bufferHandle, offset, size);
    }

    public long initNewV8UInt8ClampedArray(long runtimePtr, long bufferHandle, int offset, int size) {
        return _initNewV8UInt8ClampedArray(runtimePtr, bufferHandle, offset, size);
    }

    public ByteBuffer createV8ArrayBufferBackingStore(long v8RuntimePtr, long objectHandle, int capacity) {
        return _createV8ArrayBufferBackingStore(v8RuntimePtr, objectHandle, capacity);
    }

    public long initNewV8Array(long v8RuntimePtr) {
        return _initNewV8Array(v8RuntimePtr);
    }

    public long[] initNewV8Function(long v8RuntimePtr) {
        checkThread();
        return _initNewV8Function(v8RuntimePtr);
    }

    public int arrayGetSize(long v8RuntimePtr, long arrayHandle) {
        return _arrayGetSize(v8RuntimePtr, arrayHandle);
    }

    public int arrayGetInteger(long v8RuntimePtr, long arrayHandle, int index) {
        return _arrayGetInteger(v8RuntimePtr, arrayHandle, index);
    }

    public boolean arrayGetBoolean(long v8RuntimePtr, long arrayHandle, int index) {
        return _arrayGetBoolean(v8RuntimePtr, arrayHandle, index);
    }

    public byte arrayGetByte(long v8RuntimePtr, long arrayHandle, int index) {
        return _arrayGetByte(v8RuntimePtr, arrayHandle, index);
    }

    public double arrayGetDouble(long v8RuntimePtr, long arrayHandle, int index) {
        return _arrayGetDouble(v8RuntimePtr, arrayHandle, index);
    }

    public String arrayGetString(long v8RuntimePtr, long arrayHandle, int index) {
        return _arrayGetString(v8RuntimePtr, arrayHandle, index);
    }

    public Object arrayGet(long v8RuntimePtr, int expectedType, long arrayHandle, int index) {
        return _arrayGet(v8RuntimePtr, expectedType, arrayHandle, index);
    }

    public void addArrayIntItem(long v8RuntimePtr, long arrayHandle, int value) {
        _addArrayIntItem(v8RuntimePtr, arrayHandle, value);
    }

    public void addArrayBooleanItem(long v8RuntimePtr, long arrayHandle, boolean value) {
        _addArrayBooleanItem(v8RuntimePtr, arrayHandle, value);
    }

    public void addArrayDoubleItem(long v8RuntimePtr, long arrayHandle, double value) {
        _addArrayDoubleItem(v8RuntimePtr, arrayHandle, value);
    }

    public void addArrayStringItem(long v8RuntimePtr, long arrayHandle, String value) {
        _addArrayStringItem(v8RuntimePtr, arrayHandle, value);
    }

    public void addArrayObjectItem(long v8RuntimePtr, long arrayHandle, long value) {
        _addArrayObjectItem(v8RuntimePtr, arrayHandle, value);
    }

    public void addArrayUndefinedItem(long v8RuntimePtr, long arrayHandle) {
        _addArrayUndefinedItem(v8RuntimePtr, arrayHandle);
    }

    public void addArrayNullItem(long v8RuntimePtr, long arrayHandle) {
        _addArrayNullItem(v8RuntimePtr, arrayHandle);
    }

    public int getType(long v8RuntimePtr, long objectHandle) {
        return _getType(v8RuntimePtr, objectHandle);
    }

    public int getType(long v8RuntimePtr, long objectHandle, String key) {
        return _getType(v8RuntimePtr, objectHandle, key);
    }

    public int getType(long v8RuntimePtr, long objectHandle, int index) {
        return _getType(v8RuntimePtr, objectHandle, index);
    }

    public int getArrayType(long v8RuntimePtr, long objectHandle) {
        return _getArrayType(v8RuntimePtr, objectHandle);
    }

    public int getType(long v8RuntimePtr, long objectHandle, int index, int length) {
        return _getType(v8RuntimePtr, objectHandle, index, length);
    }

    public void setPrototype(long v8RuntimePtr, long objectHandle, long prototypeHandle) {
        _setPrototype(v8RuntimePtr, objectHandle, prototypeHandle);
    }

    public int[] arrayGetIntegers(long v8RuntimePtr, long objectHandle, int index, int length) {
        return _arrayGetIntegers(v8RuntimePtr, objectHandle, index, length);
    }

    public double[] arrayGetDoubles(long v8RuntimePtr, long objectHandle, int index, int length) {
        return _arrayGetDoubles(v8RuntimePtr, objectHandle, index, length);
    }

    public boolean[] arrayGetBooleans(long v8RuntimePtr, long objectHandle, int index, int length) {
        return _arrayGetBooleans(v8RuntimePtr, objectHandle, index, length);
    }

    public byte[] arrayGetBytes(long v8RuntimePtr, long objectHandle, int index, int length) {
        return _arrayGetBytes(v8RuntimePtr, objectHandle, index, length);
    }

    public String[] arrayGetStrings(long v8RuntimePtr, long objectHandle, int index, int length) {
        return _arrayGetStrings(v8RuntimePtr, objectHandle, index, length);
    }

    public int arrayGetIntegers(long v8RuntimePtr, long objectHandle, int index, int length, int[] resultArray) {
        return _arrayGetIntegers(v8RuntimePtr, objectHandle, index, length, resultArray);
    }

    public int arrayGetDoubles(long v8RuntimePtr, long objectHandle, int index, int length, double[] resultArray) {
        return _arrayGetDoubles(v8RuntimePtr, objectHandle, index, length, resultArray);
    }

    public int arrayGetBooleans(long v8RuntimePtr, long objectHandle, int index, int length, boolean[] resultArray) {
        return _arrayGetBooleans(v8RuntimePtr, objectHandle, index, length, resultArray);
    }

    public int arrayGetBytes(long v8RuntimePtr, long objectHandle, int index, int length, byte[] resultArray) {
        return _arrayGetBytes(v8RuntimePtr, objectHandle, index, length, resultArray);
    }

    public int arrayGetStrings(long v8RuntimePtr, long objectHandle, int index, int length, String[] resultArray) {
        return _arrayGetStrings(v8RuntimePtr, objectHandle, index, length, resultArray);
    }

    protected void terminateExecution(long v8RuntimePtr) {
        _terminateExecution(v8RuntimePtr);
    }

    protected void releaseMethodDescriptor(long v8RuntimePtr, long methodDescriptor) {
        _releaseMethodDescriptor(v8RuntimePtr, methodDescriptor);
    }

    public static boolean isNodeCompatible() {
        if (!nativeLibraryLoaded) {
            synchronized (lock) {
                if (!nativeLibraryLoaded) {
                    load(null);
                }
            }
        }
        return _isNodeCompatible();
    }

    public void addObjRef(V8Value reference) {
        this.objectReferences++;
        if (!this.referenceHandlers.isEmpty()) {
            notifyReferenceCreated(reference);
        }
    }

    public void releaseObjRef(V8Value reference) {
        if (!this.referenceHandlers.isEmpty()) {
            notifyReferenceDisposed(reference);
        }
        this.objectReferences--;
    }
}
