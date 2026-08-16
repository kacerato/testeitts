package com.google.protobuf;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12713t0;
import com.google.protobuf.AbstractC12719v0;
import com.google.protobuf.C12673f1;
import com.google.protobuf.C12699o0;
import com.google.protobuf.D0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.H0;
import com.google.protobuf.P;
import com.google.protobuf.Y0;
import com.google.protobuf.r2;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public abstract class AbstractC12722w0 extends AbstractC12653a implements Serializable {
    protected static boolean alwaysUseFieldBuilders = false;
    private static final long serialVersionUID = 1;
    protected r2 unknownFields;

    public class a implements c {

        public final AbstractC12653a.b f69624a;

        public a(final AbstractC12653a.b val$parent) {
            this.f69624a = val$parent;
        }

        @Override
        public void a() {
            this.f69624a.a();
        }
    }

    public static abstract class b<BuilderT extends b<BuilderT>> extends AbstractC12653a.AbstractC1035a<BuilderT> {
        private c builderParent;
        private boolean isClean;
        private b<BuilderT>.a meAsParent;
        private Object unknownFieldsOrBuilder;

        public class a implements c {
            public a() {
            }

            @Override
            public void a() {
                b.this.onChanged();
            }

            public a(b bVar, a aVar) {
                this();
            }
        }

        public b() {
            this(null);
        }

        public Map<Descriptors.f, Object> S0() {
            TreeMap treeMap = new TreeMap();
            List<Descriptors.f> s10 = internalGetFieldAccessorTable().f69634a.s();
            int i10 = 0;
            while (i10 < s10.size()) {
                Descriptors.f fVar = s10.get(i10);
                Descriptors.k o10 = fVar.o();
                if (o10 != null) {
                    i10 += o10.o() - 1;
                    if (hasOneof(o10)) {
                        fVar = getOneofFieldDescriptor(o10);
                        treeMap.put(fVar, getField(fVar));
                        i10++;
                    } else {
                        i10++;
                    }
                } else {
                    if (fVar.Z1()) {
                        List list = (List) getField(fVar);
                        if (!list.isEmpty()) {
                            treeMap.put(fVar, list);
                        }
                    } else {
                        if (!hasField(fVar)) {
                        }
                        treeMap.put(fVar, getField(fVar));
                    }
                    i10++;
                }
            }
            return treeMap;
        }

        public final BuilderT T0(final r2 unknownFields) {
            this.unknownFieldsOrBuilder = unknownFields;
            onChanged();
            return this;
        }

        @Override
        public void dispose() {
            this.builderParent = null;
        }

        @Override
        public Map<Descriptors.f, Object> getAllFields() {
            return Collections.unmodifiableMap(S0());
        }

        public Descriptors.b getDescriptorForType() {
            return internalGetFieldAccessorTable().f69634a;
        }

        @Override
        public Object getField(final Descriptors.f field) {
            Object c10 = internalGetFieldAccessorTable().e(field).c(this);
            return field.Z1() ? Collections.unmodifiableList((List) c10) : c10;
        }

        @Override
        public Y0.a getFieldBuilder(final Descriptors.f field) {
            return internalGetFieldAccessorTable().e(field).p(this);
        }

        @Override
        public Descriptors.f getOneofFieldDescriptor(final Descriptors.k oneof) {
            return internalGetFieldAccessorTable().f(oneof).b(this);
        }

        public c getParentForChildren() {
            if (this.meAsParent == null) {
                this.meAsParent = new a(this, null);
            }
            return this.meAsParent;
        }

        @Override
        public Object getRepeatedField(final Descriptors.f field, final int index) {
            return internalGetFieldAccessorTable().e(field).i(this, index);
        }

        @Override
        public Y0.a getRepeatedFieldBuilder(final Descriptors.f field, int index) {
            return internalGetFieldAccessorTable().e(field).o(this, index);
        }

        @Override
        public int getRepeatedFieldCount(final Descriptors.f field) {
            return internalGetFieldAccessorTable().e(field).k(this);
        }

        @Override
        public r2.b getUnknownFieldSetBuilder() {
            Object obj = this.unknownFieldsOrBuilder;
            if (obj instanceof r2) {
                this.unknownFieldsOrBuilder = ((r2) obj).toBuilder();
            }
            onChanged();
            return (r2.b) this.unknownFieldsOrBuilder;
        }

        @Override
        public final r2 getUnknownFields() {
            Object obj = this.unknownFieldsOrBuilder;
            return obj instanceof r2 ? (r2) obj : ((r2.b) obj).buildPartial();
        }

        @Override
        public boolean hasField(final Descriptors.f field) {
            return internalGetFieldAccessorTable().e(field).j(this);
        }

        @Override
        public boolean hasOneof(final Descriptors.k oneof) {
            return internalGetFieldAccessorTable().f(oneof).d(this);
        }

        public abstract h internalGetFieldAccessorTable();

        public S0 internalGetMapField(int fieldNumber) {
            throw new IllegalArgumentException("No map fields found in " + getClass().getName());
        }

        public S0 internalGetMutableMapField(int fieldNumber) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        public boolean isClean() {
            return this.isClean;
        }

        @Override
        public boolean isInitialized() {
            for (Descriptors.f fVar : getDescriptorForType().s()) {
                if (fVar.J() && !hasField(fVar)) {
                    return false;
                }
                if (fVar.v() == Descriptors.f.b.MESSAGE) {
                    if (fVar.Z1()) {
                        Iterator it = ((List) getField(fVar)).iterator();
                        while (it.hasNext()) {
                            if (!((Y0) it.next()).isInitialized()) {
                                return false;
                            }
                        }
                    } else if (hasField(fVar) && !((Y0) getField(fVar)).isInitialized()) {
                        return false;
                    }
                }
            }
            return true;
        }

        @Override
        public void markClean() {
            this.isClean = true;
        }

        public final void mergeUnknownLengthDelimitedField(int number, AbstractC12724x bytes) {
            getUnknownFieldSetBuilder().I6(number, bytes);
        }

        public final void mergeUnknownVarintField(int number, int value) {
            getUnknownFieldSetBuilder().J6(number, value);
        }

        @Override
        public Y0.a newBuilderForField(final Descriptors.f field) {
            return internalGetFieldAccessorTable().e(field).l();
        }

        public void onBuilt() {
            if (this.builderParent != null) {
                markClean();
            }
        }

        public final void onChanged() {
            c cVar;
            if (!this.isClean || (cVar = this.builderParent) == null) {
                return;
            }
            cVar.a();
            this.isClean = false;
        }

        public boolean parseUnknownField(C input, C12666d0 extensionRegistry, int tag) throws IOException {
            return input.g0() ? input.h0(tag) : getUnknownFieldSetBuilder().v6(tag, input);
        }

        @Override
        public void setUnknownFieldSetBuilder(r2.b builder) {
            this.unknownFieldsOrBuilder = builder;
            onChanged();
        }

        public BuilderT setUnknownFieldsProto3(final r2 unknownFields) {
            return T0(unknownFields);
        }

        public b(c builderParent) {
            this.unknownFieldsOrBuilder = r2.b0();
            this.builderParent = builderParent;
        }

        @Override
        public BuilderT addRepeatedField(final Descriptors.f field, final Object value) {
            internalGetFieldAccessorTable().e(field).f(this, value);
            return this;
        }

        @Override
        public BuilderT clearField(final Descriptors.f field) {
            internalGetFieldAccessorTable().e(field).a(this);
            return this;
        }

        @Override
        public BuilderT setField(final Descriptors.f field, final Object value) {
            internalGetFieldAccessorTable().e(field).e(this, value);
            return this;
        }

        @Override
        public BuilderT setRepeatedField(final Descriptors.f field, final int index, final Object value) {
            internalGetFieldAccessorTable().e(field).h(this, index, value);
            return this;
        }

        @Override
        public BuilderT setUnknownFields(final r2 unknownFields) {
            return T0(unknownFields);
        }

        @Override
        public BuilderT clearOneof(final Descriptors.k oneof) {
            internalGetFieldAccessorTable().f(oneof).a(this);
            return this;
        }

        @Override
        public BuilderT mergeUnknownFields(final r2 unknownFields) {
            if (r2.b0().equals(unknownFields)) {
                return this;
            }
            if (r2.b0().equals(this.unknownFieldsOrBuilder)) {
                this.unknownFieldsOrBuilder = unknownFields;
                onChanged();
                return this;
            }
            getUnknownFieldSetBuilder().B6(unknownFields);
            onChanged();
            return this;
        }

        @Override
        public BuilderT s6() {
            this.unknownFieldsOrBuilder = r2.b0();
            onChanged();
            return this;
        }

        @Override
        public BuilderT mo1246clone() {
            BuilderT buildert = (BuilderT) getDefaultInstanceForType().newBuilderForType();
            buildert.mergeFrom(buildPartial());
            return buildert;
        }
    }

    public interface c extends AbstractC12653a.b {
    }

    public static abstract class d<MessageT extends e<MessageT>, BuilderT extends d<MessageT, BuilderT>> extends b<BuilderT> implements f<MessageT> {

        public C12699o0.b<Descriptors.f> f69627b;

        public d() {
        }

        private void J6(final Descriptors.f field) {
            if (field.q() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        private void K6(final Z<MessageT, ?> extension) {
            if (extension.h().q() == getDescriptorForType()) {
                return;
            }
            throw new IllegalArgumentException("Extension is for type \"" + extension.h().q().b() + "\" which does not match message type \"" + getDescriptorForType().b() + "\".");
        }

        public C12699o0<Descriptors.f> r6() {
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            return bVar == null ? C12699o0.s() : bVar.d();
        }

        private void x6() {
            if (this.f69627b == null) {
                this.f69627b = C12699o0.M();
            }
        }

        public final void A6(final e<?> other) {
            if (other.f69629b != null) {
                x6();
                this.f69627b.p(other.f69629b);
                onChanged();
            }
        }

        @Override
        public final <T> boolean B(final AbstractC12713t0.n<MessageT, T> extension) {
            return u(extension);
        }

        public final <T> BuilderT B6(final Z<MessageT, List<T>> extension, final int index, final T value) {
            return D6(extension, index, value);
        }

        public final <T> BuilderT C6(final Z<MessageT, T> extension, final T value) {
            return E6(extension, value);
        }

        public final <T> BuilderT D6(final AbstractC12654a0<MessageT, List<T>> extensionLite, final int index, final T value) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(extensionLite);
            K6(H32);
            x6();
            this.f69627b.w(H32.h(), index, H32.m(value));
            onChanged();
            return this;
        }

        public final <T> BuilderT E6(final AbstractC12654a0<MessageT, T> extensionLite, final T value) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(extensionLite);
            K6(H32);
            x6();
            this.f69627b.v(H32.h(), H32.n(value));
            onChanged();
            return this;
        }

        public <T> BuilderT F6(final AbstractC12713t0.n<MessageT, List<T>> extension, final int index, final T value) {
            return D6(extension, index, value);
        }

        public <T> BuilderT G6(final AbstractC12713t0.n<MessageT, T> extension, final T value) {
            return E6(extension, value);
        }

        @Override
        public BuilderT setField(final Descriptors.f field, final Object value) {
            if (!field.F()) {
                return (BuilderT) super.setField(field, value);
            }
            J6(field);
            x6();
            this.f69627b.v(field, value);
            onChanged();
            return this;
        }

        public final <T> BuilderT I1(final Z<MessageT, List<T>> extension, final T value) {
            return v3(extension, value);
        }

        @Override
        public BuilderT setRepeatedField(final Descriptors.f field, final int index, final Object value) {
            if (!field.F()) {
                return (BuilderT) super.setRepeatedField(field, index, value);
            }
            J6(field);
            x6();
            this.f69627b.w(field, index, value);
            onChanged();
            return this;
        }

        @Override
        public final <T> T M(Z<MessageT, List<T>> z10, int i10) {
            return (T) z(z10, i10);
        }

        @Override
        public final <T> int Q(final AbstractC12713t0.n<MessageT, List<T>> extension) {
            return s(extension);
        }

        @Override
        public final <T> T R(AbstractC12713t0.n<MessageT, T> nVar) {
            return (T) r(nVar);
        }

        @Override
        public final <T> boolean X(final Z<MessageT, T> extension) {
            return u(extension);
        }

        @Override
        public final <T> int Z(final Z<MessageT, List<T>> extension) {
            return s(extension);
        }

        public <T> BuilderT a5(final AbstractC12713t0.n<MessageT, List<T>> extension, final T value) {
            return v3(extension, value);
        }

        @Override
        public Map<Descriptors.f, Object> getAllFields() {
            Map S02 = S0();
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            if (bVar != null) {
                S02.putAll(bVar.h());
            }
            return Collections.unmodifiableMap(S02);
        }

        @Override
        public Object getField(final Descriptors.f field) {
            if (!field.F()) {
                return super.getField(field);
            }
            J6(field);
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            Object i10 = bVar == null ? null : bVar.i(field);
            return i10 == null ? field.v() == Descriptors.f.b.MESSAGE ? P.r6(field.x()) : field.r() : i10;
        }

        @Override
        public Y0.a getFieldBuilder(final Descriptors.f field) {
            if (!field.F()) {
                return super.getFieldBuilder(field);
            }
            J6(field);
            if (field.v() != Descriptors.f.b.MESSAGE) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
            x6();
            Object j10 = this.f69627b.j(field);
            if (j10 == null) {
                P.c u62 = P.u6(field.x());
                this.f69627b.v(field, u62);
                onChanged();
                return u62;
            }
            if (j10 instanceof Y0.a) {
                return (Y0.a) j10;
            }
            if (!(j10 instanceof Y0)) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Y0.a builder = ((Y0) j10).toBuilder();
            this.f69627b.v(field, builder);
            onChanged();
            return builder;
        }

        @Override
        public Object getRepeatedField(final Descriptors.f field, final int index) {
            if (!field.F()) {
                return super.getRepeatedField(field, index);
            }
            J6(field);
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            if (bVar != null) {
                return bVar.k(field, index);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override
        public Y0.a getRepeatedFieldBuilder(final Descriptors.f field, final int index) {
            if (!field.F()) {
                return super.getRepeatedFieldBuilder(field, index);
            }
            J6(field);
            x6();
            if (field.v() != Descriptors.f.b.MESSAGE) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Object l10 = this.f69627b.l(field, index);
            if (l10 instanceof Y0.a) {
                return (Y0.a) l10;
            }
            if (!(l10 instanceof Y0)) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Y0.a builder = ((Y0) l10).toBuilder();
            this.f69627b.w(field, index, builder);
            onChanged();
            return builder;
        }

        @Override
        public int getRepeatedFieldCount(final Descriptors.f field) {
            if (!field.F()) {
                return super.getRepeatedFieldCount(field);
            }
            J6(field);
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            if (bVar == null) {
                return 0;
            }
            return bVar.m(field);
        }

        @Override
        public boolean hasField(final Descriptors.f field) {
            if (!field.F()) {
                return super.hasField(field);
            }
            J6(field);
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            return bVar != null && bVar.n(field);
        }

        @Override
        public boolean isInitialized() {
            return super.isInitialized() && y6();
        }

        @Override
        public final <T> T l0(Z<MessageT, T> z10) {
            return (T) r(z10);
        }

        @Override
        public Y0.a newBuilderForField(final Descriptors.f field) {
            return field.F() ? P.u6(field.x()) : super.newBuilderForField(field);
        }

        @Override
        public boolean parseUnknownField(C input, C12666d0 extensionRegistry, int tag) throws IOException {
            x6();
            return C12673f1.g(input, input.g0() ? null : getUnknownFieldSetBuilder(), extensionRegistry, getDescriptorForType(), new C12673f1.d(this.f69627b), tag);
        }

        @Override
        public BuilderT addRepeatedField(final Descriptors.f field, final Object value) {
            if (!field.F()) {
                return (BuilderT) super.addRepeatedField(field, value);
            }
            J6(field);
            x6();
            this.f69627b.a(field, value);
            onChanged();
            return this;
        }

        @Override
        public final <T> T r(AbstractC12654a0<MessageT, T> abstractC12654a0) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(abstractC12654a0);
            K6(H32);
            Descriptors.f h10 = H32.h();
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            Object i10 = bVar == null ? null : bVar.i(h10);
            return i10 == null ? h10.Z1() ? (T) Collections.emptyList() : h10.v() == Descriptors.f.b.MESSAGE ? (T) H32.c() : (T) H32.g(h10.r()) : (T) H32.g(i10);
        }

        @Override
        public final <T> int s(final AbstractC12654a0<MessageT, List<T>> extensionLite) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(extensionLite);
            K6(H32);
            Descriptors.f h10 = H32.h();
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            if (bVar == null) {
                return 0;
            }
            return bVar.m(h10);
        }

        @Override
        public final <T> T s0(AbstractC12713t0.n<MessageT, List<T>> nVar, int i10) {
            return (T) z(nVar, i10);
        }

        @Override
        public BuilderT s6() {
            this.f69627b = null;
            return (BuilderT) super.s6();
        }

        public final <T> BuilderT t6(final Z<MessageT, T> extension) {
            return u6(extension);
        }

        @Override
        public final <T> boolean u(final AbstractC12654a0<MessageT, T> extensionLite) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(extensionLite);
            K6(H32);
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            return bVar != null && bVar.n(H32.h());
        }

        public final <T> BuilderT u6(final AbstractC12654a0<MessageT, T> extensionLite) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(extensionLite);
            K6(H32);
            x6();
            this.f69627b.e(H32.h());
            onChanged();
            return this;
        }

        public final <T> BuilderT v3(final AbstractC12654a0<MessageT, List<T>> extensionLite, final T value) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(extensionLite);
            K6(H32);
            x6();
            this.f69627b.a(H32.h(), H32.m(value));
            onChanged();
            return this;
        }

        public <T> BuilderT v6(final AbstractC12713t0.n<MessageT, T> extension) {
            return u6(extension);
        }

        @Override
        public BuilderT clearField(final Descriptors.f field) {
            if (!field.F()) {
                return (BuilderT) super.clearField(field);
            }
            J6(field);
            x6();
            this.f69627b.e(field);
            onChanged();
            return this;
        }

        public boolean y6() {
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            return bVar == null || bVar.o();
        }

        @Override
        public final <T> T z(AbstractC12654a0<MessageT, List<T>> abstractC12654a0, int i10) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(abstractC12654a0);
            K6(H32);
            Descriptors.f h10 = H32.h();
            C12699o0.b<Descriptors.f> bVar = this.f69627b;
            if (bVar != null) {
                return (T) H32.l(bVar.k(h10, i10));
            }
            throw new IndexOutOfBoundsException();
        }

        public void z6(C12699o0<Descriptors.f> extensions) {
            this.f69627b = C12699o0.b.g(extensions);
        }

        public d(c parent) {
            super(parent);
        }
    }

    public interface f<MessageT extends e<MessageT>> extends InterfaceC12670e1 {
        <T> boolean B(AbstractC12713t0.n<MessageT, T> extension);

        <T> T M(Z<MessageT, List<T>> extension, int index);

        <T> int Q(AbstractC12713t0.n<MessageT, List<T>> extension);

        <T> T R(AbstractC12713t0.n<MessageT, T> extension);

        <T> boolean X(Z<MessageT, T> extension);

        <T> int Z(Z<MessageT, List<T>> extension);

        @Override
        Y0 getDefaultInstanceForType();

        <T> T l0(Z<MessageT, T> extension);

        <T> T r(AbstractC12654a0<MessageT, T> extension);

        <T> int s(AbstractC12654a0<MessageT, List<T>> extension);

        <T> T s0(AbstractC12713t0.n<MessageT, List<T>> extension, int index);

        <T> boolean u(AbstractC12654a0<MessageT, T> extension);

        <T> T z(AbstractC12654a0<MessageT, List<T>> extension, int index);
    }

    public interface g {
        Descriptors.f getDescriptor();
    }

    public static final class i {

        public static final i f69691a = new i();
    }

    public AbstractC12722w0() {
        this.unknownFields = r2.b0();
    }

    public static <MessageT extends e<MessageT>, T> Z<MessageT, T> H3(AbstractC12654a0<MessageT, T> extension) {
        if (extension.e()) {
            throw new IllegalArgumentException("Expected non-lite extension.");
        }
        return (Z) extension;
    }

    public static Method V4(final Class<?> clazz, final String name, final Class<?>... params) {
        try {
            return clazz.getMethod(name, params);
        } catch (NoSuchMethodException e10) {
            throw new IllegalStateException("Generated message class \"" + clazz.getName() + "\" missing method \"" + name + "\".", e10);
        }
    }

    public static boolean canUseUnsafe() {
        return x2.U() && x2.V();
    }

    public static int computeStringSize(final int fieldNumber, final Object value) {
        return value instanceof String ? CodedOutputStream.V0(fieldNumber, (String) value) : CodedOutputStream.g0(fieldNumber, (AbstractC12724x) value);
    }

    public static int computeStringSizeNoTag(final Object value) {
        return value instanceof String ? CodedOutputStream.W0((String) value) : CodedOutputStream.h0((AbstractC12724x) value);
    }

    public static D0.a emptyBooleanList() {
        return C12712t.g();
    }

    public static D0.b emptyDoubleList() {
        return J.g();
    }

    public static D0.f emptyFloatList() {
        return C12705q0.g();
    }

    public static D0.g emptyIntList() {
        return C0.g();
    }

    public static D0.i emptyLongList() {
        return O0.g();
    }

    public static void enableAlwaysUseFieldBuildersForTesting() {
        setAlwaysUseFieldBuildersForTesting(true);
    }

    public Map<Descriptors.f, Object> i4(boolean getBytesForString) {
        TreeMap treeMap = new TreeMap();
        List<Descriptors.f> s10 = internalGetFieldAccessorTable().f69634a.s();
        int i10 = 0;
        while (i10 < s10.size()) {
            Descriptors.f fVar = s10.get(i10);
            Descriptors.k o10 = fVar.o();
            if (o10 != null) {
                i10 += o10.o() - 1;
                if (hasOneof(o10)) {
                    fVar = getOneofFieldDescriptor(o10);
                    if (getBytesForString || fVar.v() != Descriptors.f.b.STRING) {
                        treeMap.put(fVar, getField(fVar));
                    } else {
                        treeMap.put(fVar, getFieldRaw(fVar));
                    }
                    i10++;
                } else {
                    i10++;
                }
            } else {
                if (fVar.Z1()) {
                    List list = (List) getField(fVar);
                    if (!list.isEmpty()) {
                        treeMap.put(fVar, list);
                    }
                } else {
                    if (!hasField(fVar)) {
                    }
                    if (getBytesForString) {
                    }
                    treeMap.put(fVar, getField(fVar));
                }
                i10++;
            }
        }
        return treeMap;
    }

    public static boolean isStringEmpty(final Object value) {
        return value instanceof String ? ((String) value).isEmpty() : ((AbstractC12724x) value).isEmpty();
    }

    public static <ListT extends D0.k<?>> ListT makeMutableCopy(ListT listt) {
        int size = listt.size();
        return (ListT) listt.q2(size == 0 ? 10 : size * 2);
    }

    public static D0.g mutableCopy(D0.g list) {
        return (D0.g) makeMutableCopy(list);
    }

    public static D0.a newBooleanList() {
        return new C12712t();
    }

    public static D0.b newDoubleList() {
        return new J();
    }

    public static D0.f newFloatList() {
        return new C12705q0();
    }

    public static D0.g newIntList() {
        return new C0();
    }

    public static D0.i newLongList() {
        return new O0();
    }

    public static <M extends Y0> M parseDelimitedWithIOException(InterfaceC12723w1<M> parser, InputStream input) throws IOException {
        try {
            return parser.parseDelimitedFrom(input);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    public static <M extends Y0> M parseWithIOException(InterfaceC12723w1<M> parser, InputStream input) throws IOException {
        try {
            return parser.parseFrom(input);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    @A
    public static Object q6(final Method method, final Object object, final Object... params) {
        try {
            return method.invoke(object, params);
        } catch (IllegalAccessException e10) {
            throw new IllegalStateException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new IllegalStateException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static <V> void r6(CodedOutputStream out, Map<Boolean, V> m10, Q0<Boolean, V> defaultEntry, int fieldNumber, boolean key) throws IOException {
        if (m10.containsKey(Boolean.valueOf(key))) {
            out.L1(fieldNumber, defaultEntry.newBuilderForType().w6(Boolean.valueOf(key)).z6(m10.get(Boolean.valueOf(key))).build());
        }
    }

    public static <K, V> void s6(CodedOutputStream out, Map<K, V> m10, Q0<K, V> defaultEntry, int fieldNumber) throws IOException {
        for (Map.Entry<K, V> entry : m10.entrySet()) {
            out.L1(fieldNumber, defaultEntry.newBuilderForType().w6(entry.getKey()).z6(entry.getValue()).build());
        }
    }

    public static <V> void serializeBooleanMapTo(CodedOutputStream out, S0<Boolean, V> field, Q0<Boolean, V> defaultEntry, int fieldNumber) throws IOException {
        Map<Boolean, V> j10 = field.j();
        if (!out.h1()) {
            s6(out, j10, defaultEntry, fieldNumber);
        } else {
            r6(out, j10, defaultEntry, fieldNumber, false);
            r6(out, j10, defaultEntry, fieldNumber, true);
        }
    }

    public static <V> void serializeIntegerMapTo(CodedOutputStream out, S0<Integer, V> field, Q0<Integer, V> defaultEntry, int fieldNumber) throws IOException {
        Map<Integer, V> j10 = field.j();
        if (!out.h1()) {
            s6(out, j10, defaultEntry, fieldNumber);
            return;
        }
        int size = j10.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = j10.o().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            iArr[i10] = it.next().intValue();
            i10++;
        }
        Arrays.sort(iArr);
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = iArr[i11];
            out.L1(fieldNumber, defaultEntry.newBuilderForType().w6(Integer.valueOf(i12)).z6(j10.get(Integer.valueOf(i12))).build());
        }
    }

    public static <V> void serializeLongMapTo(CodedOutputStream out, S0<Long, V> field, Q0<Long, V> defaultEntry, int fieldNumber) throws IOException {
        Map<Long, V> j10 = field.j();
        if (!out.h1()) {
            s6(out, j10, defaultEntry, fieldNumber);
            return;
        }
        int size = j10.size();
        long[] jArr = new long[size];
        Iterator<Long> it = j10.o().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            jArr[i10] = it.next().longValue();
            i10++;
        }
        Arrays.sort(jArr);
        for (int i11 = 0; i11 < size; i11++) {
            long j11 = jArr[i11];
            out.L1(fieldNumber, defaultEntry.newBuilderForType().w6(Long.valueOf(j11)).z6(j10.get(Long.valueOf(j11))).build());
        }
    }

    public static <V> void serializeStringMapTo(CodedOutputStream out, S0<String, V> field, Q0<String, V> defaultEntry, int fieldNumber) throws IOException {
        Map<String, V> j10 = field.j();
        if (!out.h1()) {
            s6(out, j10, defaultEntry, fieldNumber);
            return;
        }
        String[] strArr = (String[]) j10.o().toArray(new String[j10.size()]);
        Arrays.sort(strArr);
        for (String str : strArr) {
            out.L1(fieldNumber, defaultEntry.newBuilderForType().w6(str).z6(j10.get(str)).build());
        }
    }

    public static void setAlwaysUseFieldBuildersForTesting(boolean useBuilders) {
        alwaysUseFieldBuilders = useBuilders;
    }

    public static void writeString(CodedOutputStream output, final int fieldNumber, final Object value) throws IOException {
        if (value instanceof String) {
            output.e(fieldNumber, (String) value);
        } else {
            output.h(fieldNumber, (AbstractC12724x) value);
        }
    }

    public static void writeStringNoTag(CodedOutputStream output, final Object value) throws IOException {
        if (value instanceof String) {
            output.f2((String) value);
        } else {
            output.z1((AbstractC12724x) value);
        }
    }

    @Override
    public Map<Descriptors.f, Object> getAllFields() {
        return Collections.unmodifiableMap(i4(false));
    }

    public Map<Descriptors.f, Object> getAllFieldsRaw() {
        return Collections.unmodifiableMap(i4(true));
    }

    @Override
    public Descriptors.b getDescriptorForType() {
        return internalGetFieldAccessorTable().f69634a;
    }

    @Override
    public Object getField(final Descriptors.f field) {
        return internalGetFieldAccessorTable().e(field).b(this);
    }

    public Object getFieldRaw(final Descriptors.f field) {
        return internalGetFieldAccessorTable().e(field).n(this);
    }

    @Override
    public Descriptors.f getOneofFieldDescriptor(final Descriptors.k oneof) {
        return internalGetFieldAccessorTable().f(oneof).c(this);
    }

    @Override
    public InterfaceC12723w1<? extends AbstractC12722w0> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override
    public Object getRepeatedField(final Descriptors.f field, final int index) {
        return internalGetFieldAccessorTable().e(field).m(this, index);
    }

    @Override
    public int getRepeatedFieldCount(final Descriptors.f field) {
        return internalGetFieldAccessorTable().e(field).d(this);
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int e10 = C12673f1.e(this, getAllFieldsRaw());
        this.memoizedSize = e10;
        return e10;
    }

    @Override
    public r2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override
    public boolean hasField(final Descriptors.f field) {
        return internalGetFieldAccessorTable().e(field).g(this);
    }

    @Override
    public boolean hasOneof(final Descriptors.k oneof) {
        return internalGetFieldAccessorTable().f(oneof).e(this);
    }

    public abstract h internalGetFieldAccessorTable();

    public S0 internalGetMapField(int fieldNumber) {
        throw new IllegalArgumentException("No map fields found in " + getClass().getName());
    }

    @Override
    public boolean isInitialized() {
        for (Descriptors.f fVar : getDescriptorForType().s()) {
            if (fVar.J() && !hasField(fVar)) {
                return false;
            }
            if (fVar.v() == Descriptors.f.b.MESSAGE) {
                if (fVar.Z1()) {
                    Iterator it = ((List) getField(fVar)).iterator();
                    while (it.hasNext()) {
                        if (!((Y0) it.next()).isInitialized()) {
                            return false;
                        }
                    }
                } else if (hasField(fVar) && !((Y0) getField(fVar)).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    public void makeExtensionsImmutable() {
    }

    @Deprecated
    public void mergeFromAndMakeImmutableInternal(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        L1 j10 = C12732z1.a().j(this);
        try {
            j10.P1(this, D.U(input), extensionRegistry);
            j10.M1(this);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(this);
        } catch (IOException e11) {
            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
        }
    }

    @Override
    public Y0.a newBuilderForType(final AbstractC12653a.b parent) {
        return newBuilderForType((c) new a(parent));
    }

    public abstract Y0.a newBuilderForType(c parent);

    public Object newInstance(i unused) {
        throw new UnsupportedOperationException("This method must be overridden by the subclass.");
    }

    public boolean parseUnknownField(C input, r2.b unknownFields, C12666d0 extensionRegistry, int tag) throws IOException {
        return input.g0() ? input.h0(tag) : unknownFields.v6(tag, input);
    }

    public boolean parseUnknownFieldProto3(C input, r2.b unknownFields, C12666d0 extensionRegistry, int tag) throws IOException {
        return parseUnknownField(input, unknownFields, extensionRegistry, tag);
    }

    public void setUnknownFields(r2 unknownFields) {
        this.unknownFields = unknownFields;
    }

    public Object writeReplace() throws ObjectStreamException {
        return new AbstractC12719v0.j(this);
    }

    @Override
    public void writeTo(final CodedOutputStream output) throws IOException {
        C12673f1.l(this, getAllFieldsRaw(), output, false);
    }

    public static abstract class e<MessageT extends e<MessageT>> extends AbstractC12722w0 implements f<MessageT> {

        public static final long f69628c = 1;

        public final C12699o0<Descriptors.f> f69629b;

        public class a {

            public final Iterator<Map.Entry<Descriptors.f, Object>> f69630a;

            public Map.Entry<Descriptors.f, Object> f69631b;

            public final boolean f69632c;

            public a(e eVar, boolean z10, a aVar) {
                this(z10);
            }

            public void a(final int end, final CodedOutputStream output) throws IOException {
                while (true) {
                    Map.Entry<Descriptors.f, Object> entry = this.f69631b;
                    if (entry == null || entry.getKey().getNumber() >= end) {
                        return;
                    }
                    Descriptors.f key = this.f69631b.getKey();
                    if (!this.f69632c || key.V1() != A2.c.MESSAGE || key.Z1()) {
                        C12699o0.U(key, this.f69631b.getValue(), output);
                    } else if (this.f69631b instanceof H0.b) {
                        output.Y1(key.getNumber(), ((H0.b) this.f69631b).b().n());
                    } else {
                        output.P1(key.getNumber(), (Y0) this.f69631b.getValue());
                    }
                    if (this.f69630a.hasNext()) {
                        this.f69631b = this.f69630a.next();
                    } else {
                        this.f69631b = null;
                    }
                }
            }

            public a(final boolean messageSetWireFormat) {
                Iterator<Map.Entry<Descriptors.f, Object>> I10 = e.this.f69629b.I();
                this.f69630a = I10;
                if (I10.hasNext()) {
                    this.f69631b = I10.next();
                }
                this.f69632c = messageSetWireFormat;
            }
        }

        public e() {
            this.f69629b = C12699o0.N();
        }

        private void A6(final Descriptors.f field) {
            if (field.q() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        private void B6(final Z<MessageT, ?> extension) {
            if (extension.h().q() == getDescriptorForType()) {
                return;
            }
            throw new IllegalArgumentException("Extension is for type \"" + extension.h().q().b() + "\" which does not match message type \"" + getDescriptorForType().b() + "\".");
        }

        @Override
        public final <T> boolean B(final AbstractC12713t0.n<MessageT, T> extension) {
            return u(extension);
        }

        @Override
        public final <T> T M(Z<MessageT, List<T>> z10, int i10) {
            return (T) z(z10, i10);
        }

        @Override
        public final <T> int Q(final AbstractC12713t0.n<MessageT, List<T>> extension) {
            return s(extension);
        }

        @Override
        public final <T> T R(AbstractC12713t0.n<MessageT, T> nVar) {
            return (T) r(nVar);
        }

        @Override
        public final <T> boolean X(final Z<MessageT, T> extension) {
            return u(extension);
        }

        @Override
        public final <T> int Z(final Z<MessageT, List<T>> extension) {
            return s(extension);
        }

        @Override
        public Map<Descriptors.f, Object> getAllFields() {
            Map i42 = i4(false);
            i42.putAll(x6());
            return Collections.unmodifiableMap(i42);
        }

        @Override
        public Map<Descriptors.f, Object> getAllFieldsRaw() {
            Map i42 = i4(false);
            i42.putAll(x6());
            return Collections.unmodifiableMap(i42);
        }

        @Override
        public Object getField(final Descriptors.f field) {
            if (!field.F()) {
                return super.getField(field);
            }
            A6(field);
            Object u10 = this.f69629b.u(field);
            return u10 == null ? field.Z1() ? Collections.emptyList() : field.v() == Descriptors.f.b.MESSAGE ? P.r6(field.x()) : field.r() : u10;
        }

        @Override
        public Object getRepeatedField(final Descriptors.f field, final int index) {
            if (!field.F()) {
                return super.getRepeatedField(field, index);
            }
            A6(field);
            return this.f69629b.x(field, index);
        }

        @Override
        public int getRepeatedFieldCount(final Descriptors.f field) {
            if (!field.F()) {
                return super.getRepeatedFieldCount(field);
            }
            A6(field);
            return this.f69629b.y(field);
        }

        @Override
        public boolean hasField(final Descriptors.f field) {
            if (!field.F()) {
                return super.hasField(field);
            }
            A6(field);
            return this.f69629b.B(field);
        }

        @Override
        public boolean isInitialized() {
            return super.isInitialized() && u6();
        }

        @Override
        public final <T> T l0(Z<MessageT, T> z10) {
            return (T) r(z10);
        }

        @Override
        public void makeExtensionsImmutable() {
            this.f69629b.J();
        }

        @Override
        public boolean parseUnknownField(C input, r2.b unknownFields, C12666d0 extensionRegistry, int tag) throws IOException {
            if (input.g0()) {
                unknownFields = null;
            }
            return C12673f1.g(input, unknownFields, extensionRegistry, getDescriptorForType(), new C12673f1.c(this.f69629b), tag);
        }

        @Override
        public boolean parseUnknownFieldProto3(C input, r2.b unknownFields, C12666d0 extensionRegistry, int tag) throws IOException {
            return parseUnknownField(input, unknownFields, extensionRegistry, tag);
        }

        @Override
        public final <T> T r(AbstractC12654a0<MessageT, T> abstractC12654a0) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(abstractC12654a0);
            B6(H32);
            Descriptors.f h10 = H32.h();
            Object u10 = this.f69629b.u(h10);
            return u10 == null ? h10.Z1() ? (T) Collections.emptyList() : h10.v() == Descriptors.f.b.MESSAGE ? (T) H32.c() : (T) H32.g(h10.r()) : (T) H32.g(u10);
        }

        @Override
        public final <T> int s(final AbstractC12654a0<MessageT, List<T>> extensionLite) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(extensionLite);
            B6(H32);
            return this.f69629b.y(H32.h());
        }

        @Override
        public final <T> T s0(AbstractC12713t0.n<MessageT, List<T>> nVar, int i10) {
            return (T) z(nVar, i10);
        }

        @Override
        public final <T> boolean u(final AbstractC12654a0<MessageT, T> extensionLite) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(extensionLite);
            B6(H32);
            return this.f69629b.B(H32.h());
        }

        public boolean u6() {
            return this.f69629b.E();
        }

        public int v6() {
            return this.f69629b.z();
        }

        public int w6() {
            return this.f69629b.v();
        }

        public Map<Descriptors.f, Object> x6() {
            return this.f69629b.t();
        }

        public e<MessageT>.a y6() {
            return new a(this, false, null);
        }

        @Override
        public final <T> T z(AbstractC12654a0<MessageT, List<T>> abstractC12654a0, int i10) {
            Z<MessageT, ?> H32 = AbstractC12722w0.H3(abstractC12654a0);
            B6(H32);
            return (T) H32.l(this.f69629b.x(H32.h(), i10));
        }

        public e<MessageT>.a z6() {
            return new a(this, true, null);
        }

        public e(d<MessageT, ?> builder) {
            super(builder);
            this.f69629b = builder.r6();
        }
    }

    public static final class h {

        public final Descriptors.b f69634a;

        public final a[] f69635b;

        public String[] f69636c;

        public final c[] f69637d;

        public volatile boolean f69638e;

        public interface a {
            void a(b<?> builder);

            Object b(AbstractC12722w0 message);

            Object c(b<?> builder);

            int d(AbstractC12722w0 message);

            void e(b<?> builder, Object value);

            void f(b<?> builder, Object value);

            boolean g(AbstractC12722w0 message);

            void h(b<?> builder, int index, Object value);

            Object i(b<?> builder, int index);

            boolean j(b<?> builder);

            int k(b<?> builder);

            Y0.a l();

            Object m(AbstractC12722w0 message, int index);

            Object n(AbstractC12722w0 message);

            Y0.a o(b<?> builder, int index);

            Y0.a p(b<?> builder);
        }

        public static class b implements a {

            public final Descriptors.f f69639a;

            public final Y0 f69640b;

            public b(final Descriptors.f descriptor, final Class<? extends AbstractC12722w0> messageClass) {
                this.f69639a = descriptor;
                this.f69640b = s((AbstractC12722w0) AbstractC12722w0.q6(AbstractC12722w0.V4(messageClass, G.f68056a, new Class[0]), null, new Object[0])).k();
            }

            @Override
            public void a(b<?> builder) {
                t(builder).l().clear();
            }

            @Override
            public Object b(AbstractC12722w0 message) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < d(message); i10++) {
                    arrayList.add(m(message, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override
            public Object c(b<?> builder) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < k(builder); i10++) {
                    arrayList.add(i(builder, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override
            public int d(AbstractC12722w0 message) {
                return s(message).i().size();
            }

            @Override
            public void e(b<?> builder, Object value) {
                a(builder);
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    f(builder, it.next());
                }
            }

            @Override
            public void f(b<?> builder, Object value) {
                t(builder).l().add(q((Y0) value));
            }

            @Override
            public boolean g(AbstractC12722w0 message) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override
            public void h(b<?> builder, int index, Object value) {
                t(builder).l().set(index, q((Y0) value));
            }

            @Override
            public Object i(b<?> builder, int index) {
                return r(builder).i().get(index);
            }

            @Override
            public boolean j(b<?> builder) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override
            public int k(b<?> builder) {
                return r(builder).i().size();
            }

            @Override
            public Y0.a l() {
                return this.f69640b.newBuilderForType();
            }

            @Override
            public Object m(AbstractC12722w0 message, int index) {
                return s(message).i().get(index);
            }

            @Override
            public Object n(AbstractC12722w0 message) {
                return b(message);
            }

            @Override
            public Y0.a o(b<?> builder, int index) {
                throw new UnsupportedOperationException("Map fields cannot be repeated");
            }

            @Override
            public Y0.a p(b<?> builder) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            public final Y0 q(Y0 value) {
                if (value == null) {
                    return null;
                }
                return this.f69640b.getClass().isInstance(value) ? value : this.f69640b.toBuilder().mergeFrom(value).build();
            }

            public final S0<?, ?> r(b<?> builder) {
                return builder.internalGetMapField(this.f69639a.getNumber());
            }

            public final S0<?, ?> s(AbstractC12722w0 message) {
                return message.internalGetMapField(this.f69639a.getNumber());
            }

            public final S0<?, ?> t(b<?> builder) {
                return builder.internalGetMutableMapField(this.f69639a.getNumber());
            }
        }

        public static class c {

            public final Descriptors.b f69641a;

            public final Method f69642b;

            public final Method f69643c;

            public final Method f69644d;

            public final Descriptors.f f69645e;

            public c(final Descriptors.b descriptor, final int oneofIndex, final String camelCaseName, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass) {
                this.f69641a = descriptor;
                Descriptors.k kVar = descriptor.v().get(oneofIndex);
                if (kVar.t()) {
                    this.f69642b = null;
                    this.f69643c = null;
                    this.f69645e = kVar.q().get(0);
                } else {
                    this.f69642b = AbstractC12722w0.V4(messageClass, "get" + camelCaseName + "Case", new Class[0]);
                    this.f69643c = AbstractC12722w0.V4(builderClass, "get" + camelCaseName + "Case", new Class[0]);
                    this.f69645e = null;
                }
                this.f69644d = AbstractC12722w0.V4(builderClass, "clear" + camelCaseName, new Class[0]);
            }

            public void a(final b<?> builder) {
                AbstractC12722w0.q6(this.f69644d, builder, new Object[0]);
            }

            public Descriptors.f b(b<?> builder) {
                Descriptors.f fVar = this.f69645e;
                if (fVar != null) {
                    if (builder.hasField(fVar)) {
                        return this.f69645e;
                    }
                    return null;
                }
                int number = ((D0.c) AbstractC12722w0.q6(this.f69643c, builder, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f69641a.k(number);
                }
                return null;
            }

            public Descriptors.f c(final AbstractC12722w0 message) {
                Descriptors.f fVar = this.f69645e;
                if (fVar != null) {
                    if (message.hasField(fVar)) {
                        return this.f69645e;
                    }
                    return null;
                }
                int number = ((D0.c) AbstractC12722w0.q6(this.f69642b, message, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f69641a.k(number);
                }
                return null;
            }

            public boolean d(b<?> builder) {
                Descriptors.f fVar = this.f69645e;
                return fVar != null ? builder.hasField(fVar) : ((D0.c) AbstractC12722w0.q6(this.f69643c, builder, new Object[0])).getNumber() != 0;
            }

            public boolean e(final AbstractC12722w0 message) {
                Descriptors.f fVar = this.f69645e;
                return fVar != null ? message.hasField(fVar) : ((D0.c) AbstractC12722w0.q6(this.f69642b, message, new Object[0])).getNumber() != 0;
            }
        }

        public static final class d extends e {

            public final Descriptors.d f69646c;

            public final Method f69647d;

            public final Method f69648e;

            public final boolean f69649f;

            public Method f69650g;

            public Method f69651h;

            public Method f69652i;

            public Method f69653j;

            public d(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass) {
                super(descriptor, camelCaseName, messageClass, builderClass);
                this.f69646c = descriptor.W1();
                this.f69647d = AbstractC12722w0.V4(this.f69654a, "valueOf", Descriptors.e.class);
                this.f69648e = AbstractC12722w0.V4(this.f69654a, "getValueDescriptor", new Class[0]);
                boolean H10 = descriptor.a().H();
                this.f69649f = H10;
                if (H10) {
                    String str = "get" + camelCaseName + XMLExporter.ELEMENT_VALUE;
                    Class<Integer> cls = Integer.TYPE;
                    this.f69650g = AbstractC12722w0.V4(messageClass, str, cls);
                    this.f69651h = AbstractC12722w0.V4(builderClass, "get" + camelCaseName + XMLExporter.ELEMENT_VALUE, cls);
                    this.f69652i = AbstractC12722w0.V4(builderClass, "set" + camelCaseName + XMLExporter.ELEMENT_VALUE, cls, cls);
                    this.f69653j = AbstractC12722w0.V4(builderClass, "add" + camelCaseName + XMLExporter.ELEMENT_VALUE, cls);
                }
            }

            @Override
            public Object b(final AbstractC12722w0 message) {
                ArrayList arrayList = new ArrayList();
                int d10 = d(message);
                for (int i10 = 0; i10 < d10; i10++) {
                    arrayList.add(m(message, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override
            public Object c(final b<?> builder) {
                ArrayList arrayList = new ArrayList();
                int k10 = k(builder);
                for (int i10 = 0; i10 < k10; i10++) {
                    arrayList.add(i(builder, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override
            public void f(final b<?> builder, final Object value) {
                if (this.f69649f) {
                    AbstractC12722w0.q6(this.f69653j, builder, Integer.valueOf(((Descriptors.e) value).getNumber()));
                } else {
                    super.f(builder, AbstractC12722w0.q6(this.f69647d, null, value));
                }
            }

            @Override
            public void h(final b<?> builder, final int index, final Object value) {
                if (this.f69649f) {
                    AbstractC12722w0.q6(this.f69652i, builder, Integer.valueOf(index), Integer.valueOf(((Descriptors.e) value).getNumber()));
                } else {
                    super.h(builder, index, AbstractC12722w0.q6(this.f69647d, null, value));
                }
            }

            @Override
            public Object i(final b<?> builder, final int index) {
                if (!this.f69649f) {
                    return AbstractC12722w0.q6(this.f69648e, super.i(builder, index), new Object[0]);
                }
                return this.f69646c.k(((Integer) AbstractC12722w0.q6(this.f69651h, builder, Integer.valueOf(index))).intValue());
            }

            @Override
            public Object m(final AbstractC12722w0 message, final int index) {
                if (!this.f69649f) {
                    return AbstractC12722w0.q6(this.f69648e, super.m(message, index), new Object[0]);
                }
                return this.f69646c.k(((Integer) AbstractC12722w0.q6(this.f69650g, message, Integer.valueOf(index))).intValue());
            }
        }

        public static class e implements a {

            public final Class<?> f69654a;

            public final a f69655b;

            public interface a {
                void a(final b<?> builder);

                Object b(final AbstractC12722w0 message);

                Object c(b<?> builder);

                int d(final AbstractC12722w0 message);

                void f(final b<?> builder, final Object value);

                void h(final b<?> builder, final int index, final Object value);

                Object i(b<?> builder, int index);

                int k(b<?> builder);

                Object m(final AbstractC12722w0 message, final int index);
            }

            public static final class b implements a {

                public final Method f69656a;

                public final Method f69657b;

                public final Method f69658c;

                public final Method f69659d;

                public final Method f69660e;

                public final Method f69661f;

                public final Method f69662g;

                public final Method f69663h;

                public final Method f69664i;

                public b(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass) {
                    this.f69656a = AbstractC12722w0.V4(messageClass, "get" + camelCaseName + C12667d1.f69075a, new Class[0]);
                    this.f69657b = AbstractC12722w0.V4(builderClass, "get" + camelCaseName + C12667d1.f69075a, new Class[0]);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("get");
                    sb2.append(camelCaseName);
                    String sb3 = sb2.toString();
                    Class<Integer> cls = Integer.TYPE;
                    Method V42 = AbstractC12722w0.V4(messageClass, sb3, cls);
                    this.f69658c = V42;
                    this.f69659d = AbstractC12722w0.V4(builderClass, "get" + camelCaseName, cls);
                    Class<?> returnType = V42.getReturnType();
                    this.f69660e = AbstractC12722w0.V4(builderClass, "set" + camelCaseName, cls, returnType);
                    this.f69661f = AbstractC12722w0.V4(builderClass, "add" + camelCaseName, returnType);
                    this.f69662g = AbstractC12722w0.V4(messageClass, "get" + camelCaseName + "Count", new Class[0]);
                    this.f69663h = AbstractC12722w0.V4(builderClass, "get" + camelCaseName + "Count", new Class[0]);
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("clear");
                    sb4.append(camelCaseName);
                    this.f69664i = AbstractC12722w0.V4(builderClass, sb4.toString(), new Class[0]);
                }

                @Override
                public void a(final b<?> builder) {
                    AbstractC12722w0.q6(this.f69664i, builder, new Object[0]);
                }

                @Override
                public Object b(final AbstractC12722w0 message) {
                    return AbstractC12722w0.q6(this.f69656a, message, new Object[0]);
                }

                @Override
                public Object c(b<?> builder) {
                    return AbstractC12722w0.q6(this.f69657b, builder, new Object[0]);
                }

                @Override
                public int d(final AbstractC12722w0 message) {
                    return ((Integer) AbstractC12722w0.q6(this.f69662g, message, new Object[0])).intValue();
                }

                @Override
                public void f(final b<?> builder, final Object value) {
                    AbstractC12722w0.q6(this.f69661f, builder, value);
                }

                @Override
                public void h(final b<?> builder, final int index, final Object value) {
                    AbstractC12722w0.q6(this.f69660e, builder, Integer.valueOf(index), value);
                }

                @Override
                public Object i(b<?> builder, int index) {
                    return AbstractC12722w0.q6(this.f69659d, builder, Integer.valueOf(index));
                }

                @Override
                public int k(b<?> builder) {
                    return ((Integer) AbstractC12722w0.q6(this.f69663h, builder, new Object[0])).intValue();
                }

                @Override
                public Object m(final AbstractC12722w0 message, final int index) {
                    return AbstractC12722w0.q6(this.f69658c, message, Integer.valueOf(index));
                }
            }

            public e(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass) {
                b bVar = new b(descriptor, camelCaseName, messageClass, builderClass);
                this.f69654a = bVar.f69658c.getReturnType();
                this.f69655b = q(bVar);
            }

            public static a q(b accessor) {
                return accessor;
            }

            @Override
            public void a(final b<?> builder) {
                this.f69655b.a(builder);
            }

            @Override
            public Object b(final AbstractC12722w0 message) {
                return this.f69655b.b(message);
            }

            @Override
            public Object c(b<?> builder) {
                return this.f69655b.c(builder);
            }

            @Override
            public int d(final AbstractC12722w0 message) {
                return this.f69655b.d(message);
            }

            @Override
            public void e(final b<?> builder, final Object value) {
                a(builder);
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    f(builder, it.next());
                }
            }

            @Override
            public void f(final b<?> builder, final Object value) {
                this.f69655b.f(builder, value);
            }

            @Override
            public boolean g(final AbstractC12722w0 message) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override
            public void h(final b<?> builder, final int index, final Object value) {
                this.f69655b.h(builder, index, value);
            }

            @Override
            public Object i(b<?> builder, int index) {
                return this.f69655b.i(builder, index);
            }

            @Override
            public boolean j(b<?> builder) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override
            public int k(b<?> builder) {
                return this.f69655b.k(builder);
            }

            @Override
            public Y0.a l() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override
            public Object m(final AbstractC12722w0 message, final int index) {
                return this.f69655b.m(message, index);
            }

            @Override
            public Object n(final AbstractC12722w0 message) {
                return b(message);
            }

            @Override
            public Y0.a o(b<?> builder, int index) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override
            public Y0.a p(b<?> builder) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
        }

        public static final class f extends e {

            public final Method f69665c;

            public final Method f69666d;

            public f(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass) {
                super(descriptor, camelCaseName, messageClass, builderClass);
                this.f69665c = AbstractC12722w0.V4(this.f69654a, "newBuilder", new Class[0]);
                this.f69666d = AbstractC12722w0.V4(builderClass, "get" + camelCaseName + "Builder", Integer.TYPE);
            }

            @Override
            public void f(final b<?> builder, final Object value) {
                super.f(builder, r(value));
            }

            @Override
            public void h(final b<?> builder, final int index, final Object value) {
                super.h(builder, index, r(value));
            }

            @Override
            public Y0.a l() {
                return (Y0.a) AbstractC12722w0.q6(this.f69665c, null, new Object[0]);
            }

            @Override
            public Y0.a o(final b<?> builder, final int index) {
                return (Y0.a) AbstractC12722w0.q6(this.f69666d, builder, Integer.valueOf(index));
            }

            public final Object r(final Object value) {
                return this.f69654a.isInstance(value) ? value : ((Y0.a) AbstractC12722w0.q6(this.f69665c, null, new Object[0])).mergeFrom((Y0) value).build();
            }
        }

        public static final class g extends C1038h {

            public final Descriptors.d f69667f;

            public final Method f69668g;

            public final Method f69669h;

            public final boolean f69670i;

            public Method f69671j;

            public Method f69672k;

            public Method f69673l;

            public g(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f69667f = descriptor.W1();
                this.f69668g = AbstractC12722w0.V4(this.f69674a, "valueOf", Descriptors.e.class);
                this.f69669h = AbstractC12722w0.V4(this.f69674a, "getValueDescriptor", new Class[0]);
                boolean H10 = descriptor.a().H();
                this.f69670i = H10;
                if (H10) {
                    this.f69671j = AbstractC12722w0.V4(messageClass, "get" + camelCaseName + XMLExporter.ELEMENT_VALUE, new Class[0]);
                    this.f69672k = AbstractC12722w0.V4(builderClass, "get" + camelCaseName + XMLExporter.ELEMENT_VALUE, new Class[0]);
                    this.f69673l = AbstractC12722w0.V4(builderClass, "set" + camelCaseName + XMLExporter.ELEMENT_VALUE, Integer.TYPE);
                }
            }

            @Override
            public Object b(final AbstractC12722w0 message) {
                if (!this.f69670i) {
                    return AbstractC12722w0.q6(this.f69669h, super.b(message), new Object[0]);
                }
                return this.f69667f.k(((Integer) AbstractC12722w0.q6(this.f69671j, message, new Object[0])).intValue());
            }

            @Override
            public Object c(final b<?> builder) {
                if (!this.f69670i) {
                    return AbstractC12722w0.q6(this.f69669h, super.c(builder), new Object[0]);
                }
                return this.f69667f.k(((Integer) AbstractC12722w0.q6(this.f69672k, builder, new Object[0])).intValue());
            }

            @Override
            public void e(final b<?> builder, final Object value) {
                if (this.f69670i) {
                    AbstractC12722w0.q6(this.f69673l, builder, Integer.valueOf(((Descriptors.e) value).getNumber()));
                } else {
                    super.e(builder, AbstractC12722w0.q6(this.f69668g, null, value));
                }
            }
        }

        public static class C1038h implements a {

            public final Class<?> f69674a;

            public final Descriptors.f f69675b;

            public final boolean f69676c;

            public final boolean f69677d;

            public final a f69678e;

            public interface a {
                void a(final b<?> builder);

                Object b(final AbstractC12722w0 message);

                Object c(b<?> builder);

                int d(final AbstractC12722w0 message);

                void e(final b<?> builder, final Object value);

                int f(final b<?> builder);

                boolean g(final AbstractC12722w0 message);

                boolean j(b<?> builder);
            }

            public static final class b implements a {

                public final Method f69679a;

                public final Method f69680b;

                public final Method f69681c;

                public final Method f69682d;

                public final Method f69683e;

                public final Method f69684f;

                public final Method f69685g;

                public final Method f69686h;

                public b(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass, final String containingOneofCamelCaseName, boolean isOneofField, boolean hasHasMethod) {
                    Method method;
                    Method method2;
                    Method method3;
                    Method V42 = AbstractC12722w0.V4(messageClass, "get" + camelCaseName, new Class[0]);
                    this.f69679a = V42;
                    this.f69680b = AbstractC12722w0.V4(builderClass, "get" + camelCaseName, new Class[0]);
                    this.f69681c = AbstractC12722w0.V4(builderClass, "set" + camelCaseName, V42.getReturnType());
                    Method method4 = null;
                    if (hasHasMethod) {
                        method = AbstractC12722w0.V4(messageClass, "has" + camelCaseName, new Class[0]);
                    } else {
                        method = null;
                    }
                    this.f69682d = method;
                    if (hasHasMethod) {
                        method2 = AbstractC12722w0.V4(builderClass, "has" + camelCaseName, new Class[0]);
                    } else {
                        method2 = null;
                    }
                    this.f69683e = method2;
                    this.f69684f = AbstractC12722w0.V4(builderClass, "clear" + camelCaseName, new Class[0]);
                    if (isOneofField) {
                        method3 = AbstractC12722w0.V4(messageClass, "get" + containingOneofCamelCaseName + "Case", new Class[0]);
                    } else {
                        method3 = null;
                    }
                    this.f69685g = method3;
                    if (isOneofField) {
                        method4 = AbstractC12722w0.V4(builderClass, "get" + containingOneofCamelCaseName + "Case", new Class[0]);
                    }
                    this.f69686h = method4;
                }

                @Override
                public void a(final b<?> builder) {
                    AbstractC12722w0.q6(this.f69684f, builder, new Object[0]);
                }

                @Override
                public Object b(final AbstractC12722w0 message) {
                    return AbstractC12722w0.q6(this.f69679a, message, new Object[0]);
                }

                @Override
                public Object c(b<?> builder) {
                    return AbstractC12722w0.q6(this.f69680b, builder, new Object[0]);
                }

                @Override
                public int d(final AbstractC12722w0 message) {
                    return ((D0.c) AbstractC12722w0.q6(this.f69685g, message, new Object[0])).getNumber();
                }

                @Override
                public void e(final b<?> builder, final Object value) {
                    AbstractC12722w0.q6(this.f69681c, builder, value);
                }

                @Override
                public int f(final b<?> builder) {
                    return ((D0.c) AbstractC12722w0.q6(this.f69686h, builder, new Object[0])).getNumber();
                }

                @Override
                public boolean g(final AbstractC12722w0 message) {
                    return ((Boolean) AbstractC12722w0.q6(this.f69682d, message, new Object[0])).booleanValue();
                }

                @Override
                public boolean j(b<?> builder) {
                    return ((Boolean) AbstractC12722w0.q6(this.f69683e, builder, new Object[0])).booleanValue();
                }
            }

            public C1038h(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass, final String containingOneofCamelCaseName) {
                boolean z10 = (descriptor.o() == null || descriptor.o().t()) ? false : true;
                this.f69676c = z10;
                boolean z11 = descriptor.a().z() == Descriptors.g.b.PROTO2 || descriptor.C() || (!z10 && descriptor.v() == Descriptors.f.b.MESSAGE);
                this.f69677d = z11;
                b bVar = new b(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName, z10, z11);
                this.f69675b = descriptor;
                this.f69674a = bVar.f69679a.getReturnType();
                this.f69678e = q(bVar);
            }

            public static a q(b accessor) {
                return accessor;
            }

            @Override
            public void a(final b<?> builder) {
                this.f69678e.a(builder);
            }

            @Override
            public Object b(final AbstractC12722w0 message) {
                return this.f69678e.b(message);
            }

            @Override
            public Object c(b<?> builder) {
                return this.f69678e.c(builder);
            }

            @Override
            public int d(final AbstractC12722w0 message) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override
            public void e(final b<?> builder, final Object value) {
                this.f69678e.e(builder, value);
            }

            @Override
            public void f(final b<?> builder, final Object value) {
                throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
            }

            @Override
            public boolean g(final AbstractC12722w0 message) {
                return !this.f69677d ? this.f69676c ? this.f69678e.d(message) == this.f69675b.getNumber() : !b(message).equals(this.f69675b.r()) : this.f69678e.g(message);
            }

            @Override
            public void h(final b<?> builder, final int index, final Object value) {
                throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
            }

            @Override
            public Object i(b<?> builder, int index) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override
            public boolean j(b<?> builder) {
                return !this.f69677d ? this.f69676c ? this.f69678e.f(builder) == this.f69675b.getNumber() : !c(builder).equals(this.f69675b.r()) : this.f69678e.j(builder);
            }

            @Override
            public int k(b<?> builder) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override
            public Y0.a l() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override
            public Object m(final AbstractC12722w0 message, final int index) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override
            public Object n(final AbstractC12722w0 message) {
                return b(message);
            }

            @Override
            public Y0.a o(b<?> builder, int index) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override
            public Y0.a p(b<?> builder) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
        }

        public static final class i extends C1038h {

            public final Method f69687f;

            public final Method f69688g;

            public i(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f69687f = AbstractC12722w0.V4(this.f69674a, "newBuilder", new Class[0]);
                this.f69688g = AbstractC12722w0.V4(builderClass, "get" + camelCaseName + "Builder", new Class[0]);
            }

            private Object r(final Object value) {
                return this.f69674a.isInstance(value) ? value : ((Y0.a) AbstractC12722w0.q6(this.f69687f, null, new Object[0])).mergeFrom((Y0) value).buildPartial();
            }

            @Override
            public void e(final b<?> builder, final Object value) {
                super.e(builder, r(value));
            }

            @Override
            public Y0.a l() {
                return (Y0.a) AbstractC12722w0.q6(this.f69687f, null, new Object[0]);
            }

            @Override
            public Y0.a p(b<?> builder) {
                return (Y0.a) AbstractC12722w0.q6(this.f69688g, builder, new Object[0]);
            }
        }

        public static final class j extends C1038h {

            public final Method f69689f;

            public final Method f69690g;

            public j(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f69689f = AbstractC12722w0.V4(messageClass, "get" + camelCaseName + C12667d1.f69078d, new Class[0]);
                this.f69690g = AbstractC12722w0.V4(builderClass, "set" + camelCaseName + C12667d1.f69078d, AbstractC12724x.class);
            }

            @Override
            public void e(b<?> builder, Object value) {
                if (value instanceof AbstractC12724x) {
                    AbstractC12722w0.q6(this.f69690g, builder, value);
                } else {
                    super.e(builder, value);
                }
            }

            @Override
            public Object n(final AbstractC12722w0 message) {
                return AbstractC12722w0.q6(this.f69689f, message, new Object[0]);
            }
        }

        public h(final Descriptors.b descriptor, final String[] camelCaseNames, final Class<? extends AbstractC12722w0> messageClass, final Class<? extends b<?>> builderClass) {
            this(descriptor, camelCaseNames);
            d(messageClass, builderClass);
        }

        public h d(Class<? extends AbstractC12722w0> messageClass, Class<? extends b<?>> builderClass) {
            if (this.f69638e) {
                return this;
            }
            synchronized (this) {
                try {
                    if (this.f69638e) {
                        return this;
                    }
                    int length = this.f69635b.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= length) {
                            break;
                        }
                        Descriptors.f fVar = this.f69634a.s().get(i10);
                        String str = fVar.o() != null ? this.f69636c[fVar.o().r() + length] : null;
                        if (fVar.Z1()) {
                            if (fVar.v() == Descriptors.f.b.MESSAGE) {
                                if (fVar.G()) {
                                    this.f69635b[i10] = new b(fVar, messageClass);
                                } else {
                                    this.f69635b[i10] = new f(fVar, this.f69636c[i10], messageClass, builderClass);
                                }
                            } else if (fVar.v() == Descriptors.f.b.ENUM) {
                                this.f69635b[i10] = new d(fVar, this.f69636c[i10], messageClass, builderClass);
                            } else {
                                this.f69635b[i10] = new e(fVar, this.f69636c[i10], messageClass, builderClass);
                            }
                        } else if (fVar.v() == Descriptors.f.b.MESSAGE) {
                            this.f69635b[i10] = new i(fVar, this.f69636c[i10], messageClass, builderClass, str);
                        } else if (fVar.v() == Descriptors.f.b.ENUM) {
                            this.f69635b[i10] = new g(fVar, this.f69636c[i10], messageClass, builderClass, str);
                        } else if (fVar.v() == Descriptors.f.b.STRING) {
                            this.f69635b[i10] = new j(fVar, this.f69636c[i10], messageClass, builderClass, str);
                        } else {
                            this.f69635b[i10] = new C1038h(fVar, this.f69636c[i10], messageClass, builderClass, str);
                        }
                        i10++;
                    }
                    int length2 = this.f69637d.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.f69637d[i11] = new c(this.f69634a, i11, this.f69636c[i11 + length], messageClass, builderClass);
                    }
                    this.f69638e = true;
                    this.f69636c = null;
                    return this;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final a e(final Descriptors.f field) {
            if (field.q() != this.f69634a) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
            if (field.F()) {
                throw new IllegalArgumentException("This type does not have extensions.");
            }
            return this.f69635b[field.u()];
        }

        public final c f(final Descriptors.k oneof) {
            if (oneof.k() == this.f69634a) {
                return this.f69637d[oneof.r()];
            }
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }

        public h(final Descriptors.b descriptor, final String[] camelCaseNames) {
            this.f69634a = descriptor;
            this.f69636c = camelCaseNames;
            this.f69635b = new a[descriptor.s().size()];
            this.f69637d = new c[descriptor.v().size()];
            this.f69638e = false;
        }
    }

    public static D0.i mutableCopy(D0.i list) {
        return (D0.i) makeMutableCopy(list);
    }

    public AbstractC12722w0(b<?> builder) {
        this.unknownFields = builder.getUnknownFields();
    }

    public static D0.f mutableCopy(D0.f list) {
        return (D0.f) makeMutableCopy(list);
    }

    public static <M extends Y0> M parseDelimitedWithIOException(InterfaceC12723w1<M> parser, InputStream input, C12666d0 extensions) throws IOException {
        try {
            return parser.parseDelimitedFrom(input, extensions);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    public static <M extends Y0> M parseWithIOException(InterfaceC12723w1<M> parser, InputStream input, C12666d0 extensions) throws IOException {
        try {
            return parser.parseFrom(input, extensions);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    public static D0.b mutableCopy(D0.b list) {
        return (D0.b) makeMutableCopy(list);
    }

    public static D0.a mutableCopy(D0.a list) {
        return (D0.a) makeMutableCopy(list);
    }

    public static <M extends Y0> M parseWithIOException(InterfaceC12723w1<M> parser, C input) throws IOException {
        try {
            return parser.parseFrom(input);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    public static <M extends Y0> M parseWithIOException(InterfaceC12723w1<M> parser, C input, C12666d0 extensions) throws IOException {
        try {
            return parser.parseFrom(input, extensions);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }
}
