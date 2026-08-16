package com.android.tools.r8.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

public abstract class P0 implements InterfaceC8095kW {
    protected int memoizedHashCode = 0;

    @Deprecated
    public static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
        N0.addAll((Iterable) iterable, (List) collection);
    }

    public static void checkByteStringIsUtf8(AbstractC8373m8 abstractC8373m8) throws IllegalArgumentException {
        if (!abstractC8373m8.a()) {
            throw new IllegalArgumentException("Byte string is not UTF-8.");
        }
    }

    public abstract int getMemoizedSerializedSize();

    public int getSerializedSize(InterfaceC7638hl0 interfaceC7638hl0) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize != -1) {
            return memoizedSerializedSize;
        }
        throw null;
    }

    public abstract C7000dv0 newUninitializedMessageException();

    @Override
    public byte[] toByteArray() {
        try {
            int serializedSize = getSerializedSize();
            byte[] bArr = new byte[serializedSize];
            Logger logger = AbstractC5322Ie.f41156a;
            C5032De c5032De = new C5032De(serializedSize, bArr);
            writeTo(c5032De);
            if (c5032De.a() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e10);
        }
    }

    public AbstractC8373m8 toByteString() {
        try {
            int serializedSize = getSerializedSize();
            C7707i8 c7707i8 = AbstractC8373m8.f50204c;
            byte[] bArr = new byte[serializedSize];
            Logger logger = AbstractC5322Ie.f41156a;
            C5032De c5032De = new C5032De(serializedSize, bArr);
            writeTo(c5032De);
            if (c5032De.a() == 0) {
                return new C7707i8(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a ByteString threw an IOException (should never happen).", e10);
        }
    }

    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        int c10 = AbstractC5322Ie.c(serializedSize) + serializedSize;
        if (c10 > 4096) {
            c10 = 4096;
        }
        C5206Ge c5206Ge = new C5206Ge(outputStream, c10);
        c5206Ge.g(serializedSize);
        writeTo(c5206Ge);
        if (c5206Ge.f40544e > 0) {
            c5206Ge.a();
        }
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        Logger logger = AbstractC5322Ie.f41156a;
        if (serializedSize > 4096) {
            serializedSize = 4096;
        }
        C5206Ge c5206Ge = new C5206Ge(outputStream, serializedSize);
        writeTo(c5206Ge);
        if (c5206Ge.f40544e > 0) {
            c5206Ge.a();
        }
    }

    public static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        N0.addAll((Iterable) iterable, (List) list);
    }
}
