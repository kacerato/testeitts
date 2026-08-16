package com.eclipsesource.v8;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

public class NodeJS {
    private static final String TMP_JS_EXT = ".js.tmp";
    private static final String NEXT_TICK = "nextTick";
    private static final String PROCESS = "process";
    private static final String GLOBAL = "global";
    private static final String STARTUP_CALLBACK = "__run";
    private static final String STARTUP_SCRIPT = "global.__run(require, exports, module, __filename, __dirname);";
    private static final String STARTUP_SCRIPT_NAME = "startup";
    private static final String VERSIONS = "versions";
    private static final String NODE = "node";
    private String nodeVersion = null;

    private V8 f59463v8;
    private V8Function require;

    public static NodeJS createNodeJS() {
        return createNodeJS(null);
    }

    public String getNodeVersion() {
        if (this.nodeVersion != null) {
            return this.nodeVersion;
        }
        V8Object process = null;
        V8Object versions = null;
        try {
            process = this.f59463v8.getObject(PROCESS);
            versions = process.getObject(VERSIONS);
            this.nodeVersion = versions.getString(NODE);
            safeRelease(process);
            safeRelease(versions);
            return this.nodeVersion;
        } catch (Throwable th2) {
            safeRelease(process);
            safeRelease(versions);
            throw th2;
        }
    }

    public static NodeJS createNodeJS(File file) {
        V8 v82 = V8.createV8Runtime("global");
        NodeJS node = new NodeJS(v82);
        v82.registerJavaMethod(new JavaVoidCallback() {
            @Override
            public void invoke(V8Object receiver, V8Array parameters) {
                V8Function require = (V8Function) parameters.get(0);
                try {
                    NodeJS.this.init(require.twin());
                    require.release();
                } catch (Throwable th2) {
                    require.release();
                    throw th2;
                }
            }
        }, STARTUP_CALLBACK);
        try {
            File startupScript = createTemporaryScriptFile(STARTUP_SCRIPT, STARTUP_SCRIPT_NAME);
            try {
                v82.createNodeRuntime(startupScript.getAbsolutePath());
                startupScript.delete();
                if (file != null) {
                    node.exec(file);
                }
                return node;
            } catch (Throwable th2) {
                startupScript.delete();
                throw th2;
            }
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public V8 getRuntime() {
        return this.f59463v8;
    }

    public boolean handleMessage() {
        this.f59463v8.checkThread();
        return this.f59463v8.pumpMessageLoop();
    }

    public void release() {
        this.f59463v8.checkThread();
        if (!this.require.isReleased()) {
            this.require.release();
        }
        if (!this.f59463v8.isReleased()) {
            this.f59463v8.release();
        }
    }

    public boolean isRunning() {
        this.f59463v8.checkThread();
        return this.f59463v8.isRunning();
    }

    public V8Object require(File file) {
        this.f59463v8.checkThread();
        V8Array requireParams = new V8Array(this.f59463v8);
        try {
            requireParams.push(file.getAbsolutePath());
            V8Object v8Object = (V8Object) this.require.call(null, requireParams);
            requireParams.release();
            return v8Object;
        } catch (Throwable th2) {
            requireParams.release();
            throw th2;
        }
    }

    public void exec(File file) {
        V8Function scriptExecution = createScriptExecutionCallback(file);
        V8Object process = null;
        V8Array parameters = null;
        try {
            process = this.f59463v8.getObject(PROCESS);
            parameters = new V8Array(this.f59463v8);
            parameters.push((V8Value) scriptExecution);
            process.executeObjectFunction(NEXT_TICK, parameters);
            safeRelease(process);
            safeRelease(parameters);
            safeRelease(scriptExecution);
        } catch (Throwable th2) {
            safeRelease(process);
            safeRelease(parameters);
            safeRelease(scriptExecution);
            throw th2;
        }
    }

    private V8Function createScriptExecutionCallback(final File file) {
        V8Function v8Function = new V8Function(this.f59463v8, new JavaCallback() {
            @Override
            public Object invoke(V8Object receiver, V8Array parameters) {
                V8Array requireParams = new V8Array(NodeJS.this.f59463v8);
                try {
                    requireParams.push(file.getAbsolutePath());
                    Object call = NodeJS.this.require.call(null, requireParams);
                    requireParams.release();
                    return call;
                } catch (Throwable th2) {
                    requireParams.release();
                    throw th2;
                }
            }
        });
        return v8Function;
    }

    private void safeRelease(Releasable releasable) {
        if (releasable != null) {
            releasable.release();
        }
    }

    private NodeJS(V8 v82) {
        this.f59463v8 = v82;
    }

    public void init(V8Function require) {
        this.require = require;
    }

    private static File createTemporaryScriptFile(String script, String name) throws IOException {
        File tempFile = File.createTempFile(name, TMP_JS_EXT);
        PrintWriter writer = new PrintWriter(tempFile, "UTF-8");
        try {
            writer.print(script);
            writer.close();
            return tempFile;
        } catch (Throwable th2) {
            writer.close();
            throw th2;
        }
    }
}
