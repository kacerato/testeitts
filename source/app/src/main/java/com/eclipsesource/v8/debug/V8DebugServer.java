package com.eclipsesource.v8.debug;

import Ra.b;
import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Function;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.V8Value;
import java.io.IOException;
import java.io.InputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.LinkedList;
import java.util.List;

public class V8DebugServer {
    private static final String DEBUG_BREAK_HANDLER = "__j2v8_debug_handler";
    private static final String MAKE_BREAK_EVENT = "__j2v8_MakeBreakEvent";
    private static final String MAKE_COMPILE_EVENT = "__j2v8_MakeCompileEvent";
    private static final String SET_LISTENER = "setListener";
    private static final String V8_DEBUG_OBJECT = "Debug";
    private static final String HEADER_TYPE = "Type: ";
    private static final String HEADER_V8_VERSION = "V8-Version: ";
    private static final String HEADER_PROTOCOL_VERSION = "Protocol-Version: ";
    private static final String HEADER_EMBEDDING_HOST = "Embedding-Host: ";
    private static final String V8_VERSION = "4.10.253";
    private static final String J2V8_VERSION = "4.0.0";
    private static final String PROTOCOL_VERSION = "1";
    private static final String PROTOCOL_EOL = "\r\n";
    private static final int PROTOCOL_BUFFER_SIZE = 4096;
    private ServerSocket server;
    private Socket client;
    private V8 runtime;
    private V8Object debugObject;
    private V8Object runningStateDcp;
    private V8Object stoppedStateDcp;
    private boolean waitForConnection;
    public static String DEBUG_OBJECT_NAME = "__j2v8_Debug";
    private static final Charset PROTOCOL_CHARSET = Charset.forName("UTF-8");
    private static final byte[] PROTOCOL_EOL_BYTES = "\r\n".getBytes(PROTOCOL_CHARSET);
    private static final String PROTOCOL_CONTENT_LENGTH_HEADER = "Content-Length:";
    private static final byte[] PROTOCOL_CONTENT_LENGTH_BYTES = PROTOCOL_CONTENT_LENGTH_HEADER.getBytes(PROTOCOL_CHARSET);
    private Object clientLock = new Object();
    private boolean traceCommunication = false;
    private List<String> requests = new LinkedList();

    public static void configureV8ForDebugging() {
        try {
            V8.setFlags("-expose-debug-as=" + DEBUG_OBJECT_NAME);
        } catch (Throwable t10) {
            t10.printStackTrace();
        }
    }

    public V8DebugServer(V8 runtime, int port, boolean waitForConnection) {
        this.runtime = runtime;
        this.waitForConnection = waitForConnection;
        V8Object debugScope = runtime.getObject(DEBUG_OBJECT_NAME);
        if (debugScope == null) {
            System.err.println("Cannot initialize debugger server - global debug object not found.");
            return;
        }
        try {
            this.debugObject = debugScope.getObject(V8_DEBUG_OBJECT);
            debugScope.release();
            runtime.executeVoidScript("(function() {\n " + DEBUG_OBJECT_NAME + ".Debug. " + MAKE_BREAK_EVENT + " = function (break_id,breakpoints_hit) {\n  return new " + DEBUG_OBJECT_NAME + ".BreakEvent(break_id,breakpoints_hit);\n }\n " + DEBUG_OBJECT_NAME + ".Debug. " + MAKE_COMPILE_EVENT + " = function(script,type) {\n  var scripts = " + DEBUG_OBJECT_NAME + ".Debug.scripts()\n  for (var i in scripts) {\n   if (scripts[i].id == script.id()) {\n     return new " + DEBUG_OBJECT_NAME + ".CompileEvent(scripts[i], type);\n   }\n  }\n  return {toJSONProtocol: function() {return ''}}\n }\n})()");
            try {
                this.server = new ServerSocket(port);
            } catch (Exception e10) {
                logError(e10);
            }
        } catch (Throwable th2) {
            debugScope.release();
            throw th2;
        }
    }

    public int getPort() {
        if (this.server == null || !this.server.isBound()) {
            return -1;
        }
        return this.server.getLocalPort();
    }

    public void setTraceCommunication(boolean value) {
        this.traceCommunication = value;
    }

    public void start() {
        if (this.server == null) {
            return;
        }
        boolean waitForConnection = this.waitForConnection;
        Thread clientThread = new Thread(new ClientLoop(), "J2V8 Debugger Server");
        clientThread.setDaemon(true);
        clientThread.start();
        setupEventHandler();
        this.runningStateDcp = this.runtime.executeObjectScript("(function() {return new " + DEBUG_OBJECT_NAME + ".DebugCommandProcessor(null, true)})()");
        if (waitForConnection) {
            synchronized (this.clientLock) {
                while (this.waitForConnection) {
                    try {
                        this.clientLock.wait();
                    } catch (InterruptedException e10) {
                    }
                }
            }
            try {
                processRequests(100L);
            } catch (InterruptedException e11) {
            }
        }
    }

    public void stop() {
        try {
            this.server.close();
            synchronized (this.clientLock) {
                if (this.client != null) {
                    this.client.close();
                    this.client = null;
                }
            }
        } catch (IOException e10) {
            logError(e10);
        }
        if (this.runningStateDcp != null) {
            this.runningStateDcp.release();
            this.runningStateDcp = null;
        }
        if (this.debugObject != null) {
            this.debugObject.release();
            this.debugObject = null;
        }
        if (this.stoppedStateDcp != null) {
            this.stoppedStateDcp.release();
            this.stoppedStateDcp = null;
        }
    }

    private void sendJson(String json) throws IOException {
        sendMessage("", json.replace("\\/", "/"));
    }

    protected void logError(Throwable t10) {
        t10.printStackTrace();
    }

    public void sendMessage(String header, String contents) throws IOException {
        synchronized (this.clientLock) {
            if (!isConnected()) {
                throw new IOException("There is no connected client.");
            }
            byte[] contentBytes = contents.getBytes(PROTOCOL_CHARSET);
            this.client.getOutputStream().write((header + PROTOCOL_CONTENT_LENGTH_HEADER + Integer.toString(contentBytes.length) + "\r\n\r\n").getBytes(PROTOCOL_CHARSET));
            if (contentBytes.length > 0) {
                this.client.getOutputStream().write(contentBytes);
            }
        }
    }

    public boolean isConnected() {
        boolean z10;
        synchronized (this.clientLock) {
            z10 = (this.server == null || this.client == null || !this.client.isConnected()) ? false : true;
        }
        return z10;
    }

    public void processRequests(long timeout) throws InterruptedException {
        String[] reqs;
        if (this.server == null) {
            return;
        }
        long start = System.currentTimeMillis();
        while (true) {
            synchronized (this.requests) {
                reqs = (String[]) this.requests.toArray(new String[this.requests.size()]);
                this.requests.clear();
            }
            for (String req : reqs) {
                try {
                    processRequest(req);
                } catch (Exception e10) {
                    logError(e10);
                }
            }
            if (reqs.length <= 0) {
                if (timeout > 0) {
                    Thread.sleep(10L);
                }
                if (timeout <= 0 || start + timeout <= System.currentTimeMillis()) {
                    return;
                }
            }
        }
    }

    private void processRequest(String message) throws IOException {
        if (this.traceCommunication) {
            System.out.println("Got message: \n" + message.substring(0, Math.min(message.length(), 1000)));
        }
        V8Array params = new V8Array(this.runtime);
        params.push(message);
        V8Object dcp = this.stoppedStateDcp != null ? this.stoppedStateDcp : this.runningStateDcp;
        Object result = dcp.executeFunction("processDebugJSONRequest", params);
        String json = result.toString();
        if (this.stoppedStateDcp == null && json.contains("\"running\":false")) {
            json = json.replace("\"running\":false", "\"running\":true").replace("\"success\":true", "\"success\":false").replace("{\"", "{\"message\":\"Client requested suspension is not supported on J2V8.\",\"");
            dcp.add("running_", true);
        }
        if (this.traceCommunication) {
            System.out.println("Returning response: \n" + json.substring(0, Math.min(json.length(), 1000)));
        }
        sendJson(json);
    }

    private void setupEventHandler() {
        EventHandler handler = new EventHandler();
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

    /* JADX WARN: Finally extract failed */
    public void enterBreakLoop(V8Object execState, V8Object eventData) throws IOException {
        try {
            V8Array params = new V8Array(this.runtime);
            try {
                params.push(false);
                this.stoppedStateDcp = execState.executeObjectFunction("debugCommandProcessor", params);
                params.release();
                int breakId = execState.getInteger("break_id");
                V8Array breakpointsHit = eventData.getArray("break_points_hit_");
                V8Object event = null;
                V8Array params2 = new V8Array(this.runtime);
                try {
                    params2.push(breakId);
                    params2.push((V8Value) breakpointsHit);
                    event = this.debugObject.executeObjectFunction(MAKE_BREAK_EVENT, params2);
                    String json = event.executeStringFunction("toJSONProtocol", null);
                    if (this.traceCommunication) {
                        System.out.println("Sending event (Break):\n" + json);
                    }
                    sendJson(json);
                    params2.release();
                    breakpointsHit.release();
                    if (event != null) {
                        event.release();
                    }
                    while (isConnected() && !this.stoppedStateDcp.executeBooleanFunction("isRunning", null)) {
                        try {
                            processRequests(10L);
                        } catch (InterruptedException e10) {
                        }
                    }
                } catch (Throwable th2) {
                    params2.release();
                    breakpointsHit.release();
                    if (event != null) {
                        event.release();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                params.release();
                throw th3;
            }
        } finally {
            this.stoppedStateDcp.release();
            this.stoppedStateDcp = null;
        }
    }

    public void sendCompileEvent(V8Object eventData) throws IOException {
        if (!isConnected()) {
            return;
        }
        int type = eventData.getInteger("type_");
        V8Object script = eventData.getObject("script_");
        V8Object event = null;
        V8Array params = new V8Array(this.runtime);
        try {
            params.push((V8Value) script);
            params.push(type);
            event = this.debugObject.executeObjectFunction(MAKE_COMPILE_EVENT, params);
            String json = event.executeStringFunction("toJSONProtocol", null);
            if (this.traceCommunication) {
                System.out.println("Sending event (CompileEvent):\n" + json.substring(0, Math.min(json.length(), 1000)));
            }
            if (json.length() > 0) {
                sendJson(json);
            }
            params.release();
            script.release();
            if (event != null) {
                event.release();
            }
        } catch (Throwable th2) {
            params.release();
            script.release();
            if (event != null) {
                event.release();
            }
            throw th2;
        }
    }

    public class EventHandler implements JavaVoidCallback {
        private EventHandler() {
        }

        @Override
        public void invoke(V8Object receiver, V8Array parameters) {
            if (parameters == null || parameters.isUndefined()) {
                return;
            }
            try {
                try {
                    int event = parameters.getInteger(0);
                    V8Object execState = parameters.getObject(1);
                    V8Object eventData = parameters.getObject(2);
                    if (V8DebugServer.this.traceCommunication) {
                        String type = "unknown";
                        switch (event) {
                            case 1:
                                type = b.f22636g;
                                break;
                            case 2:
                                type = "Exception";
                                break;
                            case 3:
                                type = "NewFunction";
                                break;
                            case 4:
                                type = "BeforeCompile";
                                break;
                            case 5:
                                type = "AfterCompile";
                                break;
                            case 6:
                                type = "CompileError";
                                break;
                            case 7:
                                type = "PromiseEvent";
                                break;
                            case 8:
                                type = "AsyncTaskEvent";
                                break;
                        }
                        System.out.println("V8 has emmitted an event of type " + type);
                    }
                    if (!V8DebugServer.this.isConnected()) {
                        safeRelease(execState);
                        safeRelease(eventData);
                        return;
                    }
                    switch (event) {
                        case 1:
                            V8DebugServer.this.enterBreakLoop(execState, eventData);
                            break;
                        case 5:
                        case 6:
                            V8DebugServer.this.sendCompileEvent(eventData);
                            break;
                    }
                    safeRelease(execState);
                    safeRelease(eventData);
                } catch (Exception e10) {
                    V8DebugServer.this.logError(e10);
                    safeRelease(null);
                    safeRelease(null);
                }
            } catch (Throwable th2) {
                safeRelease(null);
                safeRelease(null);
                throw th2;
            }
        }

        private void safeRelease(Releasable object) {
            if (object != null) {
                object.release();
            }
        }
    }

    private class ClientLoop implements Runnable {
        private int from;

        private ClientLoop() {
        }

        @Override
        public void run() {
            while (true) {
                try {
                    Socket socket = V8DebugServer.this.server.accept();
                    socket.setTcpNoDelay(true);
                    synchronized (V8DebugServer.this.clientLock) {
                        V8DebugServer.this.client = socket;
                        V8DebugServer.this.waitForConnection = false;
                        V8DebugServer.this.clientLock.notifyAll();
                    }
                    startHandshake();
                    processClientRequests();
                } catch (Exception e10) {
                    synchronized (V8DebugServer.this.clientLock) {
                        if (V8DebugServer.this.client != null) {
                            try {
                                V8DebugServer.this.client.close();
                            } catch (IOException e11) {
                            }
                            V8DebugServer.this.client = null;
                        }
                        V8DebugServer.this.logError(e10);
                    }
                }
            }
        }

        private void startHandshake() throws IOException {
            V8DebugServer.this.sendMessage(V8DebugServer.HEADER_V8_VERSION + V8DebugServer.V8_VERSION + "\r\n" + V8DebugServer.HEADER_PROTOCOL_VERSION + "1\r\n" + V8DebugServer.HEADER_EMBEDDING_HOST + "j2v8 " + V8DebugServer.J2V8_VERSION + "\r\n" + V8DebugServer.HEADER_TYPE + "connect\r\n", "");
        }

        private void processClientRequests() throws IOException {
            InputStream cIn;
            byte[] EMPTY_ARR = new byte[0];
            byte[] buf = new byte[4096];
            int offset = 0;
            boolean toolInfoSkipped = false;
            byte[] messageBytes = EMPTY_ARR;
            int contentLength = -1;
            synchronized (V8DebugServer.this.clientLock) {
                cIn = V8DebugServer.this.client.getInputStream();
            }
            while (true) {
                int bytesRead = cIn.read(buf, offset, 4096 - offset);
                if (bytesRead > 0) {
                    int bytesRead2 = bytesRead + offset;
                    this.from = 0;
                    do {
                        if (contentLength < 0) {
                            contentLength = readContentLength(buf, bytesRead2);
                            if (contentLength < 0) {
                                break;
                            }
                        }
                        if (!toolInfoSkipped) {
                            toolInfoSkipped = skipToolInfo(buf, bytesRead2);
                            if (!toolInfoSkipped) {
                                break;
                            }
                        }
                        int length = Math.min(contentLength - messageBytes.length, bytesRead2 - this.from);
                        messageBytes = join(messageBytes, buf, this.from, length);
                        this.from += length;
                        if (messageBytes.length == contentLength) {
                            String message = new String(messageBytes, V8DebugServer.PROTOCOL_CHARSET);
                            synchronized (V8DebugServer.this.requests) {
                                V8DebugServer.this.requests.add(message);
                            }
                            contentLength = -1;
                            toolInfoSkipped = false;
                            messageBytes = EMPTY_ARR;
                        }
                    } while (this.from < bytesRead2);
                    if (this.from < bytesRead2) {
                        System.arraycopy(buf, this.from, buf, 0, bytesRead2 - this.from);
                        offset = bytesRead2 - this.from;
                    } else {
                        offset = 0;
                    }
                } else {
                    return;
                }
            }
        }

        private int readContentLength(byte[] bytes, int to) throws IOException {
            int pos;
            int end;
            int pos2 = indexOf(V8DebugServer.PROTOCOL_CONTENT_LENGTH_BYTES, bytes, this.from, to);
            if (pos2 < 0 || (end = indexOf(V8DebugServer.PROTOCOL_EOL_BYTES, bytes, (pos = pos2 + V8DebugServer.PROTOCOL_CONTENT_LENGTH_BYTES.length), to)) < 0) {
                return -1;
            }
            String str = new String(bytes, pos, end - pos, V8DebugServer.PROTOCOL_CHARSET);
            try {
                int contentLength = Integer.parseInt(str.trim());
                this.from = end + V8DebugServer.PROTOCOL_EOL_BYTES.length;
                return contentLength;
            } catch (Exception e10) {
                throw new IOException("Invalid content length header: '" + str + "' in message" + new String(bytes, V8DebugServer.PROTOCOL_CHARSET));
            }
        }

        private boolean skipToolInfo(byte[] bytes, int n10) {
            int end = indexOf(V8DebugServer.PROTOCOL_EOL_BYTES, bytes, this.from, n10);
            if (end < 0) {
                return false;
            }
            this.from = end + V8DebugServer.PROTOCOL_EOL_BYTES.length;
            return true;
        }

        private int indexOf(byte[] pattern, byte[] array, int start, int end) {
            int j10;
            int len = pattern.length;
            for (int i10 = start; i10 < end; i10++) {
                for (0; j10 <= len; j10 + 1) {
                    if (j10 == len) {
                        return i10;
                    }
                    j10 = (i10 + j10 < end && array[i10 + j10] == pattern[j10]) ? j10 + 1 : 0;
                }
            }
            return -1;
        }

        private byte[] join(byte[] arr1, byte[] arr2, int startPos, int length) {
            byte[] res = new byte[arr1.length + length];
            System.arraycopy(arr1, 0, res, 0, arr1.length);
            System.arraycopy(arr2, startPos, res, arr1.length, length);
            return res;
        }
    }
}
