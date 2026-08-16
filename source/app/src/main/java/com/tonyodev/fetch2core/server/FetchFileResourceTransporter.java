package com.tonyodev.fetch2core.server;

import com.tonyodev.fetch2core.Extras;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketAddress;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;

public final class FetchFileResourceTransporter implements FileResourceTransporter {
    private final Socket client;
    private volatile boolean closed;
    private DataInputStream dataInput;
    private DataOutputStream dataOutput;
    private final Object lock;

    /* JADX WARN: Multi-variable type inference failed */
    public FetchFileResourceTransporter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final void throwExceptionIfClosed() {
        if (this.closed) {
            throw new Exception("FetchFileResourceTransporter is already closed.");
        }
    }

    private final void throwIfNotConnected() {
        DataInputStream dataInputStream = this.dataInput;
        if (dataInputStream == null) {
            M.S("dataInput");
        }
        if (dataInputStream != null) {
            DataOutputStream dataOutputStream = this.dataOutput;
            if (dataOutputStream == null) {
                M.S("dataOutput");
            }
            if (dataOutputStream != null) {
                return;
            }
        }
        throw new Exception("You forgot to call connect before calling this method.");
    }

    @Override
    public void close() {
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    this.closed = true;
                    try {
                        DataInputStream dataInputStream = this.dataInput;
                        if (dataInputStream == null) {
                            M.S("dataInput");
                        }
                        dataInputStream.close();
                    } catch (Exception unused) {
                    }
                    try {
                        DataOutputStream dataOutputStream = this.dataOutput;
                        if (dataOutputStream == null) {
                            M.S("dataOutput");
                        }
                        dataOutputStream.close();
                    } catch (Exception unused2) {
                    }
                    try {
                        this.client.close();
                    } catch (Exception unused3) {
                    }
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void connect(@NotNull SocketAddress socketAddress) {
        M.q(socketAddress, "socketAddress");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.client.connect(socketAddress);
            this.dataInput = new DataInputStream(this.client.getInputStream());
            this.dataOutput = new DataOutputStream(this.client.getOutputStream());
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    @NotNull
    public InputStream getInputStream() {
        DataInputStream dataInputStream;
        synchronized (this.lock) {
            throwExceptionIfClosed();
            throwIfNotConnected();
            dataInputStream = this.dataInput;
            if (dataInputStream == null) {
                M.S("dataInput");
            }
        }
        return dataInputStream;
    }

    @Override
    @NotNull
    public OutputStream getOutputStream() {
        DataOutputStream dataOutputStream;
        synchronized (this.lock) {
            throwExceptionIfClosed();
            throwIfNotConnected();
            dataOutputStream = this.dataOutput;
            if (dataOutputStream == null) {
                M.S("dataOutput");
            }
        }
        return dataOutputStream;
    }

    @Override
    public boolean isClosed() {
        boolean z10;
        synchronized (this.lock) {
            z10 = this.closed;
        }
        return z10;
    }

    @Override
    public int readRawBytes(@NotNull byte[] byteArray, int i10, int i11) {
        int read;
        M.q(byteArray, "byteArray");
        synchronized (this.lock) {
            try {
                throwExceptionIfClosed();
                throwIfNotConnected();
                DataInputStream dataInputStream = this.dataInput;
                if (dataInputStream == null) {
                    M.S("dataInput");
                }
                read = dataInputStream.read(byteArray, i10, i11);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return read;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ce  */
    @Override
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FileRequest receiveFileRequest() {
        Extras emptyExtras;
        long j10;
        long j11;
        long j12;
        long j13;
        FileRequest fileRequest;
        synchronized (this.lock) {
            try {
                throwExceptionIfClosed();
                throwIfNotConnected();
                DataInputStream dataInputStream = this.dataInput;
                if (dataInputStream == null) {
                    M.S("dataInput");
                }
                JSONObject jSONObject = new JSONObject(dataInputStream.readUTF());
                int i10 = jSONObject.getInt(FileRequest.FIELD_TYPE);
                String fileResourceId = jSONObject.getString(FileRequest.FIELD_FILE_RESOURCE_ID);
                long j14 = jSONObject.getLong(FileRequest.FIELD_RANGE_START);
                long j15 = jSONObject.getLong(FileRequest.FIELD_RANGE_END);
                String authorization = jSONObject.getString("Authorization");
                String client = jSONObject.getString(FileRequest.FIELD_CLIENT);
                try {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    JSONObject jSONObject2 = new JSONObject(jSONObject.getString(FileRequest.FIELD_EXTRAS));
                    Iterator<String> keys = jSONObject2.keys();
                    M.h(keys, "jsonObject.keys()");
                    while (keys.hasNext()) {
                        String it = keys.next();
                        M.h(it, "it");
                        String string = jSONObject2.getString(it);
                        M.h(string, "jsonObject.getString(it)");
                        linkedHashMap.put(it, string);
                    }
                    emptyExtras = new Extras(linkedHashMap);
                } catch (Exception unused) {
                    emptyExtras = Extras.CREATOR.getEmptyExtras();
                }
                Extras extras = emptyExtras;
                int i11 = jSONObject.getInt(FileRequest.FIELD_PAGE);
                int i12 = jSONObject.getInt(FileRequest.FIELD_SIZE);
                if (j14 < 0 || j14 > j15) {
                    j10 = j14;
                    if (j15 > -1) {
                        j11 = 0;
                        j12 = 0;
                        if (j15 >= j11 && j15 >= j12) {
                            j13 = j15;
                            if (i11 < -1) {
                                i11 = -1;
                            }
                            int i13 = i12 >= -1 ? -1 : i12;
                            boolean z10 = jSONObject.getBoolean(FileRequest.FIELD_PERSIST_CONNECTION);
                            M.h(fileResourceId, "fileResourceId");
                            M.h(authorization, "authorization");
                            M.h(client, "client");
                            fileRequest = new FileRequest(i10, fileResourceId, j12, j13, authorization, client, extras, i11, i13, z10);
                        }
                        j13 = -1;
                        if (i11 < -1) {
                        }
                        if (i12 >= -1) {
                        }
                        boolean z102 = jSONObject.getBoolean(FileRequest.FIELD_PERSIST_CONNECTION);
                        M.h(fileResourceId, "fileResourceId");
                        M.h(authorization, "authorization");
                        M.h(client, "client");
                        fileRequest = new FileRequest(i10, fileResourceId, j12, j13, authorization, client, extras, i11, i13, z102);
                    }
                } else {
                    j10 = j14;
                }
                j12 = j10;
                j11 = 0;
                if (j15 >= j11) {
                    j13 = j15;
                    if (i11 < -1) {
                    }
                    if (i12 >= -1) {
                    }
                    boolean z1022 = jSONObject.getBoolean(FileRequest.FIELD_PERSIST_CONNECTION);
                    M.h(fileResourceId, "fileResourceId");
                    M.h(authorization, "authorization");
                    M.h(client, "client");
                    fileRequest = new FileRequest(i10, fileResourceId, j12, j13, authorization, client, extras, i11, i13, z1022);
                }
                j13 = -1;
                if (i11 < -1) {
                }
                if (i12 >= -1) {
                }
                boolean z10222 = jSONObject.getBoolean(FileRequest.FIELD_PERSIST_CONNECTION);
                M.h(fileResourceId, "fileResourceId");
                M.h(authorization, "authorization");
                M.h(client, "client");
                fileRequest = new FileRequest(i10, fileResourceId, j12, j13, authorization, client, extras, i11, i13, z10222);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fileRequest;
    }

    @Override
    @Nullable
    public FileResponse receiveFileResponse() {
        FileResponse fileResponse;
        synchronized (this.lock) {
            try {
                throwExceptionIfClosed();
                throwIfNotConnected();
                DataInputStream dataInputStream = this.dataInput;
                if (dataInputStream == null) {
                    M.S("dataInput");
                }
                String readUTF = dataInputStream.readUTF();
                M.h(readUTF, "dataInput.readUTF()");
                if (readUTF == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                String lowerCase = readUTF.toLowerCase();
                M.h(lowerCase, "(this as java.lang.String).toLowerCase()");
                JSONObject jSONObject = new JSONObject(lowerCase);
                int i10 = jSONObject.getInt("status");
                int i11 = jSONObject.getInt("type");
                int i12 = jSONObject.getInt("connection");
                long j10 = jSONObject.getLong("date");
                long j11 = jSONObject.getLong("content-length");
                String md5 = jSONObject.getString(FileResponse.FIELD_MD5);
                String sessionId = jSONObject.getString(FileResponse.FIELD_SESSION_ID);
                M.h(md5, "md5");
                M.h(sessionId, "sessionId");
                fileResponse = new FileResponse(i10, i11, i12, j10, j11, md5, sessionId);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fileResponse;
    }

    @Override
    public void sendFileRequest(@NotNull FileRequest fileRequest) {
        M.q(fileRequest, "fileRequest");
        synchronized (this.lock) {
            try {
                throwExceptionIfClosed();
                throwIfNotConnected();
                DataOutputStream dataOutputStream = this.dataOutput;
                if (dataOutputStream == null) {
                    M.S("dataOutput");
                }
                dataOutputStream.writeUTF(fileRequest.getToJsonString());
                DataOutputStream dataOutputStream2 = this.dataOutput;
                if (dataOutputStream2 == null) {
                    M.S("dataOutput");
                }
                dataOutputStream2.flush();
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void sendFileResponse(@NotNull FileResponse fileResponse) {
        M.q(fileResponse, "fileResponse");
        synchronized (this.lock) {
            try {
                throwExceptionIfClosed();
                throwIfNotConnected();
                DataOutputStream dataOutputStream = this.dataOutput;
                if (dataOutputStream == null) {
                    M.S("dataOutput");
                }
                dataOutputStream.writeUTF(fileResponse.getToJsonString());
                DataOutputStream dataOutputStream2 = this.dataOutput;
                if (dataOutputStream2 == null) {
                    M.S("dataOutput");
                }
                dataOutputStream2.flush();
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void sendRawBytes(@NotNull byte[] byteArray, int i10, int i11) {
        M.q(byteArray, "byteArray");
        synchronized (this.lock) {
            try {
                throwExceptionIfClosed();
                throwIfNotConnected();
                DataOutputStream dataOutputStream = this.dataOutput;
                if (dataOutputStream == null) {
                    M.S("dataOutput");
                }
                dataOutputStream.write(byteArray, i10, i11);
                DataOutputStream dataOutputStream2 = this.dataOutput;
                if (dataOutputStream2 == null) {
                    M.S("dataOutput");
                }
                dataOutputStream2.flush();
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public FetchFileResourceTransporter(@NotNull Socket client) {
        M.q(client, "client");
        this.client = client;
        this.lock = new Object();
        if (client.isConnected() && !client.isClosed()) {
            this.dataInput = new DataInputStream(client.getInputStream());
            this.dataOutput = new DataOutputStream(client.getOutputStream());
        }
        if (client.isClosed()) {
            this.closed = true;
        }
    }

    public FetchFileResourceTransporter(Socket socket, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? new Socket() : socket);
    }
}
