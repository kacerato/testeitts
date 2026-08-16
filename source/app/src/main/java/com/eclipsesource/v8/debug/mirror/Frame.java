package com.eclipsesource.v8.debug.mirror;

import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Object;

public class Frame extends Mirror {
    private static final String SOURCE_TEXT = "sourceText";
    private static final String FUNC = "func";
    private static final String COLUMN = "column";
    private static final String LINE = "line";
    private static final String POSITION = "position";
    private static final String NAME = "name";
    private static final String SCRIPT = "script";
    private static final String SCOPE = "scope";
    private static final String ARGUMENT_VALUE = "argumentValue";
    private static final String ARGUMENT_NAME = "argumentName";
    private static final String LOCAL_COUNT = "localCount";
    private static final String ARGUMENT_COUNT = "argumentCount";
    private static final String SCOPE_COUNT = "scopeCount";
    private static final String LOCAL_NAME = "localName";
    private static final String LOCAL_VALUE = "localValue";
    private static final String SOURCE_LOCATION = "sourceLocation";

    public Frame(V8Object v8Object) {
        super(v8Object);
    }

    public int getScopeCount() {
        return this.v8Object.executeIntegerFunction(SCOPE_COUNT, null);
    }

    public SourceLocation getSourceLocation() {
        String scriptName;
        V8Object sourceLocation = this.v8Object.executeObjectFunction(SOURCE_LOCATION, null);
        FunctionMirror function = getFunction();
        String functionScriptName = function.getScriptName();
        try {
            String scriptName2 = null;
            V8Object scriptObject = (V8Object) sourceLocation.get(SCRIPT);
            if (scriptObject != null) {
                scriptName2 = scriptObject.getString("name");
                scriptObject.release();
            }
            if (scriptName2 == null && functionScriptName != null) {
                scriptName = functionScriptName;
            } else {
                scriptName = "undefined";
            }
            SourceLocation sourceLocation2 = new SourceLocation(scriptName, sourceLocation.getInteger(POSITION), sourceLocation.getInteger(LINE), sourceLocation.getInteger(COLUMN), sourceLocation.getString(SOURCE_TEXT));
            function.release();
            sourceLocation.release();
            return sourceLocation2;
        } catch (Throwable th2) {
            function.release();
            sourceLocation.release();
            throw th2;
        }
    }

    public int getArgumentCount() {
        return this.v8Object.executeIntegerFunction(ARGUMENT_COUNT, null);
    }

    public String getArgumentName(int index) {
        V8Array parameters = new V8Array(this.v8Object.getRuntime());
        parameters.push(index);
        try {
            String executeStringFunction = this.v8Object.executeStringFunction(ARGUMENT_NAME, parameters);
            parameters.release();
            return executeStringFunction;
        } catch (Throwable th2) {
            parameters.release();
            throw th2;
        }
    }

    public ValueMirror getArgumentValue(int index) {
        V8Array parameters = new V8Array(this.v8Object.getRuntime());
        parameters.push(index);
        V8Object result = null;
        try {
            V8Object result2 = this.v8Object.executeObjectFunction(ARGUMENT_VALUE, parameters);
            if (!isValue(result2)) {
                throw new IllegalStateException("Argument value is not a ValueMirror");
            }
            ValueMirror valueMirror = new ValueMirror(result2);
            parameters.release();
            if (result2 != null) {
                result2.release();
            }
            return valueMirror;
        } catch (Throwable th2) {
            parameters.release();
            if (0 != 0) {
                result.release();
            }
            throw th2;
        }
    }

    public ValueMirror getLocalValue(int index) {
        V8Array parameters = new V8Array(this.v8Object.getRuntime());
        parameters.push(index);
        V8Object result = null;
        try {
            V8Object result2 = this.v8Object.executeObjectFunction(LOCAL_VALUE, parameters);
            if (!isValue(result2)) {
                throw new IllegalStateException("Local value is not a ValueMirror");
            }
            ValueMirror createMirror = createMirror(result2);
            parameters.release();
            if (result2 != null) {
                result2.release();
            }
            return createMirror;
        } catch (Throwable th2) {
            parameters.release();
            if (0 != 0) {
                result.release();
            }
            throw th2;
        }
    }

    public int getLocalCount() {
        return this.v8Object.executeIntegerFunction(LOCAL_COUNT, null);
    }

    public String getLocalName(int index) {
        V8Array parameters = new V8Array(this.v8Object.getRuntime());
        parameters.push(index);
        try {
            String executeStringFunction = this.v8Object.executeStringFunction(LOCAL_NAME, parameters);
            parameters.release();
            return executeStringFunction;
        } catch (Throwable th2) {
            parameters.release();
            throw th2;
        }
    }

    public Scope getScope(int index) {
        V8Array parameters = new V8Array(this.v8Object.getRuntime());
        parameters.push(index);
        V8Object scope = null;
        try {
            scope = this.v8Object.executeObjectFunction(SCOPE, parameters);
            Scope scope2 = new Scope(scope);
            parameters.release();
            if (scope != null) {
                scope.release();
            }
            return scope2;
        } catch (Throwable th2) {
            parameters.release();
            if (scope != null) {
                scope.release();
            }
            throw th2;
        }
    }

    public FunctionMirror getFunction() {
        V8Object function = null;
        try {
            function = this.v8Object.executeObjectFunction(FUNC, null);
            FunctionMirror functionMirror = new FunctionMirror(function);
            if (function != null) {
                function.release();
            }
            return functionMirror;
        } catch (Throwable th2) {
            if (function != null) {
                function.release();
            }
            throw th2;
        }
    }

    @Override
    public boolean isFrame() {
        return true;
    }
}
