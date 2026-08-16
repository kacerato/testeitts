package com.google.protobuf;

import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.D0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Y0;
import com.google.protobuf.r2;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class AbstractC12653a extends AbstractC12657b implements Y0 {
    protected int memoizedSize = -1;

    public static abstract class AbstractC1035a<BuilderType extends AbstractC1035a<BuilderType>> extends AbstractC12657b.a implements Y0.a {
        public static UninitializedMessageException newUninitializedMessageException(Y0 message) {
            return new UninitializedMessageException(C12673f1.c(message));
        }

        public void dispose() {
            throw new IllegalStateException("Should be overridden by subclasses.");
        }

        @Override
        public List<String> findInitializationErrors() {
            return C12673f1.c(this);
        }

        public Y0.a getFieldBuilder(final Descriptors.f field) {
            throw new UnsupportedOperationException("getFieldBuilder() called on an unsupported message type.");
        }

        @Override
        public String getInitializationErrorString() {
            return C12673f1.a(findInitializationErrors());
        }

        public Descriptors.f getOneofFieldDescriptor(Descriptors.k oneof) {
            throw new UnsupportedOperationException("getOneofFieldDescriptor() is not implemented.");
        }

        public Y0.a getRepeatedFieldBuilder(final Descriptors.f field, int index) {
            throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on an unsupported message type.");
        }

        public r2.b getUnknownFieldSetBuilder() {
            return r2.D2(getUnknownFields());
        }

        public boolean hasOneof(Descriptors.k oneof) {
            throw new UnsupportedOperationException("hasOneof() is not implemented.");
        }

        public void markClean() {
            throw new IllegalStateException("Should be overridden by subclasses.");
        }

        public void setUnknownFieldSetBuilder(final r2.b builder) {
            setUnknownFields(builder.build());
        }

        public String toString() {
            return TextFormat.L().o(this);
        }

        @Override
        public BuilderType clearOneof(Descriptors.k oneof) {
            throw new UnsupportedOperationException("clearOneof() is not implemented.");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public BuilderType internalMergeFrom(AbstractC12657b other) {
            return mergeFrom((Y0) other);
        }

        @Override
        public BuilderType mergeUnknownFields(final r2 unknownFields) {
            setUnknownFields(r2.D2(getUnknownFields()).B6(unknownFields).build());
            return this;
        }

        @Override
        public BuilderType s6() {
            Iterator<Map.Entry<Descriptors.f, Object>> it = getAllFields().entrySet().iterator();
            while (it.hasNext()) {
                clearField(it.next().getKey());
            }
            return this;
        }

        @Override
        public BuilderType mo1246clone() {
            throw new UnsupportedOperationException("clone() should be implemented in subclasses.");
        }

        @Override
        public BuilderType mergeFrom(final Y0 other) {
            return mergeFrom(other, other.getAllFields());
        }

        public BuilderType mergeFrom(final Y0 other, Map<Descriptors.f, Object> allFields) {
            if (other.getDescriptorForType() == getDescriptorForType()) {
                for (Map.Entry<Descriptors.f, Object> entry : allFields.entrySet()) {
                    Descriptors.f key = entry.getKey();
                    if (key.Z1()) {
                        Iterator it = ((List) entry.getValue()).iterator();
                        while (it.hasNext()) {
                            addRepeatedField(key, it.next());
                        }
                    } else if (key.v() == Descriptors.f.b.MESSAGE) {
                        Y0 y02 = (Y0) getField(key);
                        if (y02 == y02.getDefaultInstanceForType()) {
                            setField(key, entry.getValue());
                        } else {
                            setField(key, y02.newBuilderForType().mergeFrom(y02).mergeFrom((Y0) entry.getValue()).build());
                        }
                    } else {
                        setField(key, entry.getValue());
                    }
                }
                mergeUnknownFields(other.getUnknownFields());
                return this;
            }
            throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
        }

        @Override
        public BuilderType mergeFrom(final C input) throws IOException {
            return mergeFrom(input, (C12666d0) C12658b0.v());
        }

        @Override
        public BuilderType mergeFrom(final C input, final C12666d0 extensionRegistry) throws IOException {
            r2.b unknownFieldSetBuilder = input.g0() ? null : getUnknownFieldSetBuilder();
            C12673f1.h(this, unknownFieldSetBuilder, input, extensionRegistry);
            if (unknownFieldSetBuilder != null) {
                setUnknownFieldSetBuilder(unknownFieldSetBuilder);
            }
            return this;
        }

        @Override
        public BuilderType mergeFrom(final AbstractC12724x data) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(data);
        }

        @Override
        public BuilderType mergeFrom(final AbstractC12724x data, final C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(data, extensionRegistry);
        }

        @Override
        public BuilderType mergeFrom(final byte[] data) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(data);
        }

        @Override
        public BuilderType mergeFrom(final byte[] data, final int off, final int len) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(data, off, len);
        }

        @Override
        public BuilderType mergeFrom(final byte[] data, final C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(data, extensionRegistry);
        }

        @Override
        public BuilderType mergeFrom(final byte[] data, final int off, final int len, final C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(data, off, len, extensionRegistry);
        }

        @Override
        public BuilderType mergeFrom(final InputStream input) throws IOException {
            return (BuilderType) super.mergeFrom(input);
        }

        @Override
        public BuilderType mergeFrom(final InputStream input, final C12666d0 extensionRegistry) throws IOException {
            return (BuilderType) super.mergeFrom(input, extensionRegistry);
        }
    }

    public interface b {
        void a();
    }

    public static Map D2(List list) {
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        Y0 y02 = (Y0) it.next();
        Descriptors.b descriptorForType = y02.getDescriptorForType();
        Descriptors.f j10 = descriptorForType.j("key");
        Descriptors.f j11 = descriptorForType.j("value");
        Object field = y02.getField(j11);
        if (field instanceof Descriptors.e) {
            field = Integer.valueOf(((Descriptors.e) field).getNumber());
        }
        hashMap.put(y02.getField(j10), field);
        while (it.hasNext()) {
            Y0 y03 = (Y0) it.next();
            Object field2 = y03.getField(j11);
            if (field2 instanceof Descriptors.e) {
                field2 = Integer.valueOf(((Descriptors.e) field2).getNumber());
            }
            hashMap.put(y03.getField(j10), field2);
        }
        return hashMap;
    }

    public static boolean Q1(Object a10, Object b10) {
        return T0.k(D2((List) a10), D2((List) b10));
    }

    public static int Z2(Object value) {
        return T0.a(D2((List) value));
    }

    public static boolean b0(Object a10, Object b10) {
        return ((a10 instanceof byte[]) && (b10 instanceof byte[])) ? Arrays.equals((byte[]) a10, (byte[]) b10) : d3(a10).equals(d3(b10));
    }

    public static boolean compareFields(Map<Descriptors.f, Object> a10, Map<Descriptors.f, Object> b10) {
        if (a10.size() != b10.size()) {
            return false;
        }
        for (Descriptors.f fVar : a10.o()) {
            if (!b10.containsKey(fVar)) {
                return false;
            }
            Object obj = a10.get(fVar);
            Object obj2 = b10.get(fVar);
            if (fVar.A() == Descriptors.f.c.BYTES) {
                if (fVar.Z1()) {
                    List list = (List) obj;
                    List list2 = (List) obj2;
                    if (list.size() != list2.size()) {
                        return false;
                    }
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        if (!b0(list.get(i10), list2.get(i10))) {
                            return false;
                        }
                    }
                } else if (!b0(obj, obj2)) {
                    return false;
                }
            } else if (fVar.G()) {
                if (!Q1(obj, obj2)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    public static AbstractC12724x d3(Object value) {
        return value instanceof byte[] ? AbstractC12724x.u((byte[]) value) : (AbstractC12724x) value;
    }

    @Deprecated
    public static int hashBoolean(boolean b10) {
        return b10 ? 1231 : 1237;
    }

    @Deprecated
    public static int hashEnum(D0.c e10) {
        return e10.getNumber();
    }

    @Deprecated
    public static int hashEnumList(List<? extends D0.c> list) {
        Iterator<? extends D0.c> it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            i10 = (i10 * 31) + hashEnum(it.next());
        }
        return i10;
    }

    public static int hashFields(int hash, Map<Descriptors.f, Object> map) {
        int i10;
        int q10;
        for (Map.Entry<Descriptors.f, Object> entry : map.entrySet()) {
            Descriptors.f key = entry.getKey();
            Object value = entry.getValue();
            int number = (hash * 37) + key.getNumber();
            if (key.G()) {
                i10 = number * 53;
                q10 = Z2(value);
            } else if (key.A() != Descriptors.f.c.ENUM) {
                i10 = number * 53;
                q10 = value.hashCode();
            } else if (key.Z1()) {
                i10 = number * 53;
                q10 = D0.r((List) value);
            } else {
                i10 = number * 53;
                q10 = D0.q((D0.c) value);
            }
            hash = i10 + q10;
        }
        return hash;
    }

    @Deprecated
    public static int hashLong(long n10) {
        return (int) (n10 ^ (n10 >>> 32));
    }

    public boolean equals(final Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Y0)) {
            return false;
        }
        Y0 y02 = (Y0) other;
        if (getDescriptorForType() != y02.getDescriptorForType()) {
            return false;
        }
        return compareFields(getAllFields(), y02.getAllFields()) && getUnknownFields().equals(y02.getUnknownFields());
    }

    @Override
    public List<String> findInitializationErrors() {
        return C12673f1.c(this);
    }

    @Override
    public String getInitializationErrorString() {
        return C12673f1.a(findInitializationErrors());
    }

    @Override
    public int getMemoizedSerializedSize() {
        return this.memoizedSize;
    }

    public Descriptors.f getOneofFieldDescriptor(Descriptors.k oneof) {
        throw new UnsupportedOperationException("getOneofFieldDescriptor() is not implemented.");
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int e10 = C12673f1.e(this, getAllFields());
        this.memoizedSize = e10;
        return e10;
    }

    public boolean hasOneof(Descriptors.k oneof) {
        throw new UnsupportedOperationException("hasOneof() is not implemented.");
    }

    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashFields = (hashFields(779 + getDescriptorForType().hashCode(), getAllFields()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashFields;
        return hashFields;
    }

    @Override
    public boolean isInitialized() {
        return C12673f1.f(this);
    }

    public Y0.a newBuilderForType(b parent) {
        throw new UnsupportedOperationException("Nested builder is not supported for this type.");
    }

    @Override
    public UninitializedMessageException newUninitializedMessageException() {
        return AbstractC1035a.newUninitializedMessageException((Y0) this);
    }

    @Override
    public void setMemoizedSerializedSize(int size) {
        this.memoizedSize = size;
    }

    @Override
    public final String toString() {
        return TextFormat.L().o(this);
    }

    @Override
    public void writeTo(final CodedOutputStream output) throws IOException {
        C12673f1.l(this, getAllFields(), output, false);
    }
}
