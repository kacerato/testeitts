package com.eclipsesource.v8.debug;

import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Function;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8Value;
import java.util.ArrayList;
import java.util.List;

public class DebugHandler implements Releasable {
    public static String DEBUG_OBJECT_NAME = "__j2v8_Debug";
    private static final String DEBUG_BREAK_HANDLER = "__j2v8_debug_handler";
    private static final String SET_SCRIPT_BREAK_POINT_BY_NAME = "setScriptBreakPointByName";
    private static final String SET_BREAK_POINT = "setBreakPoint";
    private static final String SET_LISTENER = "setListener";
    private static final String V8_DEBUG_OBJECT = "Debug";
    private static final String DISABLE_SCRIPT_BREAK_POINT = "disableScriptBreakPoint";
    private static final String ENABLE_SCRIPT_BREAK_POINT = "enableScriptBreakPoint";
    private static final String CLEAR_BREAK_POINT = "clearBreakPoint";
    private static final String DISABLE_ALL_BREAK_POINTS = "disableAllBreakPoints";
    private static final String SCRIPT_BREAK_POINTS = "scriptBreakPoints";
    private static final String FIND_SCRIPT_BREAK_POINT = "findScriptBreakPoint";
    private static final String NUMBER = "number";
    private static final String CHANGE_BREAK_POINT_CONDITION = "changeBreakPointCondition";
    private V8 runtime;
    private V8Object debugObject;
    private List<BreakHandler> breakHandlers = new ArrayList();

    public enum DebugEvent {
        Undefined(0),
        Break(1),
        Exception(2),
        NewFunction(3),
        BeforeCompile(4),
        AfterCompile(5),
        CompileError(6),
        PromiseError(7),
        AsyncTaskEvent(8);

        int index;

        DebugEvent(int index) {
            this.index = index;
        }
    }

    public DebugHandler(V8 runtime) {
        this.runtime = runtime;
        setupDebugObject(runtime);
        setupBreakpointHandler();
    }

    public void addBreakHandler(BreakHandler handler) {
        this.runtime.getLocker().checkThread();
        this.breakHandlers.add(handler);
    }

    public void removeBreakHandler(BreakHandler handler) {
        this.runtime.getLocker().checkThread();
        this.breakHandlers.remove(handler);
    }

    public int setBreakpoint(V8Function function) {
        V8Array parameters = new V8Array(this.runtime);
        parameters.push((V8Value) function);
        try {
            int executeIntegerFunction = this.debugObject.executeIntegerFunction(SET_BREAK_POINT, parameters);
            parameters.release();
            return executeIntegerFunction;
        } catch (Throwable th2) {
            parameters.release();
            throw th2;
        }
    }

    public int setScriptBreakpoint(String scriptID, int lineNumber) {
        V8Array parameters = new V8Array(this.runtime);
        parameters.push(scriptID);
        parameters.push(lineNumber);
        try {
            int executeIntegerFunction = this.debugObject.executeIntegerFunction(SET_SCRIPT_BREAK_POINT_BY_NAME, parameters);
            parameters.release();
            return executeIntegerFunction;
        } catch (Throwable th2) {
            parameters.release();
            throw th2;
        }
    }

    public void enableScriptBreakPoint(int breakpointID) {
        V8Array parameters = new V8Array(this.runtime);
        parameters.push(breakpointID);
        try {
            this.debugObject.executeVoidFunction(ENABLE_SCRIPT_BREAK_POINT, parameters);
        } finally {
            parameters.release();
        }
    }

    public void disableScriptBreakPoint(int breakpointID) {
        V8Array parameters = new V8Array(this.runtime);
        parameters.push(breakpointID);
        try {
            this.debugObject.executeVoidFunction(DISABLE_SCRIPT_BREAK_POINT, parameters);
        } finally {
            parameters.release();
        }
    }

    public void clearBreakPoint(int breakpointID) {
        V8Array parameters = new V8Array(this.runtime);
        parameters.push(breakpointID);
        try {
            this.debugObject.executeVoidFunction(CLEAR_BREAK_POINT, parameters);
        } finally {
            parameters.release();
        }
    }

    public void disableAllBreakPoints() {
        this.debugObject.executeVoidFunction(DISABLE_ALL_BREAK_POINTS, null);
    }

    public int getScriptBreakPointCount() {
        V8Array breakPoints = this.debugObject.executeArrayFunction(SCRIPT_BREAK_POINTS, null);
        try {
            return breakPoints.length();
        } finally {
            breakPoints.release();
        }
    }

    public int[] getScriptBreakPointIDs() {
        V8Array breakPoints = this.debugObject.executeArrayFunction(SCRIPT_BREAK_POINTS, null);
        try {
            int[] result = new int[breakPoints.length()];
            for (int i10 = 0; i10 < breakPoints.length(); i10++) {
                V8Object breakPoint = breakPoints.getObject(i10);
                try {
                    result[i10] = breakPoint.executeIntegerFunction("number", null);
                    breakPoint.release();
                } finally {
                }
            }
            return result;
        } finally {
            breakPoints.release();
        }
    }

    public ScriptBreakPoint getScriptBreakPoint(int breakPointID) {
        V8Array parameters = new V8Array(this.runtime);
        parameters.push(breakPointID);
        parameters.push(false);
        V8Object scriptBreakPoint = null;
        try {
            scriptBreakPoint = this.debugObject.executeObjectFunction(FIND_SCRIPT_BREAK_POINT, parameters);
            ScriptBreakPoint scriptBreakPoint2 = new ScriptBreakPoint(scriptBreakPoint);
            parameters.release();
            if (scriptBreakPoint != null) {
                scriptBreakPoint.release();
            }
            return scriptBreakPoint2;
        } catch (Throwable th2) {
            parameters.release();
            if (scriptBreakPoint != null) {
                scriptBreakPoint.release();
            }
            throw th2;
        }
    }

    public void changeBreakPointCondition(int breakpointID, String condition) {
        V8Array parameters = new V8Array(this.runtime);
        parameters.push(breakpointID);
        parameters.push(condition);
        try {
            this.debugObject.executeVoidFunction(CHANGE_BREAK_POINT_CONDITION, parameters);
            parameters.release();
        } catch (Throwable th2) {
            parameters.release();
            throw th2;
        }
    }

    @Override
    public void release() {
        this.debugObject.release();
    }

    private void setupDebugObject(V8 runtime) {
        V8Object outerDebug = runtime.getObject(DEBUG_OBJECT_NAME);
        try {
            this.debugObject = outerDebug.getObject(V8_DEBUG_OBJECT);
        } finally {
            outerDebug.release();
        }
    }

    private void setupBreakpointHandler() {
        BreakpointHandler handler = new BreakpointHandler();
        this.debugObject.registerJavaMethod(handler, DEBUG_BREAK_HANDLER);
        V8Function debugHandler = null;
        V8Array parameters = null;
        try {
            debugHandler = (V8Function) this.debugObject.getObject(DEBUG_BREAK_HANDLER);
            parameters = new V8Array(this.runtime).push((V8Value) debugHandler);
            this.debugObject.executeFunction(SET_LISTENER, parameters);
            if (debugHandler != null && !debugHandler.isReleased()) {
                debugHandler.release();
            }
            if (parameters != null && !parameters.isReleased()) {
                parameters.release();
            }
        } catch (Throwable th2) {
            if (debugHandler != null && !debugHandler.isReleased()) {
                debugHandler.release();
            }
            if (parameters != null && !parameters.isReleased()) {
                parameters.release();
            }
            throw th2;
        }
    }

    public class BreakpointHandler implements JavaVoidCallback {
        private BreakpointHandler() {
        }

        @Override
        public void invoke(V8Object receiver, V8Array parameters) {
            if (parameters == null || parameters.isUndefined()) {
                return;
            }
            int event = parameters.getInteger(0);
            for (BreakHandler handler : DebugHandler.this.breakHandlers) {
                invokeHandler(parameters, event, handler);
            }
        }

        private void invokeHandler(V8Array parameters, int event, BreakHandler handler) {
            V8Object execState = null;
            V8Object eventData = null;
            V8Object data = null;
            ExecutionState state = null;
            EventData typedEventData = null;
            try {
                execState = parameters.getObject(1);
                eventData = parameters.getObject(2);
                data = parameters.getObject(3);
                state = new ExecutionState(execState);
                DebugEvent type = DebugEvent.values()[event];
                typedEventData = createDebugEvent(type, eventData);
                handler.onBreak(type, state, typedEventData, data);
                safeRelease(execState);
                safeRelease(eventData);
                safeRelease(data);
                safeRelease(state);
                safeRelease(typedEventData);
            } catch (Throwable th2) {
                safeRelease(execState);
                safeRelease(eventData);
                safeRelease(data);
                safeRelease(state);
                safeRelease(typedEventData);
                throw th2;
            }
        }

        private EventData createDebugEvent(DebugEvent type, V8Object eventData) {
            switch (type) {
                case Break:
                    return new BreakEvent(eventData);
                case BeforeCompile:
                    return new CompileEvent(eventData);
                case AfterCompile:
                    return new CompileEvent(eventData);
                case Exception:
                    return new ExceptionEvent(eventData);
                default:
                    return new EventData(eventData);
            }
        }

        private void safeRelease(Releasable object) {
            if (object != null) {
                object.release();
            }
        }
    }
}
