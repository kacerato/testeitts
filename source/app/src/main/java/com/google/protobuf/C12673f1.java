package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12713t0;
import com.google.protobuf.C12658b0;
import com.google.protobuf.C12699o0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.InterfaceC12659b1;
import com.google.protobuf.Y0;
import com.google.protobuf.r2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.eclipse.jdt.internal.core.JavaElement;

public class C12673f1 {

    public static class a {

        public static final int[] f69097a;

        static {
            int[] iArr = new int[Descriptors.f.c.values().length];
            f69097a = iArr;
            try {
                iArr[Descriptors.f.c.GROUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69097a[Descriptors.f.c.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69097a[Descriptors.f.c.ENUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class b implements e {

        public final Y0.a f69098a;

        public boolean f69099b = true;

        public b(Y0.a builder) {
            this.f69098a = builder;
        }

        @Override
        public e a(Descriptors.f field, Y0 defaultInstance) {
            Y0 y02;
            Y0.a m10;
            if (!field.Z1() && hasField(field) && (m10 = m(field)) != null) {
                return new b(m10);
            }
            Y0.a n10 = n(field, defaultInstance);
            if (!field.Z1() && (y02 = (Y0) getField(field)) != null) {
                n10.mergeFrom(y02);
            }
            return new b(n10);
        }

        @Override
        public e addRepeatedField(Descriptors.f field, Object value) {
            if (value instanceof InterfaceC12659b1.a) {
                value = ((InterfaceC12659b1.a) value).buildPartial();
            }
            this.f69098a.addRepeatedField(field, value);
            return this;
        }

        @Override
        public Object b() {
            return this.f69098a;
        }

        @Override
        public C12658b0.c c(C12658b0 registry, Descriptors.b containingType, int fieldNumber) {
            return registry.q(containingType, fieldNumber);
        }

        @Override
        public e clearField(Descriptors.f field) {
            this.f69098a.clearField(field);
            return this;
        }

        @Override
        public e clearOneof(Descriptors.k oneof) {
            this.f69098a.clearOneof(oneof);
            return this;
        }

        @Override
        public e d(Descriptors.f field, Y0 defaultInstance) {
            return new b(defaultInstance != null ? defaultInstance.newBuilderForType() : this.f69098a.newBuilderForField(field));
        }

        @Override
        public A2.d e(Descriptors.f descriptor) {
            return descriptor.K() ? A2.d.STRICT : (descriptor.Z1() || !(this.f69098a instanceof AbstractC12713t0.f)) ? A2.d.LOOSE : A2.d.LAZY;
        }

        @Override
        public Object f(AbstractC12724x bytes, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0 y02;
            Y0.a newBuilderForType = defaultInstance != null ? defaultInstance.newBuilderForType() : this.f69098a.newBuilderForField(field);
            if (!field.Z1() && (y02 = (Y0) getField(field)) != null) {
                newBuilderForType.mergeFrom(y02);
            }
            newBuilderForType.mergeFrom(bytes, extensionRegistry);
            return newBuilderForType.buildPartial();
        }

        @Override
        public Object g(C input, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0 y02;
            Y0.a newBuilderForType = defaultInstance != null ? defaultInstance.newBuilderForType() : this.f69098a.newBuilderForField(field);
            if (!field.Z1() && (y02 = (Y0) getField(field)) != null) {
                newBuilderForType.mergeFrom(y02);
            }
            input.J(newBuilderForType, extensionRegistry);
            return newBuilderForType.buildPartial();
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return this.f69098a.getDescriptorForType();
        }

        @Override
        public Object getField(Descriptors.f field) {
            return this.f69098a.getField(field);
        }

        @Override
        public Descriptors.f getOneofFieldDescriptor(Descriptors.k oneof) {
            return this.f69098a.getOneofFieldDescriptor(oneof);
        }

        @Override
        public e.a h() {
            return e.a.MESSAGE;
        }

        @Override
        public boolean hasField(Descriptors.f field) {
            return this.f69098a.hasField(field);
        }

        @Override
        public boolean hasOneof(Descriptors.k oneof) {
            return this.f69098a.hasOneof(oneof);
        }

        @Override
        public void i(C input, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0.a n10;
            if (field.Z1()) {
                Y0.a n11 = n(field, defaultInstance);
                input.J(n11, extensionRegistry);
                addRepeatedField(field, n11.buildPartial());
                return;
            }
            if (hasField(field)) {
                Y0.a m10 = m(field);
                if (m10 != null) {
                    input.J(m10, extensionRegistry);
                    return;
                } else {
                    n10 = n(field, defaultInstance);
                    n10.mergeFrom((Y0) getField(field));
                }
            } else {
                n10 = n(field, defaultInstance);
            }
            input.J(n10, extensionRegistry);
            setField(field, n10.buildPartial());
        }

        @Override
        public Object j(C input, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0 y02;
            Y0.a newBuilderForType = defaultInstance != null ? defaultInstance.newBuilderForType() : this.f69098a.newBuilderForField(field);
            if (!field.Z1() && (y02 = (Y0) getField(field)) != null) {
                newBuilderForType.mergeFrom(y02);
            }
            input.F(field.getNumber(), newBuilderForType, extensionRegistry);
            return newBuilderForType.buildPartial();
        }

        @Override
        public C12658b0.c k(C12658b0 registry, String name) {
            return registry.p(name);
        }

        @Override
        public void l(C input, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0.a n10;
            if (field.Z1()) {
                Y0.a n11 = n(field, defaultInstance);
                input.F(field.getNumber(), n11, extensionRegistry);
                addRepeatedField(field, n11.buildPartial());
                return;
            }
            if (hasField(field)) {
                Y0.a m10 = m(field);
                if (m10 != null) {
                    input.F(field.getNumber(), m10, extensionRegistry);
                    return;
                } else {
                    n10 = n(field, defaultInstance);
                    n10.mergeFrom((Y0) getField(field));
                }
            } else {
                n10 = n(field, defaultInstance);
            }
            input.F(field.getNumber(), n10, extensionRegistry);
            setField(field, n10.buildPartial());
        }

        public final Y0.a m(Descriptors.f field) {
            if (!this.f69099b) {
                return null;
            }
            try {
                return this.f69098a.getFieldBuilder(field);
            } catch (UnsupportedOperationException unused) {
                this.f69099b = false;
                return null;
            }
        }

        public final Y0.a n(Descriptors.f field, Y0 defaultInstance) {
            return defaultInstance != null ? defaultInstance.newBuilderForType() : this.f69098a.newBuilderForField(field);
        }

        @Override
        public e setField(Descriptors.f field, Object value) {
            if (field.Z1() || !(value instanceof InterfaceC12659b1.a)) {
                this.f69098a.setField(field, value);
                return this;
            }
            if (value != m(field)) {
                this.f69098a.setField(field, ((InterfaceC12659b1.a) value).buildPartial());
            }
            return this;
        }

        @Override
        public e setRepeatedField(Descriptors.f field, int index, Object value) {
            if (value instanceof InterfaceC12659b1.a) {
                value = ((InterfaceC12659b1.a) value).buildPartial();
            }
            this.f69098a.setRepeatedField(field, index, value);
            return this;
        }
    }

    public static class c implements e {

        public final C12699o0<Descriptors.f> f69100a;

        public c(C12699o0<Descriptors.f> extensions) {
            this.f69100a = extensions;
        }

        @Override
        public e a(Descriptors.f descriptor, Y0 defaultInstance) {
            throw new UnsupportedOperationException("newMergeTargetForField() called on FieldSet object");
        }

        @Override
        public e addRepeatedField(Descriptors.f field, Object value) {
            this.f69100a.h(field, value);
            return this;
        }

        @Override
        public Object b() {
            throw new UnsupportedOperationException("finish() called on FieldSet object");
        }

        @Override
        public C12658b0.c c(C12658b0 registry, Descriptors.b containingType, int fieldNumber) {
            return registry.q(containingType, fieldNumber);
        }

        @Override
        public e clearField(Descriptors.f field) {
            this.f69100a.j(field);
            return this;
        }

        @Override
        public e clearOneof(Descriptors.k oneof) {
            return this;
        }

        @Override
        public e d(Descriptors.f descriptor, Y0 defaultInstance) {
            throw new UnsupportedOperationException("newEmptyTargetForField() called on FieldSet object");
        }

        @Override
        public A2.d e(Descriptors.f descriptor) {
            return descriptor.K() ? A2.d.STRICT : A2.d.LOOSE;
        }

        @Override
        public Object f(AbstractC12724x bytes, C12666d0 registry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0 y02;
            Y0.a newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.Z1() && (y02 = (Y0) getField(field)) != null) {
                newBuilderForType.mergeFrom(y02);
            }
            newBuilderForType.mergeFrom(bytes, registry);
            return newBuilderForType.buildPartial();
        }

        @Override
        public Object g(C input, C12666d0 registry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0 y02;
            Y0.a newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.Z1() && (y02 = (Y0) getField(field)) != null) {
                newBuilderForType.mergeFrom(y02);
            }
            input.J(newBuilderForType, registry);
            return newBuilderForType.buildPartial();
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            throw new UnsupportedOperationException("getDescriptorForType() called on FieldSet object");
        }

        @Override
        public Object getField(Descriptors.f field) {
            return this.f69100a.u(field);
        }

        @Override
        public Descriptors.f getOneofFieldDescriptor(Descriptors.k oneof) {
            return null;
        }

        @Override
        public e.a h() {
            return e.a.EXTENSION_SET;
        }

        @Override
        public boolean hasField(Descriptors.f field) {
            return this.f69100a.B(field);
        }

        @Override
        public boolean hasOneof(Descriptors.k oneof) {
            return false;
        }

        @Override
        public void i(C input, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            if (field.Z1()) {
                Y0.a newBuilderForType = defaultInstance.newBuilderForType();
                input.J(newBuilderForType, extensionRegistry);
                addRepeatedField(field, newBuilderForType.buildPartial());
            } else if (hasField(field)) {
                InterfaceC12659b1.a builder = ((InterfaceC12659b1) getField(field)).toBuilder();
                input.J(builder, extensionRegistry);
                setField(field, builder.buildPartial());
            } else {
                Y0.a newBuilderForType2 = defaultInstance.newBuilderForType();
                input.J(newBuilderForType2, extensionRegistry);
                setField(field, newBuilderForType2.buildPartial());
            }
        }

        @Override
        public Object j(C input, C12666d0 registry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0 y02;
            Y0.a newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.Z1() && (y02 = (Y0) getField(field)) != null) {
                newBuilderForType.mergeFrom(y02);
            }
            input.F(field.getNumber(), newBuilderForType, registry);
            return newBuilderForType.buildPartial();
        }

        @Override
        public C12658b0.c k(C12658b0 registry, String name) {
            return registry.p(name);
        }

        @Override
        public void l(C input, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            if (field.Z1()) {
                Y0.a newBuilderForType = defaultInstance.newBuilderForType();
                input.F(field.getNumber(), newBuilderForType, extensionRegistry);
                addRepeatedField(field, newBuilderForType.buildPartial());
            } else if (hasField(field)) {
                InterfaceC12659b1.a builder = ((InterfaceC12659b1) getField(field)).toBuilder();
                input.F(field.getNumber(), builder, extensionRegistry);
                setField(field, builder.buildPartial());
            } else {
                Y0.a newBuilderForType2 = defaultInstance.newBuilderForType();
                input.F(field.getNumber(), newBuilderForType2, extensionRegistry);
                setField(field, newBuilderForType2.buildPartial());
            }
        }

        @Override
        public e setField(Descriptors.f field, Object value) {
            this.f69100a.P(field, value);
            return this;
        }

        @Override
        public e setRepeatedField(Descriptors.f field, int index, Object value) {
            this.f69100a.Q(field, index, value);
            return this;
        }
    }

    public static class d implements e {

        public final C12699o0.b<Descriptors.f> f69101a;

        public d(C12699o0.b<Descriptors.f> extensions) {
            this.f69101a = extensions;
        }

        @Override
        public e a(Descriptors.f descriptor, Y0 defaultInstance) {
            throw new UnsupportedOperationException("newMergeTargetForField() called on FieldSet object");
        }

        @Override
        @A
        public e addRepeatedField(Descriptors.f field, Object value) {
            this.f69101a.a(field, value);
            return this;
        }

        @Override
        public Object b() {
            throw new UnsupportedOperationException("finish() called on FieldSet object");
        }

        @Override
        public C12658b0.c c(C12658b0 registry, Descriptors.b containingType, int fieldNumber) {
            return registry.q(containingType, fieldNumber);
        }

        @Override
        @A
        public e clearField(Descriptors.f field) {
            this.f69101a.e(field);
            return this;
        }

        @Override
        @A
        public e clearOneof(Descriptors.k oneof) {
            return this;
        }

        @Override
        public e d(Descriptors.f descriptor, Y0 defaultInstance) {
            throw new UnsupportedOperationException("newEmptyTargetForField() called on FieldSet object");
        }

        @Override
        public A2.d e(Descriptors.f descriptor) {
            return descriptor.K() ? A2.d.STRICT : A2.d.LOOSE;
        }

        @Override
        public Object f(AbstractC12724x bytes, C12666d0 registry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0 y02;
            Y0.a newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.Z1() && (y02 = (Y0) getField(field)) != null) {
                newBuilderForType.mergeFrom(y02);
            }
            newBuilderForType.mergeFrom(bytes, registry);
            return newBuilderForType.buildPartial();
        }

        @Override
        public Object g(C input, C12666d0 registry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0 y02;
            Y0.a newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.Z1() && (y02 = (Y0) getField(field)) != null) {
                newBuilderForType.mergeFrom(y02);
            }
            input.J(newBuilderForType, registry);
            return newBuilderForType.buildPartial();
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            throw new UnsupportedOperationException("getDescriptorForType() called on FieldSet object");
        }

        @Override
        public Object getField(Descriptors.f field) {
            return this.f69101a.i(field);
        }

        @Override
        public Descriptors.f getOneofFieldDescriptor(Descriptors.k oneof) {
            return null;
        }

        @Override
        public e.a h() {
            return e.a.EXTENSION_SET;
        }

        @Override
        public boolean hasField(Descriptors.f field) {
            return this.f69101a.n(field);
        }

        @Override
        public boolean hasOneof(Descriptors.k oneof) {
            return false;
        }

        @Override
        public void i(C input, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            InterfaceC12659b1.a builder;
            if (field.Z1()) {
                Y0.a newBuilderForType = defaultInstance.newBuilderForType();
                input.J(newBuilderForType, extensionRegistry);
                addRepeatedField(field, newBuilderForType.buildPartial());
            } else if (!hasField(field)) {
                Y0.a newBuilderForType2 = defaultInstance.newBuilderForType();
                input.J(newBuilderForType2, extensionRegistry);
                setField(field, newBuilderForType2);
            } else {
                Object j10 = this.f69101a.j(field);
                if (j10 instanceof InterfaceC12659b1.a) {
                    builder = (InterfaceC12659b1.a) j10;
                } else {
                    builder = ((InterfaceC12659b1) j10).toBuilder();
                    this.f69101a.v(field, builder);
                }
                input.J(builder, extensionRegistry);
            }
        }

        @Override
        public Object j(C input, C12666d0 registry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            Y0 y02;
            Y0.a newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.Z1() && (y02 = (Y0) getField(field)) != null) {
                newBuilderForType.mergeFrom(y02);
            }
            input.F(field.getNumber(), newBuilderForType, registry);
            return newBuilderForType.buildPartial();
        }

        @Override
        public C12658b0.c k(C12658b0 registry, String name) {
            return registry.p(name);
        }

        @Override
        public void l(C input, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException {
            InterfaceC12659b1.a builder;
            if (field.Z1()) {
                Y0.a newBuilderForType = defaultInstance.newBuilderForType();
                input.F(field.getNumber(), newBuilderForType, extensionRegistry);
                addRepeatedField(field, newBuilderForType.buildPartial());
            } else if (!hasField(field)) {
                Y0.a newBuilderForType2 = defaultInstance.newBuilderForType();
                input.F(field.getNumber(), newBuilderForType2, extensionRegistry);
                setField(field, newBuilderForType2);
            } else {
                Object j10 = this.f69101a.j(field);
                if (j10 instanceof InterfaceC12659b1.a) {
                    builder = (InterfaceC12659b1.a) j10;
                } else {
                    builder = ((InterfaceC12659b1) j10).toBuilder();
                    this.f69101a.v(field, builder);
                }
                input.F(field.getNumber(), builder, extensionRegistry);
            }
        }

        @Override
        @A
        public e setField(Descriptors.f field, Object value) {
            this.f69101a.v(field, value);
            return this;
        }

        @Override
        @A
        public e setRepeatedField(Descriptors.f field, int index, Object value) {
            this.f69101a.w(field, index, value);
            return this;
        }
    }

    public interface e {

        public enum a {
            MESSAGE,
            EXTENSION_SET
        }

        e a(Descriptors.f descriptor, Y0 defaultInstance);

        e addRepeatedField(Descriptors.f field, Object value);

        Object b();

        C12658b0.c c(C12658b0 registry, Descriptors.b containingType, int fieldNumber);

        e clearField(Descriptors.f field);

        e clearOneof(Descriptors.k oneof);

        e d(Descriptors.f descriptor, Y0 defaultInstance);

        A2.d e(Descriptors.f descriptor);

        Object f(AbstractC12724x bytes, C12666d0 registry, Descriptors.f descriptor, Y0 defaultInstance) throws IOException;

        Object g(C input, C12666d0 registry, Descriptors.f descriptor, Y0 defaultInstance) throws IOException;

        Descriptors.b getDescriptorForType();

        Object getField(Descriptors.f field);

        Descriptors.f getOneofFieldDescriptor(Descriptors.k oneof);

        a h();

        boolean hasField(Descriptors.f field);

        boolean hasOneof(Descriptors.k oneof);

        void i(C input, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException;

        Object j(C input, C12666d0 registry, Descriptors.f descriptor, Y0 defaultInstance) throws IOException;

        C12658b0.c k(C12658b0 registry, String name);

        void l(C input, C12666d0 extensionRegistry, Descriptors.f field, Y0 defaultInstance) throws IOException;

        e setField(Descriptors.f field, Object value);

        e setRepeatedField(Descriptors.f field, int index, Object value);
    }

    public static String a(List<String> parts) {
        StringBuilder sb2 = new StringBuilder();
        for (String str : parts) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    public static void b(C input, C12658b0.c extension, C12666d0 extensionRegistry, e target) throws IOException {
        Descriptors.f fVar = extension.f69058a;
        target.setField(fVar, target.g(input, extensionRegistry, fVar, extension.f69059b));
    }

    public static List<String> c(final InterfaceC12670e1 message) {
        ArrayList arrayList = new ArrayList();
        d(message, "", arrayList);
        return arrayList;
    }

    public static void d(final InterfaceC12670e1 message, final String prefix, final List<String> results) {
        for (Descriptors.f fVar : message.getDescriptorForType().s()) {
            if (fVar.J() && !message.hasField(fVar)) {
                results.add(prefix + fVar.c());
            }
        }
        for (Map.Entry<Descriptors.f, Object> entry : message.getAllFields().entrySet()) {
            Descriptors.f key = entry.getKey();
            Object value = entry.getValue();
            if (key.v() == Descriptors.f.b.MESSAGE) {
                if (key.Z1()) {
                    Iterator it = ((List) value).iterator();
                    int i10 = 0;
                    while (it.hasNext()) {
                        d((InterfaceC12670e1) it.next(), k(prefix, key, i10), results);
                        i10++;
                    }
                } else if (message.hasField(key)) {
                    d((InterfaceC12670e1) value, k(prefix, key, -1), results);
                }
            }
        }
    }

    public static int e(Y0 message, Map<Descriptors.f, Object> fields) {
        boolean X22 = message.getDescriptorForType().w().X2();
        int i10 = 0;
        for (Map.Entry<Descriptors.f, Object> entry : fields.entrySet()) {
            Descriptors.f key = entry.getKey();
            Object value = entry.getValue();
            i10 += (X22 && key.F() && key.A() == Descriptors.f.c.MESSAGE && !key.Z1()) ? CodedOutputStream.E0(key.getNumber(), (Y0) value) : C12699o0.q(key, value);
        }
        r2 unknownFields = message.getUnknownFields();
        return i10 + (X22 ? unknownFields.m1() : unknownFields.getSerializedSize());
    }

    public static boolean f(InterfaceC12670e1 message) {
        for (Descriptors.f fVar : message.getDescriptorForType().s()) {
            if (fVar.J() && !message.hasField(fVar)) {
                return false;
            }
        }
        for (Map.Entry<Descriptors.f, Object> entry : message.getAllFields().entrySet()) {
            Descriptors.f key = entry.getKey();
            if (key.v() == Descriptors.f.b.MESSAGE) {
                if (key.Z1()) {
                    Iterator it = ((List) entry.getValue()).iterator();
                    while (it.hasNext()) {
                        if (!((Y0) it.next()).isInitialized()) {
                            return false;
                        }
                    }
                } else if (!((Y0) entry.getValue()).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean g(C input, r2.b unknownFields, C12666d0 extensionRegistry, Descriptors.b type, e target, int tag) throws IOException {
        Y0 y02;
        boolean z10;
        Object obj;
        C12658b0.c c10;
        if (type.w().X2() && tag == A2.f67804q) {
            j(input, unknownFields, extensionRegistry, type, target);
            return true;
        }
        int b10 = A2.b(tag);
        int a10 = A2.a(tag);
        Descriptors.f fVar = null;
        if (type.z(a10)) {
            if ((extensionRegistry instanceof C12658b0) && (c10 = target.c((C12658b0) extensionRegistry, type, a10)) != null) {
                fVar = c10.f69058a;
                y02 = c10.f69059b;
                if (y02 == null && fVar.v() == Descriptors.f.b.MESSAGE) {
                    throw new IllegalStateException("Message-typed extension lacked default instance: " + fVar.b());
                }
            }
            y02 = null;
        } else {
            if (target.h() == e.a.MESSAGE) {
                fVar = type.k(a10);
                y02 = null;
            }
            y02 = null;
        }
        boolean z11 = false;
        if (fVar != null) {
            if (b10 == C12699o0.A(fVar.U1(), false)) {
                z10 = false;
            } else if (fVar.I() && b10 == C12699o0.A(fVar.U1(), true)) {
                z10 = true;
            }
            if (!z11) {
                return unknownFields != null ? unknownFields.v6(tag, input) : input.h0(tag);
            }
            if (z10) {
                int u10 = input.u(input.O());
                if (fVar.U1() == A2.b.ENUM) {
                    while (input.g() > 0) {
                        int A10 = input.A();
                        if (fVar.a().H()) {
                            target.addRepeatedField(fVar, fVar.W1().k(A10));
                        } else {
                            Descriptors.e findValueByNumber = fVar.W1().findValueByNumber(A10);
                            if (findValueByNumber != null) {
                                target.addRepeatedField(fVar, findValueByNumber);
                            } else if (unknownFields != null) {
                                unknownFields.J6(a10, A10);
                            }
                        }
                    }
                } else {
                    while (input.g() > 0) {
                        target.addRepeatedField(fVar, A2.d(input, fVar.U1(), target.e(fVar)));
                    }
                }
                input.t(u10);
            } else {
                int i10 = a.f69097a[fVar.A().ordinal()];
                if (i10 == 1) {
                    target.l(input, extensionRegistry, fVar, y02);
                    return true;
                }
                if (i10 == 2) {
                    target.i(input, extensionRegistry, fVar, y02);
                    return true;
                }
                if (i10 != 3) {
                    obj = A2.d(input, fVar.U1(), target.e(fVar));
                } else {
                    int A11 = input.A();
                    if (fVar.a().H()) {
                        obj = fVar.W1().k(A11);
                    } else {
                        Descriptors.e findValueByNumber2 = fVar.W1().findValueByNumber(A11);
                        if (findValueByNumber2 == null) {
                            if (unknownFields != null) {
                                unknownFields.J6(a10, A11);
                            }
                            return true;
                        }
                        obj = findValueByNumber2;
                    }
                }
                if (fVar.Z1()) {
                    target.addRepeatedField(fVar, obj);
                } else {
                    target.setField(fVar, obj);
                }
            }
            return true;
        }
        z10 = false;
        z11 = true;
        if (!z11) {
        }
    }

    public static void h(Y0.a target, r2.b unknownFields, C input, C12666d0 extensionRegistry) throws IOException {
        int Z10;
        b bVar = new b(target);
        Descriptors.b descriptorForType = target.getDescriptorForType();
        do {
            Z10 = input.Z();
            if (Z10 == 0) {
                return;
            }
        } while (g(input, unknownFields, extensionRegistry, descriptorForType, bVar, Z10));
    }

    public static void i(AbstractC12724x rawBytes, C12658b0.c extension, C12666d0 extensionRegistry, e target) throws IOException {
        Descriptors.f fVar = extension.f69058a;
        if (target.hasField(fVar) || C12666d0.f()) {
            target.setField(fVar, target.f(rawBytes, extensionRegistry, fVar, extension.f69059b));
        } else {
            target.setField(fVar, new H0(extension.f69059b, extensionRegistry, rawBytes));
        }
    }

    public static void j(C input, r2.b unknownFields, C12666d0 extensionRegistry, Descriptors.b type, e target) throws IOException {
        int i10 = 0;
        AbstractC12724x abstractC12724x = null;
        C12658b0.c cVar = null;
        while (true) {
            int Z10 = input.Z();
            if (Z10 == 0) {
                break;
            }
            if (Z10 == A2.f67806s) {
                i10 = input.a0();
                if (i10 != 0 && (extensionRegistry instanceof C12658b0)) {
                    cVar = target.c((C12658b0) extensionRegistry, type, i10);
                }
            } else if (Z10 == A2.f67807t) {
                if (i10 == 0 || cVar == null || !C12666d0.f()) {
                    abstractC12724x = input.y();
                } else {
                    b(input, cVar, extensionRegistry, target);
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
        if (cVar != null) {
            i(abstractC12724x, cVar, extensionRegistry, target);
        } else if (unknownFields != null) {
            unknownFields.u6(i10, r2.c.u().e(abstractC12724x).g());
        }
    }

    public static String k(final String prefix, final Descriptors.f field, final int index) {
        StringBuilder sb2 = new StringBuilder(prefix);
        if (field.F()) {
            sb2.append('(');
            sb2.append(field.b());
            sb2.append(')');
        } else {
            sb2.append(field.c());
        }
        if (index != -1) {
            sb2.append('[');
            sb2.append(index);
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        sb2.append('.');
        return sb2.toString();
    }

    public static void l(Y0 message, Map<Descriptors.f, Object> fields, CodedOutputStream output, boolean alwaysWriteRequiredFields) throws IOException {
        boolean X22 = message.getDescriptorForType().w().X2();
        if (alwaysWriteRequiredFields) {
            TreeMap treeMap = new TreeMap(fields);
            for (Descriptors.f fVar : message.getDescriptorForType().s()) {
                if (fVar.J() && !treeMap.containsKey(fVar)) {
                    treeMap.put(fVar, message.getField(fVar));
                }
            }
            fields = treeMap;
        }
        for (Map.Entry<Descriptors.f, Object> entry : fields.entrySet()) {
            Descriptors.f key = entry.getKey();
            Object value = entry.getValue();
            if (X22 && key.F() && key.A() == Descriptors.f.c.MESSAGE && !key.Z1()) {
                output.P1(key.getNumber(), (Y0) value);
            } else {
                C12699o0.U(key, value, output);
            }
        }
        r2 unknownFields = message.getUnknownFields();
        if (X22) {
            unknownFields.a5(output);
        } else {
            unknownFields.writeTo(output);
        }
    }
}
