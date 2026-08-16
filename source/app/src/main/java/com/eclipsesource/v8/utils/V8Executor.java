package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Object;
import java.util.LinkedList;

public class V8Executor extends Thread {
    private final String script;
    private V8 runtime;
    private String result;
    private volatile boolean terminated;
    private volatile boolean shuttingDown;
    private volatile boolean forceTerminating;
    private Exception exception;
    private LinkedList<String[]> messageQueue;
    private boolean longRunning;
    private String messageHandler;

    public V8Executor(String script, boolean longRunning, String messageHandler) {
        this.terminated = false;
        this.shuttingDown = false;
        this.forceTerminating = false;
        this.exception = null;
        this.messageQueue = new LinkedList<>();
        this.script = script;
        this.longRunning = longRunning;
        this.messageHandler = messageHandler;
    }

    public V8Executor(String script) {
        this(script, false, null);
    }

    protected void setup(V8 runtime) {
    }

    public String getResult() {
        return this.result;
    }

    public void postMessage(String... message) {
        synchronized (this) {
            this.messageQueue.add(message);
            notify();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0106, code lost:
    
        if (r5.messageQueue.isEmpty() != false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0109, code lost:
    
        r0 = r5.messageQueue.remove(0);
        r0 = new com.eclipsesource.v8.V8Array(r5.runtime);
        r0 = new com.eclipsesource.v8.V8Array(r5.runtime);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012d, code lost:
    
        r0 = r0.length;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013c, code lost:
    
        if (r11 >= r0) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x013f, code lost:
    
        r0 = r0[r11];
        r0.push(r0);
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0153, code lost:
    
        r0.push((com.eclipsesource.v8.V8Value) r0);
        r5.runtime.executeVoidFunction(r5.messageHandler, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0166, code lost:
    
        r0.release();
        r0.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0170, code lost:
    
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0173, code lost:
    
        r0.release();
        r0.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x017c, code lost:
    
        throw r13;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        synchronized (this) {
            this.runtime = V8.createV8Runtime();
            this.runtime.registerJavaMethod(new ExecutorTermination(), "__j2v8__checkThreadTerminate");
            setup(this.runtime);
        }
        try {
            try {
                if (!this.forceTerminating) {
                    Object scriptResult = this.runtime.executeScript("__j2v8__checkThreadTerminate();\n" + this.script, getName(), -1);
                    if (scriptResult != null) {
                        this.result = scriptResult.toString();
                    }
                    if (scriptResult instanceof Releasable) {
                        ((Releasable) scriptResult).release();
                    }
                    if (scriptResult instanceof Releasable) {
                        ((Releasable) scriptResult).release();
                    }
                }
                while (!this.forceTerminating && this.longRunning) {
                    synchronized (this) {
                        if (this.messageQueue.isEmpty() && !this.shuttingDown) {
                            wait();
                        }
                        if ((!this.messageQueue.isEmpty() || !this.shuttingDown) && !this.forceTerminating) {
                        }
                    }
                    synchronized (this) {
                        if (this.runtime.getLocker().hasLock()) {
                            this.runtime.release();
                            this.runtime = null;
                        }
                        this.terminated = true;
                    }
                    return;
                }
                synchronized (this) {
                    if (this.runtime.getLocker().hasLock()) {
                        this.runtime.release();
                        this.runtime = null;
                    }
                    this.terminated = true;
                }
            } catch (Exception e10) {
                this.exception = e10;
                synchronized (this) {
                    if (this.runtime.getLocker().hasLock()) {
                        this.runtime.release();
                        this.runtime = null;
                    }
                    this.terminated = true;
                }
            }
        } catch (Throwable th2) {
            synchronized (this) {
                if (this.runtime.getLocker().hasLock()) {
                    this.runtime.release();
                    this.runtime = null;
                }
                this.terminated = true;
                throw th2;
            }
        }
    }

    public boolean hasException() {
        return this.exception != null;
    }

    public Exception getException() {
        return this.exception;
    }

    public boolean hasTerminated() {
        return this.terminated;
    }

    public void forceTermination() {
        synchronized (this) {
            this.forceTerminating = true;
            this.shuttingDown = true;
            if (this.runtime != null) {
                this.runtime.terminateExecution();
            }
            notify();
        }
    }

    public void shutdown() {
        synchronized (this) {
            this.shuttingDown = true;
            notify();
        }
    }

    public boolean isShuttingDown() {
        return this.shuttingDown;
    }

    public boolean isTerminating() {
        return this.forceTerminating;
    }

    class ExecutorTermination implements JavaVoidCallback {
        ExecutorTermination() {
        }

        @Override
        public void invoke(V8Object receiver, V8Array parameters) {
            if (V8Executor.this.forceTerminating) {
                throw new RuntimeException("V8Thread Termination");
            }
        }
    }
}
