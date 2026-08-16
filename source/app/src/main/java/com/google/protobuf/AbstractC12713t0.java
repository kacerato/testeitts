package com.google.protobuf;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12719v0;
import com.google.protobuf.C12673f1;
import com.google.protobuf.D0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.H0;
import com.google.protobuf.Y0;
import com.google.protobuf.Z;
import com.google.protobuf.r2;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public abstract class AbstractC12713t0 extends AbstractC12653a implements Serializable {

    public static final long f69476c = 1;

    public static boolean f69477d = false;

    public r2 f69478b;

    public class a implements g {

        public final AbstractC12653a.b f69479a;

        public a(final AbstractC12653a.b val$parent) {
            this.f69479a = val$parent;
        }

        @Override
        public void a() {
            this.f69479a.a();
        }
    }

    public class b extends h {

        public final Y0 f69481b;

        public final int f69482c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(final Y0 val$scope, final int val$descriptorIndex) {
            super(null);
            this.f69481b = val$scope;
            this.f69482c = val$descriptorIndex;
        }

        @Override
        public Descriptors.f a() {
            return this.f69481b.getDescriptorForType().r().get(this.f69482c);
        }
    }

    public class c extends h {

        public final Y0 f69483b;

        public final String f69484c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(final Y0 val$scope, final String val$name) {
            super(null);
            this.f69483b = val$scope;
            this.f69484c = val$name;
        }

        @Override
        public Descriptors.f a() {
            return this.f69483b.getDescriptorForType().j(this.f69484c);
        }
    }

    public class d extends h {

        public final Class f69485b;

        public final String f69486c;

        public final String f69487d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(final Class val$singularType, final String val$descriptorOuterClass, final String val$extensionName) {
            super(null);
            this.f69485b = val$singularType;
            this.f69486c = val$descriptorOuterClass;
            this.f69487d = val$extensionName;
        }

        @Override
        public Descriptors.f a() {
            try {
                return ((Descriptors.g) this.f69485b.getClassLoader().loadClass(this.f69486c).getField("descriptor").get(null)).m(this.f69487d);
            } catch (Exception e10) {
                throw new RuntimeException("Cannot load descriptors: " + this.f69486c + " is not a valid descriptor class name", e10);
            }
        }
    }

    public static class e {

        public static final int[] f69488a;

        static {
            int[] iArr = new int[Descriptors.f.b.values().length];
            f69488a = iArr;
            try {
                iArr[Descriptors.f.b.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69488a[Descriptors.f.b.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class f<BuilderType extends f<BuilderType>> extends AbstractC12653a.AbstractC1035a<BuilderType> {

        public g f69489b;

        public f<BuilderType>.a f69490c;

        public boolean f69491d;

        public r2 f69492e;

        public class a implements g {
            public a() {
            }

            @Override
            public void a() {
                f.this.onChanged();
            }

            public a(f fVar, a aVar) {
                this();
            }
        }

        public f() {
            this(null);
        }

        @Override
        public BuilderType clearField(final Descriptors.f field) {
            s6().f(field).B(this);
            return this;
        }

        @Override
        public BuilderType addRepeatedField(final Descriptors.f field, final Object value) {
            s6().f(field).u(this, value);
            return this;
        }

        @Override
        public BuilderType mo1246clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.mergeFrom(buildPartial());
            return buildertype;
        }

        @Override
        public void dispose() {
            this.f69489b = null;
        }

        @Override
        public Map<Descriptors.f, Object> getAllFields() {
            return Collections.unmodifiableMap(q6());
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return s6().f69502a;
        }

        @Override
        public Object getField(final Descriptors.f field) {
            Object p10 = s6().f(field).p(this);
            return field.Z1() ? Collections.unmodifiableList((List) p10) : p10;
        }

        @Override
        public Y0.a getFieldBuilder(final Descriptors.f field) {
            return s6().f(field).A(this);
        }

        @Override
        public Descriptors.f getOneofFieldDescriptor(final Descriptors.k oneof) {
            return s6().g(oneof).b(this);
        }

        @Override
        public Object getRepeatedField(final Descriptors.f field, final int index) {
            return s6().f(field).t(this, index);
        }

        @Override
        public Y0.a getRepeatedFieldBuilder(final Descriptors.f field, int index) {
            return s6().f(field).w(this, index);
        }

        @Override
        public int getRepeatedFieldCount(final Descriptors.f field) {
            return s6().f(field).q(this);
        }

        @Override
        public final r2 getUnknownFields() {
            return this.f69492e;
        }

        @Override
        public boolean hasField(final Descriptors.f field) {
            return s6().f(field).D(this);
        }

        @Override
        public boolean hasOneof(final Descriptors.k oneof) {
            return s6().g(oneof).d(this);
        }

        public S0 internalGetMapField(int fieldNumber) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        public S0 internalGetMutableMapField(int fieldNumber) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        public boolean isClean() {
            return this.f69491d;
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
        public BuilderType s6() {
            this.f69492e = r2.b0();
            onChanged();
            return this;
        }

        @Override
        public void markClean() {
            this.f69491d = true;
        }

        @Override
        public Y0.a newBuilderForField(final Descriptors.f field) {
            return s6().f(field).l();
        }

        public void onBuilt() {
            if (this.f69489b != null) {
                markClean();
            }
        }

        public final void onChanged() {
            g gVar;
            if (!this.f69491d || (gVar = this.f69489b) == null) {
                return;
            }
            gVar.a();
            this.f69491d = false;
        }

        public final Map<Descriptors.f, Object> q6() {
            TreeMap treeMap = new TreeMap();
            List<Descriptors.f> s10 = s6().f69502a.s();
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

        public g r6() {
            if (this.f69490c == null) {
                this.f69490c = new a(this, null);
            }
            return this.f69490c;
        }

        public abstract m s6();

        @Override
        public BuilderType mergeUnknownFields(final r2 unknownFields) {
            this.f69492e = r2.D2(this.f69492e).B6(unknownFields).build();
            onChanged();
            return this;
        }

        public boolean u6(final C input, final r2.b unknownFields, final C12666d0 extensionRegistry, final int tag) throws IOException {
            return unknownFields.v6(tag, input);
        }

        @Override
        public BuilderType clearOneof(final Descriptors.k oneof) {
            s6().g(oneof).a(this);
            return this;
        }

        @Override
        public BuilderType setField(final Descriptors.f field, final Object value) {
            s6().f(field).m(this, value);
            return this;
        }

        @Override
        public BuilderType setRepeatedField(final Descriptors.f field, final int index, final Object value) {
            s6().f(field).z(this, index, value);
            return this;
        }

        @Override
        public BuilderType setUnknownFields(final r2 unknownFields) {
            this.f69492e = unknownFields;
            onChanged();
            return this;
        }

        public f(g builderParent) {
            this.f69492e = r2.b0();
            this.f69489b = builderParent;
        }
    }

    public interface g extends AbstractC12653a.b {
    }

    public static abstract class h implements l {

        public volatile Descriptors.f f69494a;

        public h() {
        }

        public abstract Descriptors.f a();

        @Override
        public Descriptors.f getDescriptor() {
            if (this.f69494a == null) {
                synchronized (this) {
                    try {
                        if (this.f69494a == null) {
                            this.f69494a = a();
                        }
                    } finally {
                    }
                }
            }
            return this.f69494a;
        }

        public h(a aVar) {
            this();
        }
    }

    public interface k<MessageType extends j> extends InterfaceC12670e1 {
        <Type> boolean B(n<MessageType, Type> extension);

        <Type> Type M(Z<MessageType, List<Type>> extension, int index);

        <Type> int Q(n<MessageType, List<Type>> extension);

        <Type> Type R(n<MessageType, Type> extension);

        <Type> boolean X(Z<MessageType, Type> extension);

        <Type> int Z(Z<MessageType, List<Type>> extension);

        @Override
        Y0 getDefaultInstanceForType();

        <Type> Type l0(Z<MessageType, Type> extension);

        <Type> Type r(AbstractC12654a0<MessageType, Type> extension);

        <Type> int s(AbstractC12654a0<MessageType, List<Type>> extension);

        <Type> Type s0(n<MessageType, List<Type>> extension, int index);

        <Type> boolean u(AbstractC12654a0<MessageType, Type> extension);

        <Type> Type z(AbstractC12654a0<MessageType, List<Type>> extension, int index);
    }

    public interface l {
        Descriptors.f getDescriptor();
    }

    public static class n<ContainingType extends Y0, Type> extends Z<ContainingType, Type> {

        public l f69557a;

        public final Class f69558b;

        public final Y0 f69559c;

        public final Method f69560d;

        public final Method f69561e;

        public final Z.a f69562f;

        public class a implements l {

            public final Descriptors.f f69563a;

            public a(final Descriptors.f val$descriptor) {
                this.f69563a = val$descriptor;
            }

            @Override
            public Descriptors.f getDescriptor() {
                return this.f69563a;
            }
        }

        public n(l descriptorRetriever, Class singularType, Y0 messageDefaultInstance, Z.a extensionType) {
            if (Y0.class.isAssignableFrom(singularType) && !singularType.isInstance(messageDefaultInstance)) {
                throw new IllegalArgumentException("Bad messageDefaultInstance for " + singularType.getName());
            }
            this.f69557a = descriptorRetriever;
            this.f69558b = singularType;
            this.f69559c = messageDefaultInstance;
            if (B1.class.isAssignableFrom(singularType)) {
                this.f69560d = AbstractC12713t0.s6(singularType, "valueOf", Descriptors.e.class);
                this.f69561e = AbstractC12713t0.s6(singularType, "getValueDescriptor", new Class[0]);
            } else {
                this.f69560d = null;
                this.f69561e = null;
            }
            this.f69562f = extensionType;
        }

        @Override
        public Type a() {
            return f() ? (Type) Collections.emptyList() : h().v() == Descriptors.f.b.MESSAGE ? (Type) this.f69559c : (Type) l(h().r());
        }

        @Override
        public A2.b b() {
            return h().U1();
        }

        @Override
        public int d() {
            return h().getNumber();
        }

        @Override
        public boolean f() {
            return h().Z1();
        }

        @Override
        public Object g(final Object value) {
            Descriptors.f h10 = h();
            if (!h10.Z1()) {
                return l(value);
            }
            if (h10.v() != Descriptors.f.b.MESSAGE && h10.v() != Descriptors.f.b.ENUM) {
                return value;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                arrayList.add(l(it.next()));
            }
            return arrayList;
        }

        @Override
        public Descriptors.f h() {
            l lVar = this.f69557a;
            if (lVar != null) {
                return lVar.getDescriptor();
            }
            throw new IllegalStateException("getDescriptor() called before internalInit()");
        }

        @Override
        public Z.a i() {
            return this.f69562f;
        }

        @Override
        public Y0 c() {
            return this.f69559c;
        }

        @Override
        public Object l(final Object value) {
            int i10 = e.f69488a[h().v().ordinal()];
            return i10 != 1 ? i10 != 2 ? value : AbstractC12713t0.u6(this.f69560d, null, (Descriptors.e) value) : this.f69558b.isInstance(value) ? value : this.f69559c.newBuilderForType().mergeFrom((Y0) value).build();
        }

        @Override
        public Object m(final Object value) {
            return e.f69488a[h().v().ordinal()] != 2 ? value : AbstractC12713t0.u6(this.f69561e, value, new Object[0]);
        }

        @Override
        public Object n(final Object value) {
            Descriptors.f h10 = h();
            if (!h10.Z1()) {
                return m(value);
            }
            if (h10.v() != Descriptors.f.b.ENUM) {
                return value;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                arrayList.add(m(it.next()));
            }
            return arrayList;
        }

        public void o(final Descriptors.f descriptor) {
            if (this.f69557a != null) {
                throw new IllegalStateException("Already initialized.");
            }
            this.f69557a = new a(descriptor);
        }
    }

    public AbstractC12713t0() {
        this.f69478b = r2.b0();
    }

    public static int computeStringSize(final int fieldNumber, final Object value) {
        return value instanceof String ? CodedOutputStream.V0(fieldNumber, (String) value) : CodedOutputStream.g0(fieldNumber, (AbstractC12724x) value);
    }

    public static int computeStringSizeNoTag(final Object value) {
        return value instanceof String ? CodedOutputStream.W0((String) value) : CodedOutputStream.h0((AbstractC12724x) value);
    }

    public static void enableAlwaysUseFieldBuildersForTesting() {
        f69477d = true;
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

    public static <MessageType extends j<MessageType>, T> Z<MessageType, T> q6(AbstractC12654a0<MessageType, T> extension) {
        if (extension.e()) {
            throw new IllegalArgumentException("Expected non-lite extension.");
        }
        return (Z) extension;
    }

    public static Method s6(final Class clazz, final String name, final Class... params) {
        try {
            return clazz.getMethod(name, params);
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("Generated message class \"" + clazz.getName() + "\" missing method \"" + name + "\".", e10);
        }
    }

    public static Object u6(final Method method, final Object object, final Object... params) {
        try {
            return method.invoke(object, params);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static <ContainingType extends Y0, Type> n<ContainingType, Type> w6(final Class singularType, final Y0 defaultInstance) {
        return new n<>(null, singularType, defaultInstance, Z.a.IMMUTABLE);
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

    public static <ContainingType extends Y0, Type> n<ContainingType, Type> x6(final Class singularType, final Y0 defaultInstance, final String descriptorOuterClass, final String extensionName) {
        return new n<>(new d(singularType, descriptorOuterClass, extensionName), singularType, defaultInstance, Z.a.MUTABLE);
    }

    public static <ContainingType extends Y0, Type> n<ContainingType, Type> y6(final Y0 scope, final int descriptorIndex, final Class singularType, final Y0 defaultInstance) {
        return new n<>(new b(scope, descriptorIndex), singularType, defaultInstance, Z.a.IMMUTABLE);
    }

    public static <ContainingType extends Y0, Type> n<ContainingType, Type> z6(final Y0 scope, final String name, final Class singularType, final Y0 defaultInstance) {
        return new n<>(new c(scope, name), singularType, defaultInstance, Z.a.MUTABLE);
    }

    @Override
    public Map<Descriptors.f, Object> getAllFields() {
        return Collections.unmodifiableMap(r6(false));
    }

    public Map<Descriptors.f, Object> getAllFieldsRaw() {
        return Collections.unmodifiableMap(r6(true));
    }

    @Override
    public Descriptors.b getDescriptorForType() {
        return t6().f69502a;
    }

    @Override
    public Object getField(final Descriptors.f field) {
        return t6().f(field).n(this);
    }

    public Object getFieldRaw(final Descriptors.f field) {
        return t6().f(field).o(this);
    }

    @Override
    public Descriptors.f getOneofFieldDescriptor(final Descriptors.k oneof) {
        return t6().g(oneof).c(this);
    }

    @Override
    public InterfaceC12723w1<? extends AbstractC12713t0> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override
    public Object getRepeatedField(final Descriptors.f field, final int index) {
        return t6().f(field).y(this, index);
    }

    @Override
    public int getRepeatedFieldCount(final Descriptors.f field) {
        return t6().f(field).r(this);
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
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override
    public boolean hasField(final Descriptors.f field) {
        return t6().f(field).C(this);
    }

    @Override
    public boolean hasOneof(final Descriptors.k oneof) {
        return t6().g(oneof).e(this);
    }

    public S0 internalGetMapField(int fieldNumber) {
        throw new RuntimeException("No map fields found in " + getClass().getName());
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

    @Override
    public Y0.a newBuilderForType(final AbstractC12653a.b parent) {
        return v6(new a(parent));
    }

    public boolean parseUnknownField(C input, r2.b unknownFields, C12666d0 extensionRegistry, int tag) throws IOException {
        return unknownFields.v6(tag, input);
    }

    public final Map<Descriptors.f, Object> r6(boolean getBytesForString) {
        TreeMap treeMap = new TreeMap();
        List<Descriptors.f> s10 = t6().f69502a.s();
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

    public abstract m t6();

    public abstract Y0.a v6(g parent);

    public Object writeReplace() throws ObjectStreamException {
        return new AbstractC12719v0.j(this);
    }

    @Override
    public void writeTo(final CodedOutputStream output) throws IOException {
        C12673f1.l(this, getAllFieldsRaw(), output, false);
    }

    public static abstract class i<MessageType extends j, BuilderType extends i<MessageType, BuilderType>> extends f<BuilderType> implements k<MessageType> {

        public C12699o0<Descriptors.f> f69495f;

        public i() {
            this.f69495f = C12699o0.s();
        }

        private void W6(final Descriptors.f field) {
            if (field.q() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        public final <Type> BuilderType A6(final AbstractC12654a0<MessageType, List<Type>> extensionLite, final Type value) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(extensionLite);
            X6(q62);
            K6();
            this.f69495f.h(q62.h(), q62.m(value));
            onChanged();
            return this;
        }

        @Override
        public final <Type> boolean B(final n<MessageType, Type> extension) {
            return u(extension);
        }

        public <Type> BuilderType B6(final n<MessageType, List<Type>> extension, final Type value) {
            return A6(extension, value);
        }

        @Override
        public BuilderType addRepeatedField(final Descriptors.f field, final Object value) {
            if (!field.F()) {
                return (BuilderType) super.addRepeatedField(field, value);
            }
            W6(field);
            K6();
            this.f69495f.h(field, value);
            onChanged();
            return this;
        }

        public final C12699o0<Descriptors.f> D6() {
            this.f69495f.J();
            return this.f69495f;
        }

        @Override
        public BuilderType s6() {
            this.f69495f = C12699o0.s();
            return (BuilderType) super.s6();
        }

        public final <Type> BuilderType F6(final Z<MessageType, ?> extension) {
            return G6(extension);
        }

        public final <Type> BuilderType G6(final AbstractC12654a0<MessageType, ?> extensionLite) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(extensionLite);
            X6(q62);
            K6();
            this.f69495f.j(q62.h());
            onChanged();
            return this;
        }

        public <Type> BuilderType H6(final n<MessageType, ?> extension) {
            return G6(extension);
        }

        @Override
        public BuilderType clearField(final Descriptors.f field) {
            if (!field.F()) {
                return (BuilderType) super.clearField(field);
            }
            W6(field);
            K6();
            this.f69495f.j(field);
            onChanged();
            return this;
        }

        @Override
        public BuilderType mo1246clone() {
            return (BuilderType) super.mo1246clone();
        }

        public final void K6() {
            if (this.f69495f.D()) {
                this.f69495f = this.f69495f.clone();
            }
        }

        public boolean L6() {
            return this.f69495f.E();
        }

        @Override
        public final <Type> Type M(Z<MessageType, List<Type>> z10, int i10) {
            return (Type) z(z10, i10);
        }

        public void M6(C12699o0<Descriptors.f> extensions) {
            this.f69495f = extensions;
        }

        public final void N6(final j other) {
            K6();
            this.f69495f.K(other.f69497e);
            onChanged();
        }

        public final <Type> BuilderType O6(final Z<MessageType, List<Type>> extension, final int index, final Type value) {
            return Q6(extension, index, value);
        }

        public final <Type> BuilderType P6(final Z<MessageType, Type> extension, final Type value) {
            return R6(extension, value);
        }

        @Override
        public final <Type> int Q(final n<MessageType, List<Type>> extension) {
            return s(extension);
        }

        public final <Type> BuilderType Q6(final AbstractC12654a0<MessageType, List<Type>> extensionLite, final int index, final Type value) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(extensionLite);
            X6(q62);
            K6();
            this.f69495f.Q(q62.h(), index, q62.m(value));
            onChanged();
            return this;
        }

        @Override
        public final <Type> Type R(n<MessageType, Type> nVar) {
            return (Type) r(nVar);
        }

        public final <Type> BuilderType R6(final AbstractC12654a0<MessageType, Type> extensionLite, final Type value) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(extensionLite);
            X6(q62);
            K6();
            this.f69495f.P(q62.h(), q62.n(value));
            onChanged();
            return this;
        }

        public <Type> BuilderType S6(final n<MessageType, List<Type>> extension, final int index, final Type value) {
            return Q6(extension, index, value);
        }

        public <Type> BuilderType T6(final n<MessageType, Type> extension, final Type value) {
            return R6(extension, value);
        }

        @Override
        public BuilderType setField(final Descriptors.f field, final Object value) {
            if (!field.F()) {
                return (BuilderType) super.setField(field, value);
            }
            W6(field);
            K6();
            this.f69495f.P(field, value);
            onChanged();
            return this;
        }

        @Override
        public BuilderType setRepeatedField(final Descriptors.f field, final int index, final Object value) {
            if (!field.F()) {
                return (BuilderType) super.setRepeatedField(field, index, value);
            }
            W6(field);
            K6();
            this.f69495f.Q(field, index, value);
            onChanged();
            return this;
        }

        @Override
        public final <Type> boolean X(final Z<MessageType, Type> extension) {
            return u(extension);
        }

        public final void X6(final Z<MessageType, ?> extension) {
            if (extension.h().q() == getDescriptorForType()) {
                return;
            }
            throw new IllegalArgumentException("Extension is for type \"" + extension.h().q().b() + "\" which does not match message type \"" + getDescriptorForType().b() + "\".");
        }

        @Override
        public final <Type> int Z(final Z<MessageType, List<Type>> extension) {
            return s(extension);
        }

        @Override
        public Map<Descriptors.f, Object> getAllFields() {
            Map q62 = q6();
            q62.putAll(this.f69495f.t());
            return Collections.unmodifiableMap(q62);
        }

        @Override
        public Object getField(final Descriptors.f field) {
            if (!field.F()) {
                return super.getField(field);
            }
            W6(field);
            Object u10 = this.f69495f.u(field);
            return u10 == null ? field.v() == Descriptors.f.b.MESSAGE ? P.r6(field.x()) : field.r() : u10;
        }

        @Override
        public Object getRepeatedField(final Descriptors.f field, final int index) {
            if (!field.F()) {
                return super.getRepeatedField(field, index);
            }
            W6(field);
            return this.f69495f.x(field, index);
        }

        @Override
        public int getRepeatedFieldCount(final Descriptors.f field) {
            if (!field.F()) {
                return super.getRepeatedFieldCount(field);
            }
            W6(field);
            return this.f69495f.y(field);
        }

        @Override
        public boolean hasField(final Descriptors.f field) {
            if (!field.F()) {
                return super.hasField(field);
            }
            W6(field);
            return this.f69495f.B(field);
        }

        @Override
        public boolean isInitialized() {
            return super.isInitialized() && L6();
        }

        @Override
        public final <Type> Type l0(Z<MessageType, Type> z10) {
            return (Type) r(z10);
        }

        @Override
        public final <Type> Type r(AbstractC12654a0<MessageType, Type> abstractC12654a0) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(abstractC12654a0);
            X6(q62);
            Descriptors.f h10 = q62.h();
            Object u10 = this.f69495f.u(h10);
            return u10 == null ? h10.Z1() ? (Type) Collections.emptyList() : h10.v() == Descriptors.f.b.MESSAGE ? (Type) q62.c() : (Type) q62.g(h10.r()) : (Type) q62.g(u10);
        }

        @Override
        public final <Type> int s(final AbstractC12654a0<MessageType, List<Type>> extensionLite) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(extensionLite);
            X6(q62);
            return this.f69495f.y(q62.h());
        }

        @Override
        public final <Type> Type s0(n<MessageType, List<Type>> nVar, int i10) {
            return (Type) z(nVar, i10);
        }

        @Override
        public final <Type> boolean u(final AbstractC12654a0<MessageType, Type> extensionLite) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(extensionLite);
            X6(q62);
            return this.f69495f.B(q62.h());
        }

        @Override
        public boolean u6(final C input, final r2.b unknownFields, final C12666d0 extensionRegistry, final int tag) throws IOException {
            return C12673f1.g(input, unknownFields, extensionRegistry, getDescriptorForType(), new C12673f1.b(this), tag);
        }

        @Override
        public final <Type> Type z(AbstractC12654a0<MessageType, List<Type>> abstractC12654a0, int i10) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(abstractC12654a0);
            X6(q62);
            return (Type) q62.l(this.f69495f.x(q62.h(), i10));
        }

        public final <Type> BuilderType z6(final Z<MessageType, List<Type>> extension, final Type value) {
            return A6(extension, value);
        }

        public i(g parent) {
            super(parent);
            this.f69495f = C12699o0.s();
        }
    }

    public static abstract class j<MessageType extends j> extends AbstractC12713t0 implements k<MessageType> {

        public static final long f69496f = 1;

        public final C12699o0<Descriptors.f> f69497e;

        public class a {

            public final Iterator<Map.Entry<Descriptors.f, Object>> f69498a;

            public Map.Entry<Descriptors.f, Object> f69499b;

            public final boolean f69500c;

            public a(j jVar, boolean z10, a aVar) {
                this(z10);
            }

            public void a(final int end, final CodedOutputStream output) throws IOException {
                while (true) {
                    Map.Entry<Descriptors.f, Object> entry = this.f69499b;
                    if (entry == null || entry.getKey().getNumber() >= end) {
                        return;
                    }
                    Descriptors.f key = this.f69499b.getKey();
                    if (!this.f69500c || key.V1() != A2.c.MESSAGE || key.Z1()) {
                        C12699o0.U(key, this.f69499b.getValue(), output);
                    } else if (this.f69499b instanceof H0.b) {
                        output.Y1(key.getNumber(), ((H0.b) this.f69499b).b().n());
                    } else {
                        output.P1(key.getNumber(), (Y0) this.f69499b.getValue());
                    }
                    if (this.f69498a.hasNext()) {
                        this.f69499b = this.f69498a.next();
                    } else {
                        this.f69499b = null;
                    }
                }
            }

            public a(final boolean messageSetWireFormat) {
                Iterator<Map.Entry<Descriptors.f, Object>> I10 = j.this.f69497e.I();
                this.f69498a = I10;
                if (I10.hasNext()) {
                    this.f69499b = I10.next();
                }
                this.f69500c = messageSetWireFormat;
            }
        }

        public j() {
            this.f69497e = C12699o0.N();
        }

        private void H6(final Descriptors.f field) {
            if (field.q() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        private void I6(final Z<MessageType, ?> extension) {
            if (extension.h().q() == getDescriptorForType()) {
                return;
            }
            throw new IllegalArgumentException("Extension is for type \"" + extension.h().q().b() + "\" which does not match message type \"" + getDescriptorForType().b() + "\".");
        }

        @Override
        public final <Type> boolean B(final n<MessageType, Type> extension) {
            return u(extension);
        }

        public boolean B6() {
            return this.f69497e.E();
        }

        public int C6() {
            return this.f69497e.z();
        }

        public int D6() {
            return this.f69497e.v();
        }

        public Map<Descriptors.f, Object> E6() {
            return this.f69497e.t();
        }

        public j<MessageType>.a F6() {
            return new a(this, false, null);
        }

        public j<MessageType>.a G6() {
            return new a(this, true, null);
        }

        @Override
        public final <Type> Type M(Z<MessageType, List<Type>> z10, int i10) {
            return (Type) z(z10, i10);
        }

        @Override
        public final <Type> int Q(final n<MessageType, List<Type>> extension) {
            return s(extension);
        }

        @Override
        public final <Type> Type R(n<MessageType, Type> nVar) {
            return (Type) r(nVar);
        }

        @Override
        public final <Type> boolean X(final Z<MessageType, Type> extension) {
            return u(extension);
        }

        @Override
        public final <Type> int Z(final Z<MessageType, List<Type>> extension) {
            return s(extension);
        }

        @Override
        public Map<Descriptors.f, Object> getAllFields() {
            Map r62 = r6(false);
            r62.putAll(E6());
            return Collections.unmodifiableMap(r62);
        }

        @Override
        public Map<Descriptors.f, Object> getAllFieldsRaw() {
            Map r62 = r6(false);
            r62.putAll(E6());
            return Collections.unmodifiableMap(r62);
        }

        @Override
        public Object getField(final Descriptors.f field) {
            if (!field.F()) {
                return super.getField(field);
            }
            H6(field);
            Object u10 = this.f69497e.u(field);
            return u10 == null ? field.Z1() ? Collections.emptyList() : field.v() == Descriptors.f.b.MESSAGE ? P.r6(field.x()) : field.r() : u10;
        }

        @Override
        public Object getRepeatedField(final Descriptors.f field, final int index) {
            if (!field.F()) {
                return super.getRepeatedField(field, index);
            }
            H6(field);
            return this.f69497e.x(field, index);
        }

        @Override
        public int getRepeatedFieldCount(final Descriptors.f field) {
            if (!field.F()) {
                return super.getRepeatedFieldCount(field);
            }
            H6(field);
            return this.f69497e.y(field);
        }

        @Override
        public boolean hasField(final Descriptors.f field) {
            if (!field.F()) {
                return super.hasField(field);
            }
            H6(field);
            return this.f69497e.B(field);
        }

        @Override
        public boolean isInitialized() {
            return super.isInitialized() && B6();
        }

        @Override
        public final <Type> Type l0(Z<MessageType, Type> z10) {
            return (Type) r(z10);
        }

        @Override
        public void makeExtensionsImmutable() {
            this.f69497e.J();
        }

        @Override
        public boolean parseUnknownField(C input, r2.b unknownFields, C12666d0 extensionRegistry, int tag) throws IOException {
            return C12673f1.g(input, unknownFields, extensionRegistry, getDescriptorForType(), new C12673f1.c(this.f69497e), tag);
        }

        @Override
        public final <Type> Type r(AbstractC12654a0<MessageType, Type> abstractC12654a0) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(abstractC12654a0);
            I6(q62);
            Descriptors.f h10 = q62.h();
            Object u10 = this.f69497e.u(h10);
            return u10 == null ? h10.Z1() ? (Type) Collections.emptyList() : h10.v() == Descriptors.f.b.MESSAGE ? (Type) q62.c() : (Type) q62.g(h10.r()) : (Type) q62.g(u10);
        }

        @Override
        public final <Type> int s(final AbstractC12654a0<MessageType, List<Type>> extensionLite) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(extensionLite);
            I6(q62);
            return this.f69497e.y(q62.h());
        }

        @Override
        public final <Type> Type s0(n<MessageType, List<Type>> nVar, int i10) {
            return (Type) z(nVar, i10);
        }

        @Override
        public final <Type> boolean u(final AbstractC12654a0<MessageType, Type> extensionLite) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(extensionLite);
            I6(q62);
            return this.f69497e.B(q62.h());
        }

        @Override
        public final <Type> Type z(AbstractC12654a0<MessageType, List<Type>> abstractC12654a0, int i10) {
            Z<MessageType, ?> q62 = AbstractC12713t0.q6(abstractC12654a0);
            I6(q62);
            return (Type) q62.l(this.f69497e.x(q62.h(), i10));
        }

        public j(i<MessageType, ?> builder) {
            super(builder);
            this.f69497e = builder.D6();
        }
    }

    public static final class m {

        public final Descriptors.b f69502a;

        public final a[] f69503b;

        public String[] f69504c;

        public final c[] f69505d;

        public volatile boolean f69506e;

        public interface a {
            Y0.a A(f builder);

            void B(f builder);

            boolean C(AbstractC12713t0 message);

            boolean D(f builder);

            Y0.a l();

            void m(f builder, Object value);

            Object n(AbstractC12713t0 message);

            Object o(AbstractC12713t0 message);

            Object p(f builder);

            int q(f builder);

            int r(AbstractC12713t0 message);

            Object s(f builder);

            Object t(f builder, int index);

            void u(f builder, Object value);

            Object v(AbstractC12713t0 message, int index);

            Y0.a w(f builder, int index);

            Object x(f builder, int index);

            Object y(AbstractC12713t0 message, int index);

            void z(f builder, int index, Object value);
        }

        public static class b implements a {

            public final Descriptors.f f69507a;

            public final Y0 f69508b;

            public b(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12713t0> messageClass, final Class<? extends f> builderClass) {
                this.f69507a = descriptor;
                this.f69508b = b((AbstractC12713t0) AbstractC12713t0.u6(AbstractC12713t0.s6(messageClass, G.f68056a, new Class[0]), null, new Object[0])).k();
            }

            @Override
            public Y0.a A(f builder) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            @Override
            public void B(f builder) {
                c(builder).l().clear();
            }

            @Override
            public boolean C(AbstractC12713t0 message) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override
            public boolean D(f builder) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            public final S0<?, ?> a(f builder) {
                return builder.internalGetMapField(this.f69507a.getNumber());
            }

            public final S0<?, ?> b(AbstractC12713t0 message) {
                return message.internalGetMapField(this.f69507a.getNumber());
            }

            public final S0<?, ?> c(f builder) {
                return builder.internalGetMutableMapField(this.f69507a.getNumber());
            }

            @Override
            public Y0.a l() {
                return this.f69508b.newBuilderForType();
            }

            @Override
            public void m(f builder, Object value) {
                B(builder);
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    u(builder, it.next());
                }
            }

            @Override
            public Object n(AbstractC12713t0 message) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < r(message); i10++) {
                    arrayList.add(y(message, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override
            public Object o(AbstractC12713t0 message) {
                return n(message);
            }

            @Override
            public Object p(f builder) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < q(builder); i10++) {
                    arrayList.add(t(builder, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override
            public int q(f builder) {
                return a(builder).i().size();
            }

            @Override
            public int r(AbstractC12713t0 message) {
                return b(message).i().size();
            }

            @Override
            public Object s(f builder) {
                return p(builder);
            }

            @Override
            public Object t(f builder, int index) {
                return a(builder).i().get(index);
            }

            @Override
            public void u(f builder, Object value) {
                c(builder).l().add((Y0) value);
            }

            @Override
            public Object v(AbstractC12713t0 message, int index) {
                return y(message, index);
            }

            @Override
            public Y0.a w(f builder, int index) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            @Override
            public Object x(f builder, int index) {
                return t(builder, index);
            }

            @Override
            public Object y(AbstractC12713t0 message, int index) {
                return b(message).i().get(index);
            }

            @Override
            public void z(f builder, int index, Object value) {
                c(builder).l().set(index, (Y0) value);
            }
        }

        public static class c {

            public final Descriptors.b f69509a;

            public final Method f69510b;

            public final Method f69511c;

            public final Method f69512d;

            public c(final Descriptors.b descriptor, final String camelCaseName, final Class<? extends AbstractC12713t0> messageClass, final Class<? extends f> builderClass) {
                this.f69509a = descriptor;
                this.f69510b = AbstractC12713t0.s6(messageClass, "get" + camelCaseName + "Case", new Class[0]);
                this.f69511c = AbstractC12713t0.s6(builderClass, "get" + camelCaseName + "Case", new Class[0]);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("clear");
                sb2.append(camelCaseName);
                this.f69512d = AbstractC12713t0.s6(builderClass, sb2.toString(), new Class[0]);
            }

            public void a(final f builder) {
                AbstractC12713t0.u6(this.f69512d, builder, new Object[0]);
            }

            public Descriptors.f b(f builder) {
                int number = ((D0.c) AbstractC12713t0.u6(this.f69511c, builder, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f69509a.k(number);
                }
                return null;
            }

            public Descriptors.f c(final AbstractC12713t0 message) {
                int number = ((D0.c) AbstractC12713t0.u6(this.f69510b, message, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f69509a.k(number);
                }
                return null;
            }

            public boolean d(f builder) {
                return ((D0.c) AbstractC12713t0.u6(this.f69511c, builder, new Object[0])).getNumber() != 0;
            }

            public boolean e(final AbstractC12713t0 message) {
                return ((D0.c) AbstractC12713t0.u6(this.f69510b, message, new Object[0])).getNumber() != 0;
            }
        }

        public static final class d extends e {

            public Descriptors.d f69513k;

            public final Method f69514l;

            public final Method f69515m;

            public boolean f69516n;

            public Method f69517o;

            public Method f69518p;

            public Method f69519q;

            public Method f69520r;

            public d(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12713t0> messageClass, final Class<? extends f> builderClass) {
                super(descriptor, camelCaseName, messageClass, builderClass);
                this.f69513k = descriptor.W1();
                this.f69514l = AbstractC12713t0.s6(this.f69521a, "valueOf", Descriptors.e.class);
                this.f69515m = AbstractC12713t0.s6(this.f69521a, "getValueDescriptor", new Class[0]);
                boolean H10 = descriptor.a().H();
                this.f69516n = H10;
                if (H10) {
                    String str = "get" + camelCaseName + XMLExporter.ELEMENT_VALUE;
                    Class<Integer> cls = Integer.TYPE;
                    this.f69517o = AbstractC12713t0.s6(messageClass, str, cls);
                    this.f69518p = AbstractC12713t0.s6(builderClass, "get" + camelCaseName + XMLExporter.ELEMENT_VALUE, cls);
                    this.f69519q = AbstractC12713t0.s6(builderClass, "set" + camelCaseName + XMLExporter.ELEMENT_VALUE, cls, cls);
                    this.f69520r = AbstractC12713t0.s6(builderClass, "add" + camelCaseName + XMLExporter.ELEMENT_VALUE, cls);
                }
            }

            @Override
            public Object n(final AbstractC12713t0 message) {
                ArrayList arrayList = new ArrayList();
                int r10 = r(message);
                for (int i10 = 0; i10 < r10; i10++) {
                    arrayList.add(y(message, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override
            public Object p(final f builder) {
                ArrayList arrayList = new ArrayList();
                int q10 = q(builder);
                for (int i10 = 0; i10 < q10; i10++) {
                    arrayList.add(t(builder, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override
            public Object t(final f builder, final int index) {
                if (!this.f69516n) {
                    return AbstractC12713t0.u6(this.f69515m, super.t(builder, index), new Object[0]);
                }
                return this.f69513k.k(((Integer) AbstractC12713t0.u6(this.f69518p, builder, Integer.valueOf(index))).intValue());
            }

            @Override
            public void u(final f builder, final Object value) {
                if (this.f69516n) {
                    AbstractC12713t0.u6(this.f69520r, builder, Integer.valueOf(((Descriptors.e) value).getNumber()));
                } else {
                    super.u(builder, AbstractC12713t0.u6(this.f69514l, null, value));
                }
            }

            @Override
            public Object y(final AbstractC12713t0 message, final int index) {
                if (!this.f69516n) {
                    return AbstractC12713t0.u6(this.f69515m, super.y(message, index), new Object[0]);
                }
                return this.f69513k.k(((Integer) AbstractC12713t0.u6(this.f69517o, message, Integer.valueOf(index))).intValue());
            }

            @Override
            public void z(final f builder, final int index, final Object value) {
                if (this.f69516n) {
                    AbstractC12713t0.u6(this.f69519q, builder, Integer.valueOf(index), Integer.valueOf(((Descriptors.e) value).getNumber()));
                } else {
                    super.z(builder, index, AbstractC12713t0.u6(this.f69514l, null, value));
                }
            }
        }

        public static class e implements a {

            public final Class f69521a;

            public final Method f69522b;

            public final Method f69523c;

            public final Method f69524d;

            public final Method f69525e;

            public final Method f69526f;

            public final Method f69527g;

            public final Method f69528h;

            public final Method f69529i;

            public final Method f69530j;

            public e(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12713t0> messageClass, final Class<? extends f> builderClass) {
                this.f69522b = AbstractC12713t0.s6(messageClass, "get" + camelCaseName + C12667d1.f69075a, new Class[0]);
                this.f69523c = AbstractC12713t0.s6(builderClass, "get" + camelCaseName + C12667d1.f69075a, new Class[0]);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("get");
                sb2.append(camelCaseName);
                String sb3 = sb2.toString();
                Class<Integer> cls = Integer.TYPE;
                Method s62 = AbstractC12713t0.s6(messageClass, sb3, cls);
                this.f69524d = s62;
                this.f69525e = AbstractC12713t0.s6(builderClass, "get" + camelCaseName, cls);
                Class<?> returnType = s62.getReturnType();
                this.f69521a = returnType;
                this.f69526f = AbstractC12713t0.s6(builderClass, "set" + camelCaseName, cls, returnType);
                this.f69527g = AbstractC12713t0.s6(builderClass, "add" + camelCaseName, returnType);
                this.f69528h = AbstractC12713t0.s6(messageClass, "get" + camelCaseName + "Count", new Class[0]);
                this.f69529i = AbstractC12713t0.s6(builderClass, "get" + camelCaseName + "Count", new Class[0]);
                StringBuilder sb4 = new StringBuilder();
                sb4.append("clear");
                sb4.append(camelCaseName);
                this.f69530j = AbstractC12713t0.s6(builderClass, sb4.toString(), new Class[0]);
            }

            @Override
            public Y0.a A(f builder) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }

            @Override
            public void B(final f builder) {
                AbstractC12713t0.u6(this.f69530j, builder, new Object[0]);
            }

            @Override
            public boolean C(final AbstractC12713t0 message) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override
            public boolean D(f builder) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override
            public Y0.a l() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override
            public void m(final f builder, final Object value) {
                B(builder);
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    u(builder, it.next());
                }
            }

            @Override
            public Object n(final AbstractC12713t0 message) {
                return AbstractC12713t0.u6(this.f69522b, message, new Object[0]);
            }

            @Override
            public Object o(final AbstractC12713t0 message) {
                return n(message);
            }

            @Override
            public Object p(f builder) {
                return AbstractC12713t0.u6(this.f69523c, builder, new Object[0]);
            }

            @Override
            public int q(f builder) {
                return ((Integer) AbstractC12713t0.u6(this.f69529i, builder, new Object[0])).intValue();
            }

            @Override
            public int r(final AbstractC12713t0 message) {
                return ((Integer) AbstractC12713t0.u6(this.f69528h, message, new Object[0])).intValue();
            }

            @Override
            public Object s(f builder) {
                return p(builder);
            }

            @Override
            public Object t(f builder, int index) {
                return AbstractC12713t0.u6(this.f69525e, builder, Integer.valueOf(index));
            }

            @Override
            public void u(final f builder, final Object value) {
                AbstractC12713t0.u6(this.f69527g, builder, value);
            }

            @Override
            public Object v(AbstractC12713t0 message, int index) {
                return y(message, index);
            }

            @Override
            public Y0.a w(f builder, int index) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override
            public Object x(f builder, int index) {
                return t(builder, index);
            }

            @Override
            public Object y(final AbstractC12713t0 message, final int index) {
                return AbstractC12713t0.u6(this.f69524d, message, Integer.valueOf(index));
            }

            @Override
            public void z(final f builder, final int index, final Object value) {
                AbstractC12713t0.u6(this.f69526f, builder, Integer.valueOf(index), value);
            }
        }

        public static final class f extends e {

            public final Method f69531k;

            public final Method f69532l;

            public f(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12713t0> messageClass, final Class<? extends f> builderClass) {
                super(descriptor, camelCaseName, messageClass, builderClass);
                this.f69531k = AbstractC12713t0.s6(this.f69521a, "newBuilder", new Class[0]);
                this.f69532l = AbstractC12713t0.s6(builderClass, "get" + camelCaseName + "Builder", Integer.TYPE);
            }

            public final Object a(final Object value) {
                return this.f69521a.isInstance(value) ? value : ((Y0.a) AbstractC12713t0.u6(this.f69531k, null, new Object[0])).mergeFrom((Y0) value).build();
            }

            @Override
            public Y0.a l() {
                return (Y0.a) AbstractC12713t0.u6(this.f69531k, null, new Object[0]);
            }

            @Override
            public void u(final f builder, final Object value) {
                super.u(builder, a(value));
            }

            @Override
            public Y0.a w(final f builder, final int index) {
                return (Y0.a) AbstractC12713t0.u6(this.f69532l, builder, Integer.valueOf(index));
            }

            @Override
            public void z(final f builder, final int index, final Object value) {
                super.z(builder, index, a(value));
            }
        }

        public static final class g extends h {

            public Descriptors.d f69533m;

            public Method f69534n;

            public Method f69535o;

            public boolean f69536p;

            public Method f69537q;

            public Method f69538r;

            public Method f69539s;

            public g(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12713t0> messageClass, final Class<? extends f> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f69533m = descriptor.W1();
                this.f69534n = AbstractC12713t0.s6(this.f69540a, "valueOf", Descriptors.e.class);
                this.f69535o = AbstractC12713t0.s6(this.f69540a, "getValueDescriptor", new Class[0]);
                boolean H10 = descriptor.a().H();
                this.f69536p = H10;
                if (H10) {
                    this.f69537q = AbstractC12713t0.s6(messageClass, "get" + camelCaseName + XMLExporter.ELEMENT_VALUE, new Class[0]);
                    this.f69538r = AbstractC12713t0.s6(builderClass, "get" + camelCaseName + XMLExporter.ELEMENT_VALUE, new Class[0]);
                    this.f69539s = AbstractC12713t0.s6(builderClass, "set" + camelCaseName + XMLExporter.ELEMENT_VALUE, Integer.TYPE);
                }
            }

            @Override
            public void m(final f builder, final Object value) {
                if (this.f69536p) {
                    AbstractC12713t0.u6(this.f69539s, builder, Integer.valueOf(((Descriptors.e) value).getNumber()));
                } else {
                    super.m(builder, AbstractC12713t0.u6(this.f69534n, null, value));
                }
            }

            @Override
            public Object n(final AbstractC12713t0 message) {
                if (!this.f69536p) {
                    return AbstractC12713t0.u6(this.f69535o, super.n(message), new Object[0]);
                }
                return this.f69533m.k(((Integer) AbstractC12713t0.u6(this.f69537q, message, new Object[0])).intValue());
            }

            @Override
            public Object p(final f builder) {
                if (!this.f69536p) {
                    return AbstractC12713t0.u6(this.f69535o, super.p(builder), new Object[0]);
                }
                return this.f69533m.k(((Integer) AbstractC12713t0.u6(this.f69538r, builder, new Object[0])).intValue());
            }
        }

        public static class h implements a {

            public final Class<?> f69540a;

            public final Method f69541b;

            public final Method f69542c;

            public final Method f69543d;

            public final Method f69544e;

            public final Method f69545f;

            public final Method f69546g;

            public final Method f69547h;

            public final Method f69548i;

            public final Descriptors.f f69549j;

            public final boolean f69550k;

            public final boolean f69551l;

            public h(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12713t0> messageClass, final Class<? extends f> builderClass, final String containingOneofCamelCaseName) {
                Method method;
                Method method2;
                Method method3;
                this.f69549j = descriptor;
                boolean z10 = true;
                boolean z11 = descriptor.o() != null;
                this.f69550k = z11;
                if (!m.i(descriptor.a()) && (z11 || descriptor.v() != Descriptors.f.b.MESSAGE)) {
                    z10 = false;
                }
                this.f69551l = z10;
                Method s62 = AbstractC12713t0.s6(messageClass, "get" + camelCaseName, new Class[0]);
                this.f69541b = s62;
                this.f69542c = AbstractC12713t0.s6(builderClass, "get" + camelCaseName, new Class[0]);
                Class<?> returnType = s62.getReturnType();
                this.f69540a = returnType;
                this.f69543d = AbstractC12713t0.s6(builderClass, "set" + camelCaseName, returnType);
                Method method4 = null;
                if (z10) {
                    method = AbstractC12713t0.s6(messageClass, "has" + camelCaseName, new Class[0]);
                } else {
                    method = null;
                }
                this.f69544e = method;
                if (z10) {
                    method2 = AbstractC12713t0.s6(builderClass, "has" + camelCaseName, new Class[0]);
                } else {
                    method2 = null;
                }
                this.f69545f = method2;
                this.f69546g = AbstractC12713t0.s6(builderClass, "clear" + camelCaseName, new Class[0]);
                if (z11) {
                    method3 = AbstractC12713t0.s6(messageClass, "get" + containingOneofCamelCaseName + "Case", new Class[0]);
                } else {
                    method3 = null;
                }
                this.f69547h = method3;
                if (z11) {
                    method4 = AbstractC12713t0.s6(builderClass, "get" + containingOneofCamelCaseName + "Case", new Class[0]);
                }
                this.f69548i = method4;
            }

            @Override
            public Y0.a A(f builder) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }

            @Override
            public void B(final f builder) {
                AbstractC12713t0.u6(this.f69546g, builder, new Object[0]);
            }

            @Override
            public boolean C(final AbstractC12713t0 message) {
                return !this.f69551l ? this.f69550k ? b(message) == this.f69549j.getNumber() : !n(message).equals(this.f69549j.r()) : ((Boolean) AbstractC12713t0.u6(this.f69544e, message, new Object[0])).booleanValue();
            }

            @Override
            public boolean D(f builder) {
                return !this.f69551l ? this.f69550k ? a(builder) == this.f69549j.getNumber() : !p(builder).equals(this.f69549j.r()) : ((Boolean) AbstractC12713t0.u6(this.f69545f, builder, new Object[0])).booleanValue();
            }

            public final int a(final f builder) {
                return ((D0.c) AbstractC12713t0.u6(this.f69548i, builder, new Object[0])).getNumber();
            }

            public final int b(final AbstractC12713t0 message) {
                return ((D0.c) AbstractC12713t0.u6(this.f69547h, message, new Object[0])).getNumber();
            }

            @Override
            public Y0.a l() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override
            public void m(final f builder, final Object value) {
                AbstractC12713t0.u6(this.f69543d, builder, value);
            }

            @Override
            public Object n(final AbstractC12713t0 message) {
                return AbstractC12713t0.u6(this.f69541b, message, new Object[0]);
            }

            @Override
            public Object o(final AbstractC12713t0 message) {
                return n(message);
            }

            @Override
            public Object p(f builder) {
                return AbstractC12713t0.u6(this.f69542c, builder, new Object[0]);
            }

            @Override
            public int q(f builder) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override
            public int r(final AbstractC12713t0 message) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override
            public Object s(f builder) {
                return p(builder);
            }

            @Override
            public Object t(f builder, int index) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override
            public void u(final f builder, final Object value) {
                throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
            }

            @Override
            public Object v(final AbstractC12713t0 message, final int index) {
                throw new UnsupportedOperationException("getRepeatedFieldRaw() called on a singular field.");
            }

            @Override
            public Y0.a w(f builder, int index) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override
            public Object x(f builder, int index) {
                throw new UnsupportedOperationException("getRepeatedFieldRaw() called on a singular field.");
            }

            @Override
            public Object y(final AbstractC12713t0 message, final int index) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override
            public void z(final f builder, final int index, final Object value) {
                throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
            }
        }

        public static final class i extends h {

            public final Method f69552m;

            public final Method f69553n;

            public i(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12713t0> messageClass, final Class<? extends f> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f69552m = AbstractC12713t0.s6(this.f69540a, "newBuilder", new Class[0]);
                this.f69553n = AbstractC12713t0.s6(builderClass, "get" + camelCaseName + "Builder", new Class[0]);
            }

            private Object c(final Object value) {
                return this.f69540a.isInstance(value) ? value : ((Y0.a) AbstractC12713t0.u6(this.f69552m, null, new Object[0])).mergeFrom((Y0) value).buildPartial();
            }

            @Override
            public Y0.a A(f builder) {
                return (Y0.a) AbstractC12713t0.u6(this.f69553n, builder, new Object[0]);
            }

            @Override
            public Y0.a l() {
                return (Y0.a) AbstractC12713t0.u6(this.f69552m, null, new Object[0]);
            }

            @Override
            public void m(final f builder, final Object value) {
                super.m(builder, c(value));
            }
        }

        public static final class j extends h {

            public final Method f69554m;

            public final Method f69555n;

            public final Method f69556o;

            public j(final Descriptors.f descriptor, final String camelCaseName, final Class<? extends AbstractC12713t0> messageClass, final Class<? extends f> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f69554m = AbstractC12713t0.s6(messageClass, "get" + camelCaseName + C12667d1.f69078d, new Class[0]);
                this.f69555n = AbstractC12713t0.s6(builderClass, "get" + camelCaseName + C12667d1.f69078d, new Class[0]);
                this.f69556o = AbstractC12713t0.s6(builderClass, "set" + camelCaseName + C12667d1.f69078d, AbstractC12724x.class);
            }

            @Override
            public void m(f builder, Object value) {
                if (value instanceof AbstractC12724x) {
                    AbstractC12713t0.u6(this.f69556o, builder, value);
                } else {
                    super.m(builder, value);
                }
            }

            @Override
            public Object o(final AbstractC12713t0 message) {
                return AbstractC12713t0.u6(this.f69554m, message, new Object[0]);
            }

            @Override
            public Object s(f builder) {
                return AbstractC12713t0.u6(this.f69555n, builder, new Object[0]);
            }
        }

        public m(final Descriptors.b descriptor, final String[] camelCaseNames, final Class<? extends AbstractC12713t0> messageClass, final Class<? extends f> builderClass) {
            this(descriptor, camelCaseNames);
            e(messageClass, builderClass);
        }

        public static boolean i(Descriptors.g file) {
            return file.z() == Descriptors.g.b.PROTO2;
        }

        public m e(Class<? extends AbstractC12713t0> messageClass, Class<? extends f> builderClass) {
            if (this.f69506e) {
                return this;
            }
            synchronized (this) {
                try {
                    if (this.f69506e) {
                        return this;
                    }
                    int length = this.f69503b.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= length) {
                            break;
                        }
                        Descriptors.f fVar = this.f69502a.s().get(i10);
                        String str = fVar.o() != null ? this.f69504c[fVar.o().r() + length] : null;
                        if (fVar.Z1()) {
                            if (fVar.v() == Descriptors.f.b.MESSAGE) {
                                if (fVar.G() && h(fVar)) {
                                    this.f69503b[i10] = new b(fVar, this.f69504c[i10], messageClass, builderClass);
                                } else {
                                    this.f69503b[i10] = new f(fVar, this.f69504c[i10], messageClass, builderClass);
                                }
                            } else if (fVar.v() == Descriptors.f.b.ENUM) {
                                this.f69503b[i10] = new d(fVar, this.f69504c[i10], messageClass, builderClass);
                            } else {
                                this.f69503b[i10] = new e(fVar, this.f69504c[i10], messageClass, builderClass);
                            }
                        } else if (fVar.v() == Descriptors.f.b.MESSAGE) {
                            this.f69503b[i10] = new i(fVar, this.f69504c[i10], messageClass, builderClass, str);
                        } else if (fVar.v() == Descriptors.f.b.ENUM) {
                            this.f69503b[i10] = new g(fVar, this.f69504c[i10], messageClass, builderClass, str);
                        } else if (fVar.v() == Descriptors.f.b.STRING) {
                            this.f69503b[i10] = new j(fVar, this.f69504c[i10], messageClass, builderClass, str);
                        } else {
                            this.f69503b[i10] = new h(fVar, this.f69504c[i10], messageClass, builderClass, str);
                        }
                        i10++;
                    }
                    int length2 = this.f69505d.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.f69505d[i11] = new c(this.f69502a, this.f69504c[i11 + length], messageClass, builderClass);
                    }
                    this.f69506e = true;
                    this.f69504c = null;
                    return this;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final a f(final Descriptors.f field) {
            if (field.q() != this.f69502a) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
            if (field.F()) {
                throw new IllegalArgumentException("This type does not have extensions.");
            }
            return this.f69503b[field.u()];
        }

        public final c g(final Descriptors.k oneof) {
            if (oneof.k() == this.f69502a) {
                return this.f69505d[oneof.r()];
            }
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }

        public final boolean h(Descriptors.f field) {
            return true;
        }

        public m(final Descriptors.b descriptor, final String[] camelCaseNames) {
            this.f69502a = descriptor;
            this.f69504c = camelCaseNames;
            this.f69503b = new a[descriptor.s().size()];
            this.f69505d = new c[descriptor.v().size()];
            this.f69506e = false;
        }
    }

    public AbstractC12713t0(f<?> builder) {
        this.f69478b = builder.getUnknownFields();
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
