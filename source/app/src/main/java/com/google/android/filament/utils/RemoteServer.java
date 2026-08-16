package com.google.android.filament.utils;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class RemoteServer {

    public long f60412a;

    public static class a {

        public String f60413a;

        public ByteBuffer f60414b;
    }

    public RemoteServer(int i10) {
        long nCreate = nCreate(i10);
        this.f60412a = nCreate;
        if (nCreate == 0) {
            throw new IllegalStateException("Couldn't create RemoteServer");
        }
    }

    public static boolean c(@Nullable String str) {
        return (str == null || str.endsWith(".json")) ? false : true;
    }

    public static boolean d(@Nullable String str) {
        return str != null && str.endsWith(".json");
    }

    private static native void nAcquireReceivedMessage(long j10, ByteBuffer byteBuffer, int i10);

    private static native long nCreate(int i10);

    private static native void nDestroy(long j10);

    private static native String nPeekIncomingLabel(long j10);

    private static native int nPeekReceivedBufferLength(long j10);

    private static native String nPeekReceivedLabel(long j10);

    @Nullable
    public a a() {
        int nPeekReceivedBufferLength = nPeekReceivedBufferLength(this.f60412a);
        if (nPeekReceivedBufferLength == 0) {
            return null;
        }
        a aVar = new a();
        aVar.f60413a = nPeekReceivedLabel(this.f60412a);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(nPeekReceivedBufferLength);
        aVar.f60414b = allocateDirect;
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        nAcquireReceivedMessage(this.f60412a, aVar.f60414b, nPeekReceivedBufferLength);
        return aVar;
    }

    public void b() {
        nDestroy(this.f60412a);
        this.f60412a = 0L;
    }

    @Nullable
    public String e() {
        return nPeekIncomingLabel(this.f60412a);
    }

    public void finalize() throws Throwable {
        nDestroy(this.f60412a);
        super.finalize();
    }
}
