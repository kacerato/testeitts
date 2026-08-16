package com.google.protobuf;

import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12657b.a;
import com.google.protobuf.AbstractC12724x;
import com.google.protobuf.InterfaceC12659b1;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class AbstractC12657b<MessageType extends AbstractC12657b<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> implements InterfaceC12659b1 {
    protected int memoizedHashCode = 0;

    public static abstract class a<MessageType extends AbstractC12657b<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> implements InterfaceC12659b1.a {
        @Deprecated
        public static <T> void addAll(final Iterable<T> values, final Collection<? super T> list) {
            addAll((Iterable) values, (List) list);
        }

        public static UninitializedMessageException newUninitializedMessageException(InterfaceC12659b1 message) {
            return new UninitializedMessageException(message);
        }

        public static <T> void t(Iterable<T> values, List<? super T> list) {
            if ((list instanceof ArrayList) && (values instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) values).size());
            }
            int size = list.size();
            for (T t10 : values) {
                if (t10 == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(t10);
            }
        }

        public final String A0(String target) {
            return "Reading " + getClass().getName() + " from a " + target + " threw an IOException (should never happen).";
        }

        @Override
        public abstract BuilderType m1247clone();

        public abstract BuilderType internalMergeFrom(MessageType message);

        @Override
        public boolean mergeDelimitedFrom(final InputStream input, final C12666d0 extensionRegistry) throws IOException {
            int read = input.read();
            if (read == -1) {
                return false;
            }
            mergeFrom((InputStream) new C1036a(input, C.P(read, input)), extensionRegistry);
            return true;
        }

        @Override
        public abstract BuilderType mergeFrom(final C input, final C12666d0 extensionRegistry) throws IOException;

        public static <T> void addAll(final Iterable<T> values, final List<? super T> list) {
            D0.d(values);
            if (values instanceof K0) {
                List<?> Ea2 = ((K0) values).Ea();
                K0 k02 = (K0) list;
                int size = list.size();
                for (Object obj : Ea2) {
                    if (obj == null) {
                        String str = "Element at index " + (k02.size() - size) + " is null.";
                        for (int size2 = k02.size() - 1; size2 >= size; size2--) {
                            k02.remove(size2);
                        }
                        throw new NullPointerException(str);
                    }
                    if (obj instanceof AbstractC12724x) {
                        k02.b3((AbstractC12724x) obj);
                    } else {
                        k02.add((String) obj);
                    }
                }
                return;
            }
            if (values instanceof InterfaceC12726x1) {
                list.addAll((Collection) values);
            } else {
                t(values, list);
            }
        }

        public static final class C1036a extends FilterInputStream {

            public int f69049b;

            public C1036a(InputStream in2, int limit) {
                super(in2);
                this.f69049b = limit;
            }

            @Override
            public int available() throws IOException {
                return Math.min(super.available(), this.f69049b);
            }

            @Override
            public int read() throws IOException {
                if (this.f69049b <= 0) {
                    return -1;
                }
                int read = super.read();
                if (read >= 0) {
                    this.f69049b--;
                }
                return read;
            }

            @Override
            public long skip(final long n10) throws IOException {
                int skip = (int) super.skip(Math.min(n10, this.f69049b));
                if (skip >= 0) {
                    this.f69049b -= skip;
                }
                return skip;
            }

            @Override
            public int read(final byte[] b10, final int off, int len) throws IOException {
                int i10 = this.f69049b;
                if (i10 <= 0) {
                    return -1;
                }
                int read = super.read(b10, off, Math.min(len, i10));
                if (read >= 0) {
                    this.f69049b -= read;
                }
                return read;
            }
        }

        @Override
        public boolean mergeDelimitedFrom(final InputStream input) throws IOException {
            return mergeDelimitedFrom(input, C12666d0.d());
        }

        @Override
        public BuilderType mergeFrom(final C input) throws IOException {
            return mergeFrom(input, C12666d0.d());
        }

        @Override
        public BuilderType mergeFrom(final AbstractC12724x data) throws InvalidProtocolBufferException {
            try {
                C N10 = data.N();
                mergeFrom(N10);
                N10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(A0("ByteString"), e11);
            }
        }

        @Override
        public BuilderType mergeFrom(final AbstractC12724x data, final C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            try {
                C N10 = data.N();
                mergeFrom(N10, extensionRegistry);
                N10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(A0("ByteString"), e11);
            }
        }

        @Override
        public BuilderType mergeFrom(final byte[] data) throws InvalidProtocolBufferException {
            return mergeFrom(data, 0, data.length);
        }

        @Override
        public BuilderType mergeFrom(final byte[] data, final int off, final int len) throws InvalidProtocolBufferException {
            try {
                C r10 = C.r(data, off, len);
                mergeFrom(r10);
                r10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(A0("byte array"), e11);
            }
        }

        @Override
        public BuilderType mergeFrom(final byte[] data, final C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return mergeFrom(data, 0, data.length, extensionRegistry);
        }

        @Override
        public BuilderType mergeFrom(final byte[] data, final int off, final int len, final C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            try {
                C r10 = C.r(data, off, len);
                mergeFrom(r10, extensionRegistry);
                r10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(A0("byte array"), e11);
            }
        }

        @Override
        public BuilderType mergeFrom(final InputStream input) throws IOException {
            C k10 = C.k(input);
            mergeFrom(k10);
            k10.a(0);
            return this;
        }

        @Override
        public BuilderType mergeFrom(final InputStream input, final C12666d0 extensionRegistry) throws IOException {
            C k10 = C.k(input);
            mergeFrom(k10, extensionRegistry);
            k10.a(0);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public BuilderType mergeFrom(InterfaceC12659b1 interfaceC12659b1) {
            if (getDefaultInstanceForType().getClass().isInstance(interfaceC12659b1)) {
                return (BuilderType) internalMergeFrom((AbstractC12657b) interfaceC12659b1);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
    }

    public interface InterfaceC1037b {
        int getNumber();
    }

    @Deprecated
    public static <T> void addAll(final Iterable<T> values, final Collection<? super T> list) {
        a.addAll((Iterable) values, (List) list);
    }

    public static void checkByteStringIsUtf8(AbstractC12724x byteString) throws IllegalArgumentException {
        if (!byteString.J()) {
            throw new IllegalArgumentException("Byte string is not UTF-8.");
        }
    }

    public final String a0(String target) {
        return "Serializing " + getClass().getName() + " to a " + target + " threw an IOException (should never happen).";
    }

    public int getMemoizedSerializedSize() {
        throw new UnsupportedOperationException();
    }

    public int getSerializedSize(L1 schema) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize != -1) {
            return memoizedSerializedSize;
        }
        int N12 = schema.N1(this);
        setMemoizedSerializedSize(N12);
        return N12;
    }

    public UninitializedMessageException newUninitializedMessageException() {
        return new UninitializedMessageException(this);
    }

    public void setMemoizedSerializedSize(int size) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream n12 = CodedOutputStream.n1(bArr);
            writeTo(n12);
            n12.Z();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException(a0("byte array"), e10);
        }
    }

    @Override
    public AbstractC12724x toByteString() {
        try {
            AbstractC12724x.h M10 = AbstractC12724x.M(getSerializedSize());
            writeTo(M10.b());
            return M10.a();
        } catch (IOException e10) {
            throw new RuntimeException(a0("ByteString"), e10);
        }
    }

    @Override
    public void writeDelimitedTo(final OutputStream output) throws IOException {
        int serializedSize = getSerializedSize();
        CodedOutputStream k12 = CodedOutputStream.k1(output, CodedOutputStream.J0(CodedOutputStream.Z0(serializedSize) + serializedSize));
        k12.h2(serializedSize);
        writeTo(k12);
        k12.e1();
    }

    @Override
    public void writeTo(final OutputStream output) throws IOException {
        CodedOutputStream k12 = CodedOutputStream.k1(output, CodedOutputStream.J0(getSerializedSize()));
        writeTo(k12);
        k12.e1();
    }

    public static <T> void addAll(final Iterable<T> values, final List<? super T> list) {
        a.addAll((Iterable) values, (List) list);
    }
}
