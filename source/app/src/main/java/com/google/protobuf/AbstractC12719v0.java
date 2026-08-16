package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12719v0;
import com.google.protobuf.AbstractC12719v0.b;
import com.google.protobuf.C12692m;
import com.google.protobuf.C12699o0;
import com.google.protobuf.D0;
import com.google.protobuf.InterfaceC12659b1;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class AbstractC12719v0<MessageType extends AbstractC12719v0<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends AbstractC12657b<MessageType, BuilderType> {

    public static final int f69589d = Integer.MAX_VALUE;

    public static final int f69590e = Integer.MIN_VALUE;

    public static final int f69591f = Integer.MAX_VALUE;

    public static final int f69592g = 0;

    public static Map<Object, AbstractC12719v0<?, ?>> f69593h = new ConcurrentHashMap();

    public int f69594b = -1;

    public s2 f69595c = s2.c();

    public static class a {

        public static final int[] f69596a;

        static {
            int[] iArr = new int[A2.c.values().length];
            f69596a = iArr;
            try {
                iArr[A2.c.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69596a[A2.c.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class b<MessageType extends AbstractC12719v0<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends AbstractC12657b.a<MessageType, BuilderType> {

        public final MessageType f69597b;

        public MessageType f69598c;

        public b(MessageType defaultInstance) {
            this.f69597b = defaultInstance;
            if (defaultInstance.F6()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.f69598c = x6();
        }

        public static <MessageType> void w6(MessageType dest, MessageType src) {
            C12732z1.a().j(dest).b(dest, src);
        }

        private MessageType x6() {
            return (MessageType) this.f69597b.O6();
        }

        @Override
        public BuilderType mo1246clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.f69598c = buildPartial();
            return buildertype;
        }

        @Override
        public final MessageType build() {
            MessageType buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12657b.a.newUninitializedMessageException(buildPartial);
        }

        @Override
        public MessageType buildPartial() {
            if (!this.f69598c.F6()) {
                return this.f69598c;
            }
            this.f69598c.G6();
            return this.f69598c;
        }

        public void a5() {
            MessageType x62 = x6();
            w6(x62, this.f69598c);
            this.f69598c = x62;
        }

        @Override
        public final boolean isInitialized() {
            return AbstractC12719v0.E6(this.f69598c, false);
        }

        @Override
        public final BuilderType s6() {
            if (this.f69597b.F6()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.f69598c = x6();
            return this;
        }

        @Override
        public MessageType getDefaultInstanceForType() {
            return this.f69597b;
        }

        @Override
        public BuilderType internalMergeFrom(MessageType message) {
            return t6(message);
        }

        @Override
        public BuilderType mergeFrom(C input, C12666d0 extensionRegistry) throws IOException {
            v3();
            try {
                C12732z1.a().j(this.f69598c).P1(this.f69598c, D.U(input), extensionRegistry);
                return this;
            } catch (RuntimeException e10) {
                if (e10.getCause() instanceof IOException) {
                    throw ((IOException) e10.getCause());
                }
                throw e10;
            }
        }

        public BuilderType t6(MessageType message) {
            if (getDefaultInstanceForType().equals(message)) {
                return this;
            }
            v3();
            w6(this.f69598c, message);
            return this;
        }

        @Override
        public BuilderType mergeFrom(byte[] input, int offset, int length) throws InvalidProtocolBufferException {
            return mergeFrom(input, offset, length, C12666d0.d());
        }

        public final void v3() {
            if (this.f69598c.F6()) {
                return;
            }
            a5();
        }

        @Override
        public BuilderType mergeFrom(byte[] input, int offset, int length, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            v3();
            try {
                C12732z1.a().j(this.f69598c).L1(this.f69598c, input, offset, offset + length, new C12692m.b(extensionRegistry));
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
            } catch (IndexOutOfBoundsException unused) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }
    }

    public static class c<T extends AbstractC12719v0<T, ?>> extends AbstractC12661c<T> {

        public final T f69599a;

        public c(T defaultInstance) {
            this.f69599a = defaultInstance;
        }

        @Override
        public T parsePartialFrom(C c10, C12666d0 c12666d0) throws InvalidProtocolBufferException {
            return (T) AbstractC12719v0.g7(this.f69599a, c10, c12666d0);
        }

        @Override
        public T parsePartialFrom(byte[] bArr, int i10, int i11, C12666d0 c12666d0) throws InvalidProtocolBufferException {
            return (T) AbstractC12719v0.h7(this.f69599a, bArr, i10, i11, c12666d0);
        }
    }

    public static abstract class d<MessageType extends e<MessageType, BuilderType>, BuilderType extends d<MessageType, BuilderType>> extends b<MessageType, BuilderType> implements f<MessageType, BuilderType> {
        public d(MessageType defaultInstance) {
            super(defaultInstance);
        }

        private C12699o0<g> B6() {
            C12699o0<g> c12699o0 = ((e) this.f69598c).f69600i;
            if (!c12699o0.D()) {
                return c12699o0;
            }
            C12699o0<g> clone = c12699o0.clone();
            ((e) this.f69598c).f69600i = clone;
            return clone;
        }

        public final BuilderType A6(final AbstractC12654a0<MessageType, ?> extension) {
            h<MessageType, ?> Z22 = AbstractC12719v0.Z2(extension);
            F6(Z22);
            v3();
            B6().j(Z22.f69613d);
            return this;
        }

        public void C6(C12699o0<g> extensions) {
            v3();
            ((e) this.f69598c).f69600i = extensions;
        }

        public final <Type> BuilderType D6(final AbstractC12654a0<MessageType, List<Type>> extension, final int index, final Type value) {
            h<MessageType, ?> Z22 = AbstractC12719v0.Z2(extension);
            F6(Z22);
            v3();
            B6().Q(Z22.f69613d, index, Z22.j(value));
            return this;
        }

        public final <Type> BuilderType E6(final AbstractC12654a0<MessageType, Type> extension, final Type value) {
            h<MessageType, ?> Z22 = AbstractC12719v0.Z2(extension);
            F6(Z22);
            v3();
            B6().P(Z22.f69613d, Z22.k(value));
            return this;
        }

        public final void F6(final h<MessageType, ?> extension) {
            if (extension.h() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        @Override
        public void a5() {
            super.a5();
            if (((e) this.f69598c).f69600i != C12699o0.s()) {
                MessageType messagetype = this.f69598c;
                ((e) messagetype).f69600i = ((e) messagetype).f69600i.clone();
            }
        }

        @Override
        public final <Type> Type r(AbstractC12654a0<MessageType, Type> abstractC12654a0) {
            return (Type) ((e) this.f69598c).r(abstractC12654a0);
        }

        @Override
        public final <Type> int s(final AbstractC12654a0<MessageType, List<Type>> extension) {
            return ((e) this.f69598c).s(extension);
        }

        @Override
        public final <Type> boolean u(final AbstractC12654a0<MessageType, Type> extension) {
            return ((e) this.f69598c).u(extension);
        }

        public final <Type> BuilderType y6(final AbstractC12654a0<MessageType, List<Type>> extension, final Type value) {
            h<MessageType, ?> Z22 = AbstractC12719v0.Z2(extension);
            F6(Z22);
            v3();
            B6().h(Z22.f69613d, Z22.j(value));
            return this;
        }

        @Override
        public final <Type> Type z(AbstractC12654a0<MessageType, List<Type>> abstractC12654a0, int i10) {
            return (Type) ((e) this.f69598c).z(abstractC12654a0, i10);
        }

        @Override
        public final MessageType buildPartial() {
            if (!((e) this.f69598c).F6()) {
                return (MessageType) this.f69598c;
            }
            ((e) this.f69598c).f69600i.J();
            return (MessageType) super.buildPartial();
        }
    }

    public static abstract class e<MessageType extends e<MessageType, BuilderType>, BuilderType extends d<MessageType, BuilderType>> extends AbstractC12719v0<MessageType, BuilderType> implements f<MessageType, BuilderType> {

        public C12699o0<g> f69600i = C12699o0.s();

        public class a {

            public final Iterator<Map.Entry<g, Object>> f69601a;

            public Map.Entry<g, Object> f69602b;

            public final boolean f69603c;

            public a(e eVar, boolean z10, a aVar) {
                this(z10);
            }

            public void a(final int end, final CodedOutputStream output) throws IOException {
                while (true) {
                    Map.Entry<g, Object> entry = this.f69602b;
                    if (entry == null || entry.getKey().getNumber() >= end) {
                        return;
                    }
                    g key = this.f69602b.getKey();
                    if (this.f69603c && key.V1() == A2.c.MESSAGE && !key.Z1()) {
                        output.P1(key.getNumber(), (InterfaceC12659b1) this.f69602b.getValue());
                    } else {
                        C12699o0.U(key, this.f69602b.getValue(), output);
                    }
                    if (this.f69601a.hasNext()) {
                        this.f69602b = this.f69601a.next();
                    } else {
                        this.f69602b = null;
                    }
                }
            }

            public a(boolean messageSetWireFormat) {
                Iterator<Map.Entry<g, Object>> I10 = e.this.f69600i.I();
                this.f69601a = I10;
                if (I10.hasNext()) {
                    this.f69602b = I10.next();
                }
                this.f69603c = messageSetWireFormat;
            }
        }

        private void A7(final h<MessageType, ?> extension) {
            if (extension.h() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public final void m7(C input, h<?, ?> extension, C12666d0 extensionRegistry, int typeId) throws IOException {
            x7(input, extensionRegistry, extension, A2.c(typeId, 2), typeId);
        }

        @A
        public C12699o0<g> n7() {
            if (this.f69600i.D()) {
                this.f69600i = this.f69600i.clone();
            }
            return this.f69600i;
        }

        public boolean p7() {
            return this.f69600i.E();
        }

        public int q7() {
            return this.f69600i.z();
        }

        @Override
        public final <Type> Type r(AbstractC12654a0<MessageType, Type> abstractC12654a0) {
            h<MessageType, ?> Z22 = AbstractC12719v0.Z2(abstractC12654a0);
            A7(Z22);
            Object u10 = this.f69600i.u(Z22.f69613d);
            return u10 == null ? Z22.f69611b : (Type) Z22.g(u10);
        }

        public int r7() {
            return this.f69600i.v();
        }

        @Override
        public final <Type> int s(final AbstractC12654a0<MessageType, List<Type>> extension) {
            h<MessageType, ?> Z22 = AbstractC12719v0.Z2(extension);
            A7(Z22);
            return this.f69600i.y(Z22.f69613d);
        }

        public final void s7(final MessageType other) {
            if (this.f69600i.D()) {
                this.f69600i = this.f69600i.clone();
            }
            this.f69600i.K(other.f69600i);
        }

        public final void t7(AbstractC12724x rawBytes, C12666d0 extensionRegistry, h<?, ?> extension) throws IOException {
            InterfaceC12659b1 interfaceC12659b1 = (InterfaceC12659b1) this.f69600i.u(extension.f69613d);
            InterfaceC12659b1.a builder = interfaceC12659b1 != null ? interfaceC12659b1.toBuilder() : null;
            if (builder == null) {
                builder = extension.c().newBuilderForType();
            }
            builder.mergeFrom(rawBytes, extensionRegistry);
            n7().P(extension.f69613d, extension.j(builder.build()));
        }

        @Override
        public final <Type> boolean u(final AbstractC12654a0<MessageType, Type> extension) {
            h<MessageType, ?> Z22 = AbstractC12719v0.Z2(extension);
            A7(Z22);
            return this.f69600i.B(Z22.f69613d);
        }

        public final <MessageType extends InterfaceC12659b1> void u7(MessageType defaultInstance, C input, C12666d0 extensionRegistry) throws IOException {
            int i10 = 0;
            AbstractC12724x abstractC12724x = null;
            h<?, ?> hVar = null;
            while (true) {
                int Z10 = input.Z();
                if (Z10 == 0) {
                    break;
                }
                if (Z10 == A2.f67806s) {
                    i10 = input.a0();
                    if (i10 != 0) {
                        hVar = extensionRegistry.c(defaultInstance, i10);
                    }
                } else if (Z10 == A2.f67807t) {
                    if (i10 == 0 || hVar == null) {
                        abstractC12724x = input.y();
                    } else {
                        m7(input, hVar, extensionRegistry, i10);
                        abstractC12724x = null;
                    }
                } else if (!input.h0(Z10)) {
                    break;
                }
            }
            input.a(A2.f67805r);
            if (abstractC12724x == null || i10 == 0) {
                return;
            }
            if (hVar != null) {
                t7(abstractC12724x, extensionRegistry, hVar);
            } else {
                I6(i10, abstractC12724x);
            }
        }

        public e<MessageType, BuilderType>.a v7() {
            return new a(this, false, null);
        }

        public e<MessageType, BuilderType>.a w7() {
            return new a(this, true, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x003d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean x7(C input, C12666d0 extensionRegistry, h<?, ?> extension, int tag, int fieldNumber) throws IOException {
            boolean z10;
            boolean z11;
            Object build;
            InterfaceC12659b1 interfaceC12659b1;
            int b10 = A2.b(tag);
            if (extension != null) {
                if (b10 == C12699o0.A(extension.f69613d.U1(), false)) {
                    z11 = false;
                    z10 = false;
                } else {
                    g gVar = extension.f69613d;
                    if (gVar.f69608e && gVar.f69607d.c() && b10 == C12699o0.A(extension.f69613d.U1(), true)) {
                        z10 = true;
                        z11 = false;
                    }
                }
                if (!z11) {
                    return i7(tag, input);
                }
                n7();
                if (z10) {
                    int u10 = input.u(input.O());
                    if (extension.f69613d.U1() == A2.b.ENUM) {
                        while (input.g() > 0) {
                            Object findValueByNumber = extension.f69613d.W1().findValueByNumber(input.A());
                            if (findValueByNumber == null) {
                                return true;
                            }
                            this.f69600i.h(extension.f69613d, extension.j(findValueByNumber));
                        }
                    } else {
                        while (input.g() > 0) {
                            this.f69600i.h(extension.f69613d, C12699o0.O(input, extension.f69613d.U1(), false));
                        }
                    }
                    input.t(u10);
                } else {
                    int i10 = a.f69596a[extension.f69613d.V1().ordinal()];
                    if (i10 == 1) {
                        InterfaceC12659b1.a builder = (extension.f69613d.Z1() || (interfaceC12659b1 = (InterfaceC12659b1) this.f69600i.u(extension.f69613d)) == null) ? null : interfaceC12659b1.toBuilder();
                        if (builder == null) {
                            builder = extension.c().newBuilderForType();
                        }
                        if (extension.f69613d.U1() == A2.b.GROUP) {
                            input.F(extension.d(), builder, extensionRegistry);
                        } else {
                            input.J(builder, extensionRegistry);
                        }
                        build = builder.build();
                    } else if (i10 != 2) {
                        build = C12699o0.O(input, extension.f69613d.U1(), false);
                    } else {
                        int A10 = input.A();
                        Object findValueByNumber2 = extension.f69613d.W1().findValueByNumber(A10);
                        if (findValueByNumber2 == null) {
                            K6(fieldNumber, A10);
                            return true;
                        }
                        build = findValueByNumber2;
                    }
                    if (extension.f69613d.Z1()) {
                        this.f69600i.h(extension.f69613d, extension.j(build));
                    } else {
                        this.f69600i.P(extension.f69613d, extension.j(build));
                    }
                }
                return true;
            }
            z11 = true;
            z10 = false;
            if (!z11) {
            }
        }

        public <MessageType extends InterfaceC12659b1> boolean y7(MessageType defaultInstance, C input, C12666d0 extensionRegistry, int tag) throws IOException {
            int a10 = A2.a(tag);
            return x7(input, extensionRegistry, extensionRegistry.c(defaultInstance, a10), tag, a10);
        }

        @Override
        public final <Type> Type z(AbstractC12654a0<MessageType, List<Type>> abstractC12654a0, int i10) {
            h<MessageType, ?> Z22 = AbstractC12719v0.Z2(abstractC12654a0);
            A7(Z22);
            return (Type) Z22.i(this.f69600i.x(Z22.f69613d, i10));
        }

        public <MessageType extends InterfaceC12659b1> boolean z7(MessageType defaultInstance, C input, C12666d0 extensionRegistry, int tag) throws IOException {
            if (tag != A2.f67804q) {
                return A2.b(tag) == 2 ? y7(defaultInstance, input, extensionRegistry, tag) : input.h0(tag);
            }
            u7(defaultInstance, input, extensionRegistry);
            return true;
        }
    }

    public interface f<MessageType extends e<MessageType, BuilderType>, BuilderType extends d<MessageType, BuilderType>> extends InterfaceC12663c1 {
        <Type> Type r(AbstractC12654a0<MessageType, Type> extension);

        <Type> int s(AbstractC12654a0<MessageType, List<Type>> extension);

        <Type> boolean u(AbstractC12654a0<MessageType, Type> extension);

        <Type> Type z(AbstractC12654a0<MessageType, List<Type>> extension, int index);
    }

    public static final class g implements C12699o0.c<g> {

        public final D0.d<?> f69605b;

        public final int f69606c;

        public final A2.b f69607d;

        public final boolean f69608e;

        public final boolean f69609f;

        public g(final D0.d<?> enumTypeMap, final int number, final A2.b type, final boolean isRepeated, final boolean isPacked) {
            this.f69605b = enumTypeMap;
            this.f69606c = number;
            this.f69607d = type;
            this.f69608e = isRepeated;
            this.f69609f = isPacked;
        }

        @Override
        public A2.b U1() {
            return this.f69607d;
        }

        @Override
        public A2.c V1() {
            return this.f69607d.a();
        }

        @Override
        public D0.d<?> W1() {
            return this.f69605b;
        }

        @Override
        public boolean Z1() {
            return this.f69608e;
        }

        @Override
        public int compareTo(g other) {
            return this.f69606c - other.f69606c;
        }

        @Override
        public int getNumber() {
            return this.f69606c;
        }

        @Override
        public boolean i2() {
            return this.f69609f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public InterfaceC12659b1.a n(InterfaceC12659b1.a to, InterfaceC12659b1 from) {
            return ((b) to).t6((AbstractC12719v0) from);
        }
    }

    public static class h<ContainingType extends InterfaceC12659b1, Type> extends AbstractC12654a0<ContainingType, Type> {

        public final ContainingType f69610a;

        public final Type f69611b;

        public final InterfaceC12659b1 f69612c;

        public final g f69613d;

        public h(final ContainingType containingTypeDefaultInstance, final Type defaultValue, final InterfaceC12659b1 messageDefaultInstance, final g descriptor, final Class singularType) {
            if (containingTypeDefaultInstance == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (descriptor.U1() == A2.b.MESSAGE && messageDefaultInstance == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            }
            this.f69610a = containingTypeDefaultInstance;
            this.f69611b = defaultValue;
            this.f69612c = messageDefaultInstance;
            this.f69613d = descriptor;
        }

        @Override
        public Type a() {
            return this.f69611b;
        }

        @Override
        public A2.b b() {
            return this.f69613d.U1();
        }

        @Override
        public InterfaceC12659b1 c() {
            return this.f69612c;
        }

        @Override
        public int d() {
            return this.f69613d.getNumber();
        }

        @Override
        public boolean f() {
            return this.f69613d.f69608e;
        }

        public Object g(Object value) {
            if (!this.f69613d.Z1()) {
                return i(value);
            }
            if (this.f69613d.V1() != A2.c.ENUM) {
                return value;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                arrayList.add(i(it.next()));
            }
            return arrayList;
        }

        public ContainingType h() {
            return this.f69610a;
        }

        public Object i(Object value) {
            return this.f69613d.V1() == A2.c.ENUM ? this.f69613d.f69605b.findValueByNumber(((Integer) value).intValue()) : value;
        }

        public Object j(Object value) {
            return this.f69613d.V1() == A2.c.ENUM ? Integer.valueOf(((D0.c) value).getNumber()) : value;
        }

        public Object k(Object value) {
            if (!this.f69613d.Z1()) {
                return j(value);
            }
            if (this.f69613d.V1() != A2.c.ENUM) {
                return value;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                arrayList.add(j(it.next()));
            }
            return arrayList;
        }
    }

    public enum i {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    public static final class j implements Serializable {

        public static final long f69614e = 0;

        public final Class<?> f69615b;

        public final String f69616c;

        public final byte[] f69617d;

        public j(InterfaceC12659b1 regularForm) {
            Class<?> cls = regularForm.getClass();
            this.f69615b = cls;
            this.f69616c = cls.getName();
            this.f69617d = regularForm.toByteArray();
        }

        public static j a(InterfaceC12659b1 message) {
            return new j(message);
        }

        public Object b() throws ObjectStreamException {
            try {
                Field declaredField = d().getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                return ((InterfaceC12659b1) declaredField.get(null)).newBuilderForType().mergeFrom(this.f69617d).buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw new RuntimeException("Unable to understand proto buffer", e10);
            } catch (ClassNotFoundException e11) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.f69616c, e11);
            } catch (IllegalAccessException e12) {
                throw new RuntimeException("Unable to call parsePartialFrom", e12);
            } catch (NoSuchFieldException unused) {
                return c();
            } catch (SecurityException e13) {
                throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.f69616c, e13);
            }
        }

        @Deprecated
        public final Object c() throws ObjectStreamException {
            try {
                Field declaredField = d().getDeclaredField("defaultInstance");
                declaredField.setAccessible(true);
                return ((InterfaceC12659b1) declaredField.get(null)).newBuilderForType().mergeFrom(this.f69617d).buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw new RuntimeException("Unable to understand proto buffer", e10);
            } catch (ClassNotFoundException e11) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.f69616c, e11);
            } catch (IllegalAccessException e12) {
                throw new RuntimeException("Unable to call parsePartialFrom", e12);
            } catch (NoSuchFieldException e13) {
                throw new RuntimeException("Unable to find defaultInstance in " + this.f69616c, e13);
            } catch (SecurityException e14) {
                throw new RuntimeException("Unable to call defaultInstance in " + this.f69616c, e14);
            }
        }

        public final Class<?> d() throws ClassNotFoundException {
            Class<?> cls = this.f69615b;
            return cls != null ? cls : Class.forName(this.f69616c);
        }
    }

    public static Method B6(Class clazz, String name, Class... params) {
        try {
            return clazz.getMethod(name, params);
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("Generated message class \"" + clazz.getName() + "\" missing method \"" + name + "\".", e10);
        }
    }

    public static Object D6(Method method, Object object, Object... params) {
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

    public static final <T extends AbstractC12719v0<T, ?>> boolean E6(T message, boolean shouldMemoize) {
        byte byteValue = ((Byte) message.t6(i.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean K12 = C12732z1.a().j(message).K1(message);
        if (shouldMemoize) {
            message.u6(i.SET_MEMOIZED_IS_INITIALIZED, K12 ? message : null);
        }
        return K12;
    }

    public static <E> D0.k<E> L6(D0.k<E> list) {
        int size = list.size();
        return list.q2(size == 0 ? 10 : size * 2);
    }

    public static Object N6(InterfaceC12659b1 defaultInstance, String info, Object[] objects) {
        return new D1(defaultInstance, info, objects);
    }

    public static <ContainingType extends InterfaceC12659b1, Type> h<ContainingType, Type> P6(final ContainingType containingTypeDefaultInstance, final InterfaceC12659b1 messageDefaultInstance, final D0.d<?> enumTypeMap, final int number, final A2.b type, final boolean isPacked, final Class singularType) {
        return new h<>(containingTypeDefaultInstance, Collections.emptyList(), messageDefaultInstance, new g(enumTypeMap, number, type, true, isPacked), singularType);
    }

    public static <ContainingType extends InterfaceC12659b1, Type> h<ContainingType, Type> Q6(final ContainingType containingTypeDefaultInstance, final Type defaultValue, final InterfaceC12659b1 messageDefaultInstance, final D0.d<?> enumTypeMap, final int number, final A2.b type, final Class singularType) {
        return new h<>(containingTypeDefaultInstance, defaultValue, messageDefaultInstance, new g(enumTypeMap, number, type, false, false), singularType);
    }

    public static <T extends AbstractC12719v0<T, ?>> T R6(T t10, InputStream inputStream) throws InvalidProtocolBufferException {
        return (T) d3(d7(t10, inputStream, C12666d0.d()));
    }

    public static <T extends AbstractC12719v0<T, ?>> T S6(T t10, InputStream inputStream, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        return (T) d3(d7(t10, inputStream, c12666d0));
    }

    public static <T extends AbstractC12719v0<T, ?>> T T6(T t10, AbstractC12724x abstractC12724x) throws InvalidProtocolBufferException {
        return (T) d3(U6(t10, abstractC12724x, C12666d0.d()));
    }

    public static <T extends AbstractC12719v0<T, ?>> T U6(T t10, AbstractC12724x abstractC12724x, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        return (T) d3(e7(t10, abstractC12724x, c12666d0));
    }

    public static <T extends AbstractC12719v0<T, ?>> T V6(T t10, C c10) throws InvalidProtocolBufferException {
        return (T) W6(t10, c10, C12666d0.d());
    }

    public static <T extends AbstractC12719v0<T, ?>> T W6(T t10, C c10, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        return (T) d3(g7(t10, c10, c12666d0));
    }

    public static <T extends AbstractC12719v0<T, ?>> T X6(T t10, InputStream inputStream) throws InvalidProtocolBufferException {
        return (T) d3(g7(t10, C.k(inputStream), C12666d0.d()));
    }

    public static <T extends AbstractC12719v0<T, ?>> T Y6(T t10, InputStream inputStream, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        return (T) d3(g7(t10, C.k(inputStream), c12666d0));
    }

    public static <MessageType extends e<MessageType, BuilderType>, BuilderType extends d<MessageType, BuilderType>, T> h<MessageType, T> Z2(AbstractC12654a0<MessageType, T> extension) {
        if (extension.e()) {
            return (h) extension;
        }
        throw new IllegalArgumentException("Expected a lite extension.");
    }

    public static <T extends AbstractC12719v0<T, ?>> T Z6(T t10, ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (T) a7(t10, byteBuffer, C12666d0.d());
    }

    public static <T extends AbstractC12719v0<T, ?>> T a7(T t10, ByteBuffer byteBuffer, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        return (T) d3(W6(t10, C.o(byteBuffer), c12666d0));
    }

    public static <T extends AbstractC12719v0<T, ?>> T b7(T t10, byte[] bArr) throws InvalidProtocolBufferException {
        return (T) d3(h7(t10, bArr, 0, bArr.length, C12666d0.d()));
    }

    public static <T extends AbstractC12719v0<T, ?>> T c7(T t10, byte[] bArr, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        return (T) d3(h7(t10, bArr, 0, bArr.length, c12666d0));
    }

    public static <T extends AbstractC12719v0<T, ?>> T d3(T message) throws InvalidProtocolBufferException {
        if (message == null || message.isInitialized()) {
            return message;
        }
        throw message.newUninitializedMessageException().asInvalidProtocolBufferException().setUnfinishedMessage(message);
    }

    public static <T extends AbstractC12719v0<T, ?>> T d7(T t10, InputStream inputStream, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        try {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            C k10 = C.k(new AbstractC12657b.a.C1036a(inputStream, C.P(read, inputStream)));
            T t11 = (T) g7(t10, k10, c12666d0);
            try {
                k10.a(0);
                return t11;
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(t11);
            }
        } catch (InvalidProtocolBufferException e11) {
            if (e11.getThrownFromInputStream()) {
                throw new InvalidProtocolBufferException((IOException) e11);
            }
            throw e11;
        } catch (IOException e12) {
            throw new InvalidProtocolBufferException(e12);
        }
    }

    public static <T extends AbstractC12719v0<T, ?>> T e7(T t10, AbstractC12724x abstractC12724x, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        C N10 = abstractC12724x.N();
        T t11 = (T) g7(t10, N10, c12666d0);
        try {
            N10.a(0);
            return t11;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(t11);
        }
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

    public static <T extends AbstractC12719v0<T, ?>> T f7(T t10, C c10) throws InvalidProtocolBufferException {
        return (T) g7(t10, c10, C12666d0.d());
    }

    public static <T extends AbstractC12719v0<T, ?>> T g7(T t10, C c10, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        T t11 = (T) t10.O6();
        try {
            L1 j10 = C12732z1.a().j(t11);
            j10.P1(t11, D.U(c10), c12666d0);
            j10.M1(t11);
            return t11;
        } catch (InvalidProtocolBufferException e10) {
            e = e10;
            if (e.getThrownFromInputStream()) {
                e = new InvalidProtocolBufferException((IOException) e);
            }
            throw e.setUnfinishedMessage(t11);
        } catch (UninitializedMessageException e11) {
            throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(t11);
        } catch (IOException e12) {
            if (e12.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e12.getCause());
            }
            throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(t11);
        } catch (RuntimeException e13) {
            if (e13.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e13.getCause());
            }
            throw e13;
        }
    }

    public static <T extends AbstractC12719v0<T, ?>> T h7(T t10, byte[] bArr, int i10, int i11, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        T t11 = (T) t10.O6();
        try {
            L1 j10 = C12732z1.a().j(t11);
            j10.L1(t11, bArr, i10, i10 + i11, new C12692m.b(c12666d0));
            j10.M1(t11);
            return t11;
        } catch (InvalidProtocolBufferException e10) {
            e = e10;
            if (e.getThrownFromInputStream()) {
                e = new InvalidProtocolBufferException((IOException) e);
            }
            throw e.setUnfinishedMessage(t11);
        } catch (UninitializedMessageException e11) {
            throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(t11);
        } catch (IOException e12) {
            if (e12.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e12.getCause());
            }
            throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(t11);
        } catch (IndexOutOfBoundsException unused) {
            throw InvalidProtocolBufferException.truncatedMessage().setUnfinishedMessage(t11);
        }
    }

    public static <T extends AbstractC12719v0<?, ?>> void j7(Class<T> clazz, T defaultInstance) {
        defaultInstance.H6();
        f69593h.put(clazz, defaultInstance);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.D0$g] */
    public static D0.g mutableCopy(D0.g list) {
        int size = list.size();
        return list.q2(size == 0 ? 10 : size * 2);
    }

    public static <E> D0.k<E> w6() {
        return A1.k();
    }

    public static <T extends AbstractC12719v0<?, ?>> T y6(Class<T> cls) {
        AbstractC12719v0<?, ?> abstractC12719v0 = f69593h.get(cls);
        if (abstractC12719v0 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC12719v0 = f69593h.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (abstractC12719v0 == null) {
            abstractC12719v0 = (T) ((AbstractC12719v0) x2.l(cls)).getDefaultInstanceForType();
            if (abstractC12719v0 == null) {
                throw new IllegalStateException();
            }
            f69593h.put(cls, abstractC12719v0);
        }
        return (T) abstractC12719v0;
    }

    public int A6() {
        return this.memoizedHashCode;
    }

    public boolean C6() {
        return A6() == 0;
    }

    public Object D2() throws Exception {
        return t6(i.BUILD_MESSAGE_INFO);
    }

    public boolean F6() {
        return (this.f69594b & Integer.MIN_VALUE) != 0;
    }

    public void G6() {
        C12732z1.a().j(this).M1(this);
        H6();
    }

    public void H3() {
        this.memoizedHashCode = 0;
    }

    public void H6() {
        this.f69594b &= Integer.MAX_VALUE;
    }

    public void I6(int fieldNumber, AbstractC12724x value) {
        x6();
        this.f69595c.l(fieldNumber, value);
    }

    public final void J6(s2 unknownFields) {
        this.f69595c = s2.n(this.f69595c, unknownFields);
    }

    public void K6(int tag, int value) {
        x6();
        this.f69595c.m(tag, value);
    }

    @Override
    public final BuilderType newBuilderForType() {
        return (BuilderType) t6(i.NEW_BUILDER);
    }

    public MessageType O6() {
        return (MessageType) t6(i.NEW_MUTABLE_INSTANCE);
    }

    public int V4() {
        return C12732z1.a().j(this).O1(this);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other != null && getClass() == other.getClass()) {
            return C12732z1.a().j(this).I1(this, (AbstractC12719v0) other);
        }
        return false;
    }

    @Override
    public int getMemoizedSerializedSize() {
        return this.f69594b & Integer.MAX_VALUE;
    }

    @Override
    public final InterfaceC12723w1<MessageType> getParserForType() {
        return (InterfaceC12723w1) t6(i.GET_PARSER);
    }

    @Override
    public int getSerializedSize(L1 schema) {
        if (F6()) {
            int q62 = q6(schema);
            if (q62 >= 0) {
                return q62;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + q62);
        }
        if (getMemoizedSerializedSize() != Integer.MAX_VALUE) {
            return getMemoizedSerializedSize();
        }
        int q63 = q6(schema);
        setMemoizedSerializedSize(q63);
        return q63;
    }

    public int hashCode() {
        if (F6()) {
            return V4();
        }
        if (C6()) {
            k7(V4());
        }
        return A6();
    }

    public void i4() {
        setMemoizedSerializedSize(Integer.MAX_VALUE);
    }

    public boolean i7(int tag, C input) throws IOException {
        if (A2.b(tag) == 4) {
            return false;
        }
        x6();
        return this.f69595c.i(tag, input);
    }

    @Override
    public final boolean isInitialized() {
        return E6(this, true);
    }

    public void k7(int value) {
        this.memoizedHashCode = value;
    }

    @Override
    public final BuilderType toBuilder() {
        return (BuilderType) ((b) t6(i.NEW_BUILDER)).t6(this);
    }

    public final int q6(L1<?> nullableSchema) {
        return nullableSchema == null ? C12732z1.a().j(this).N1(this) : nullableSchema.N1(this);
    }

    public final <MessageType extends AbstractC12719v0<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> BuilderType r6() {
        return (BuilderType) t6(i.NEW_BUILDER);
    }

    public final <MessageType extends AbstractC12719v0<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> BuilderType s6(MessageType messagetype) {
        return (BuilderType) r6().t6(messagetype);
    }

    @Override
    public void setMemoizedSerializedSize(int size) {
        if (size >= 0) {
            this.f69594b = (size & Integer.MAX_VALUE) | (this.f69594b & Integer.MIN_VALUE);
        } else {
            throw new IllegalStateException("serialized size must be non-negative, was " + size);
        }
    }

    public Object t6(i method) {
        return v6(method, null, null);
    }

    public String toString() {
        return C12667d1.f(this, super.toString());
    }

    @A
    public Object u6(i method, Object arg0) {
        return v6(method, arg0, null);
    }

    public abstract Object v6(i method, Object arg0, Object arg1);

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        C12732z1.a().j(this).J1(this, E.T(output));
    }

    public final void x6() {
        if (this.f69595c == s2.c()) {
            this.f69595c = s2.o();
        }
    }

    @Override
    public final MessageType getDefaultInstanceForType() {
        return (MessageType) t6(i.GET_DEFAULT_INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.D0$i] */
    public static D0.i mutableCopy(D0.i list) {
        int size = list.size();
        return list.q2(size == 0 ? 10 : size * 2);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.D0$f] */
    public static D0.f mutableCopy(D0.f list) {
        int size = list.size();
        return list.q2(size == 0 ? 10 : size * 2);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.D0$b] */
    public static D0.b mutableCopy(D0.b list) {
        int size = list.size();
        return list.q2(size == 0 ? 10 : size * 2);
    }

    @Override
    public int getSerializedSize() {
        return getSerializedSize(null);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.D0$a] */
    public static D0.a mutableCopy(D0.a list) {
        int size = list.size();
        return list.q2(size == 0 ? 10 : size * 2);
    }
}
