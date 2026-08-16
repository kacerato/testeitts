package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.C12699o0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Y0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class P extends AbstractC12653a {

    public final Descriptors.b f68817b;

    public final C12699o0<Descriptors.f> f68818c;

    public final Descriptors.f[] f68819d;

    public final r2 f68820e;

    public int f68821f = -1;

    public class a extends AbstractC12661c<P> {
        public a() {
        }

        @Override
        public P parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            c u62 = P.u6(P.this.f68817b);
            try {
                u62.mergeFrom(input, extensionRegistry);
                return u62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(u62.buildPartial());
            } catch (IOException e11) {
                throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(u62.buildPartial());
            }
        }
    }

    public static class b {

        public static final int[] f68823a;

        static {
            int[] iArr = new int[Descriptors.f.c.values().length];
            f68823a = iArr;
            try {
                iArr[Descriptors.f.c.ENUM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f68823a[Descriptors.f.c.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class c extends AbstractC12653a.AbstractC1035a<c> {

        public final Descriptors.b f68824b;

        public C12699o0.b<Descriptors.f> f68825c;

        public final Descriptors.f[] f68826d;

        public r2 f68827e;

        public c(Descriptors.b bVar, a aVar) {
            this(bVar);
        }

        public static Y0.a A6(Object o10) {
            if (o10 instanceof Y0.a) {
                return (Y0.a) o10;
            }
            if (o10 instanceof H0) {
                o10 = ((H0) o10).p();
            }
            if (o10 instanceof Y0) {
                return ((Y0) o10).toBuilder();
            }
            throw new IllegalArgumentException(String.format("Cannot convert %s to Message.Builder", o10.getClass()));
        }

        public final void B6(Descriptors.f field) {
            if (field.q() != this.f68824b) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        public final void C6(Descriptors.k oneof) {
            if (oneof.k() != this.f68824b) {
                throw new IllegalArgumentException("OneofDescriptor does not match message type.");
            }
        }

        public final void D6(Descriptors.f field, Object value) {
            int i10 = b.f68823a[field.A().ordinal()];
            if (i10 != 1) {
                if (i10 == 2 && (value instanceof Y0.a)) {
                    throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(field.getNumber()), field.U1().a(), value.getClass().getName()));
                }
            } else {
                D0.d(value);
                if (!(value instanceof Descriptors.e)) {
                    throw new IllegalArgumentException("DynamicMessage should use EnumValueDescriptor to set Enum Value.");
                }
            }
        }

        public final void E6(Descriptors.f field, Object value) {
            if (!field.Z1()) {
                D6(field, value);
                return;
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                D6(field, it.next());
            }
        }

        public final P I1() throws InvalidProtocolBufferException {
            if (isInitialized()) {
                return buildPartial();
            }
            Descriptors.b bVar = this.f68824b;
            C12699o0<Descriptors.f> b10 = this.f68825c.b();
            Descriptors.f[] fVarArr = this.f68826d;
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) new P(bVar, b10, (Descriptors.f[]) Arrays.copyOf(fVarArr, fVarArr.length), this.f68827e)).asInvalidProtocolBufferException();
        }

        @Override
        public c addRepeatedField(Descriptors.f field, Object value) {
            B6(field);
            D6(field, value);
            this.f68825c.a(field, value);
            return this;
        }

        @Override
        public c s6() {
            this.f68825c = C12699o0.M();
            this.f68827e = r2.b0();
            return this;
        }

        @Override
        public Map<Descriptors.f, Object> getAllFields() {
            return this.f68825c.h();
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return this.f68824b;
        }

        @Override
        public Object getField(Descriptors.f field) {
            B6(field);
            Object i10 = this.f68825c.i(field);
            return i10 == null ? field.Z1() ? Collections.emptyList() : field.v() == Descriptors.f.b.MESSAGE ? P.r6(field.x()) : field.r() : i10;
        }

        @Override
        public Y0.a getFieldBuilder(Descriptors.f field) {
            B6(field);
            if (field.G()) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }
            if (field.v() != Descriptors.f.b.MESSAGE) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
            Object j10 = this.f68825c.j(field);
            Y0.a cVar = j10 == null ? new c(field.x()) : A6(j10);
            this.f68825c.v(field, cVar);
            return cVar;
        }

        @Override
        public Descriptors.f getOneofFieldDescriptor(Descriptors.k oneof) {
            C6(oneof);
            return this.f68826d[oneof.r()];
        }

        @Override
        public Object getRepeatedField(Descriptors.f field, int index) {
            B6(field);
            return this.f68825c.k(field, index);
        }

        @Override
        public Y0.a getRepeatedFieldBuilder(Descriptors.f field, int index) {
            B6(field);
            if (field.G()) {
                throw new UnsupportedOperationException("Map fields cannot be repeated");
            }
            if (field.v() != Descriptors.f.b.MESSAGE) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Y0.a A62 = A6(this.f68825c.l(field, index));
            this.f68825c.w(field, index, A62);
            return A62;
        }

        @Override
        public int getRepeatedFieldCount(Descriptors.f field) {
            B6(field);
            return this.f68825c.m(field);
        }

        @Override
        public r2 getUnknownFields() {
            return this.f68827e;
        }

        @Override
        public boolean hasField(Descriptors.f field) {
            B6(field);
            return this.f68825c.n(field);
        }

        @Override
        public boolean hasOneof(Descriptors.k oneof) {
            C6(oneof);
            return this.f68826d[oneof.r()] != null;
        }

        @Override
        public boolean isInitialized() {
            for (Descriptors.f fVar : this.f68824b.s()) {
                if (fVar.J() && !this.f68825c.n(fVar)) {
                    return false;
                }
            }
            return this.f68825c.o();
        }

        @Override
        public P build() {
            if (isInitialized()) {
                return buildPartial();
            }
            Descriptors.b bVar = this.f68824b;
            C12699o0<Descriptors.f> b10 = this.f68825c.b();
            Descriptors.f[] fVarArr = this.f68826d;
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) new P(bVar, b10, (Descriptors.f[]) Arrays.copyOf(fVarArr, fVarArr.length), this.f68827e));
        }

        @Override
        public c clearField(Descriptors.f field) {
            B6(field);
            Descriptors.k o10 = field.o();
            if (o10 != null) {
                int r10 = o10.r();
                Descriptors.f[] fVarArr = this.f68826d;
                if (fVarArr[r10] == field) {
                    fVarArr[r10] = null;
                }
            }
            this.f68825c.e(field);
            return this;
        }

        @Override
        public c clearOneof(Descriptors.k oneof) {
            C6(oneof);
            Descriptors.f fVar = this.f68826d[oneof.r()];
            if (fVar != null) {
                clearField(fVar);
            }
            return this;
        }

        @Override
        public c m1247clone() {
            c cVar = new c(this.f68824b);
            cVar.f68825c.p(this.f68825c.b());
            cVar.mergeUnknownFields(this.f68827e);
            Descriptors.f[] fVarArr = this.f68826d;
            System.arraycopy(fVarArr, 0, cVar.f68826d, 0, fVarArr.length);
            return cVar;
        }

        @Override
        public P getDefaultInstanceForType() {
            return P.r6(this.f68824b);
        }

        @Override
        public c mergeFrom(Y0 other) {
            if (!(other instanceof P)) {
                return (c) super.mergeFrom(other);
            }
            P p10 = (P) other;
            if (p10.f68817b != this.f68824b) {
                throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
            }
            this.f68825c.p(p10.f68818c);
            mergeUnknownFields(p10.f68820e);
            int i10 = 0;
            while (true) {
                Descriptors.f[] fVarArr = this.f68826d;
                if (i10 >= fVarArr.length) {
                    return this;
                }
                if (fVarArr[i10] == null) {
                    fVarArr[i10] = p10.f68819d[i10];
                } else if (p10.f68819d[i10] != null && this.f68826d[i10] != p10.f68819d[i10]) {
                    this.f68825c.e(this.f68826d[i10]);
                    this.f68826d[i10] = p10.f68819d[i10];
                }
                i10++;
            }
        }

        @Override
        public P buildPartial() {
            if (this.f68824b.w().E3()) {
                for (Descriptors.f fVar : this.f68824b.s()) {
                    if (fVar.H() && !this.f68825c.n(fVar)) {
                        if (fVar.v() == Descriptors.f.b.MESSAGE) {
                            this.f68825c.v(fVar, P.r6(fVar.x()));
                        } else {
                            this.f68825c.v(fVar, fVar.r());
                        }
                    }
                }
            }
            Descriptors.b bVar = this.f68824b;
            C12699o0<Descriptors.f> d10 = this.f68825c.d();
            Descriptors.f[] fVarArr = this.f68826d;
            return new P(bVar, d10, (Descriptors.f[]) Arrays.copyOf(fVarArr, fVarArr.length), this.f68827e);
        }

        @Override
        public c mergeUnknownFields(r2 unknownFields) {
            this.f68827e = r2.D2(this.f68827e).B6(unknownFields).build();
            return this;
        }

        @Override
        public c newBuilderForField(Descriptors.f field) {
            B6(field);
            if (field.v() == Descriptors.f.b.MESSAGE) {
                return new c(field.x());
            }
            throw new IllegalArgumentException("newBuilderForField is only valid for fields with message type.");
        }

        @Override
        public c setField(Descriptors.f field, Object value) {
            B6(field);
            E6(field, value);
            Descriptors.k o10 = field.o();
            if (o10 != null) {
                int r10 = o10.r();
                Descriptors.f fVar = this.f68826d[r10];
                if (fVar != null && fVar != field) {
                    this.f68825c.e(fVar);
                }
                this.f68826d[r10] = field;
            } else if (field.a().z() == Descriptors.g.b.PROTO3 && !field.Z1() && field.v() != Descriptors.f.b.MESSAGE && value.equals(field.r())) {
                this.f68825c.e(field);
                return this;
            }
            this.f68825c.v(field, value);
            return this;
        }

        @Override
        public c setRepeatedField(Descriptors.f field, int index, Object value) {
            B6(field);
            D6(field, value);
            this.f68825c.w(field, index, value);
            return this;
        }

        @Override
        public c setUnknownFields(r2 unknownFields) {
            this.f68827e = unknownFields;
            return this;
        }

        public c(Descriptors.b type) {
            this.f68824b = type;
            this.f68825c = C12699o0.M();
            this.f68827e = r2.b0();
            this.f68826d = new Descriptors.f[type.d().O0()];
        }
    }

    public P(Descriptors.b type, C12699o0<Descriptors.f> fields, Descriptors.f[] oneofCases, r2 unknownFields) {
        this.f68817b = type;
        this.f68818c = fields;
        this.f68819d = oneofCases;
        this.f68820e = unknownFields;
    }

    public static P A6(Descriptors.b type, C input, C12658b0 extensionRegistry) throws IOException {
        return u6(type).mergeFrom(input, (C12666d0) extensionRegistry).I1();
    }

    public static P B6(Descriptors.b type, InputStream input) throws IOException {
        return u6(type).mergeFrom(input).I1();
    }

    public static P C6(Descriptors.b type, InputStream input, C12658b0 extensionRegistry) throws IOException {
        return u6(type).mergeFrom(input, (C12666d0) extensionRegistry).I1();
    }

    public static P D6(Descriptors.b type, byte[] data) throws InvalidProtocolBufferException {
        return u6(type).mergeFrom(data).I1();
    }

    public static P E6(Descriptors.b type, byte[] data, C12658b0 extensionRegistry) throws InvalidProtocolBufferException {
        return u6(type).mergeFrom(data, (C12666d0) extensionRegistry).I1();
    }

    private void G6(Descriptors.f field) {
        if (field.q() != this.f68817b) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
    }

    private void H6(Descriptors.k oneof) {
        if (oneof.k() != this.f68817b) {
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }
    }

    public static P r6(Descriptors.b type) {
        return new P(type, C12699o0.s(), new Descriptors.f[type.d().O0()], r2.b0());
    }

    public static boolean t6(Descriptors.b type, C12699o0<Descriptors.f> fields) {
        for (Descriptors.f fVar : type.s()) {
            if (fVar.J() && !fields.B(fVar)) {
                return false;
            }
        }
        return fields.E();
    }

    public static c u6(Descriptors.b type) {
        return new c(type, null);
    }

    public static c v6(Y0 prototype) {
        return new c(prototype.getDescriptorForType(), null).mergeFrom(prototype);
    }

    public static P x6(Descriptors.b type, AbstractC12724x data) throws InvalidProtocolBufferException {
        return u6(type).mergeFrom(data).I1();
    }

    public static P y6(Descriptors.b type, AbstractC12724x data, C12658b0 extensionRegistry) throws InvalidProtocolBufferException {
        return u6(type).mergeFrom(data, (C12666d0) extensionRegistry).I1();
    }

    public static P z6(Descriptors.b type, C input) throws IOException {
        return u6(type).mergeFrom(input).I1();
    }

    @Override
    public c toBuilder() {
        return newBuilderForType().mergeFrom(this);
    }

    @Override
    public Map<Descriptors.f, Object> getAllFields() {
        return this.f68818c.t();
    }

    @Override
    public Descriptors.b getDescriptorForType() {
        return this.f68817b;
    }

    @Override
    public Object getField(Descriptors.f field) {
        G6(field);
        Object u10 = this.f68818c.u(field);
        return u10 == null ? field.Z1() ? Collections.emptyList() : field.v() == Descriptors.f.b.MESSAGE ? r6(field.x()) : field.r() : u10;
    }

    @Override
    public Descriptors.f getOneofFieldDescriptor(Descriptors.k oneof) {
        H6(oneof);
        return this.f68819d[oneof.r()];
    }

    @Override
    public InterfaceC12723w1<P> getParserForType() {
        return new a();
    }

    @Override
    public Object getRepeatedField(Descriptors.f field, int index) {
        G6(field);
        return this.f68818c.x(field, index);
    }

    @Override
    public int getRepeatedFieldCount(Descriptors.f field) {
        G6(field);
        return this.f68818c.y(field);
    }

    @Override
    public int getSerializedSize() {
        int z10;
        int serializedSize;
        int i10 = this.f68821f;
        if (i10 != -1) {
            return i10;
        }
        if (this.f68817b.w().X2()) {
            z10 = this.f68818c.v();
            serializedSize = this.f68820e.m1();
        } else {
            z10 = this.f68818c.z();
            serializedSize = this.f68820e.getSerializedSize();
        }
        int i11 = z10 + serializedSize;
        this.f68821f = i11;
        return i11;
    }

    @Override
    public r2 getUnknownFields() {
        return this.f68820e;
    }

    @Override
    public boolean hasField(Descriptors.f field) {
        G6(field);
        return this.f68818c.B(field);
    }

    @Override
    public boolean hasOneof(Descriptors.k oneof) {
        H6(oneof);
        return this.f68819d[oneof.r()] != null;
    }

    @Override
    public boolean isInitialized() {
        return t6(this.f68817b, this.f68818c);
    }

    @Override
    public P getDefaultInstanceForType() {
        return r6(this.f68817b);
    }

    @Override
    public c newBuilderForType() {
        return new c(this.f68817b, null);
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (this.f68817b.w().X2()) {
            this.f68818c.V(output);
            this.f68820e.a5(output);
        } else {
            this.f68818c.X(output);
            this.f68820e.writeTo(output);
        }
    }
}
