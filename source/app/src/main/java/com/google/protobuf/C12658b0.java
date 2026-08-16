package com.google.protobuf;

import com.google.protobuf.AbstractC12713t0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Z;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class C12658b0 extends C12666d0 {

    public static final C12658b0 f69050k = new C12658b0(true);

    public final Map<String, c> f69051g;

    public final Map<String, c> f69052h;

    public final Map<b, c> f69053i;

    public final Map<b, c> f69054j;

    public static class a {

        public static final int[] f69055a;

        static {
            int[] iArr = new int[Z.a.values().length];
            f69055a = iArr;
            try {
                iArr[Z.a.IMMUTABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69055a[Z.a.MUTABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class b {

        public final Descriptors.b f69056a;

        public final int f69057b;

        public b(final Descriptors.b descriptor, final int number) {
            this.f69056a = descriptor;
            this.f69057b = number;
        }

        public boolean equals(final Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f69056a == bVar.f69056a && this.f69057b == bVar.f69057b;
        }

        public int hashCode() {
            return (this.f69056a.hashCode() * 65535) + this.f69057b;
        }
    }

    public static final class c {

        public final Descriptors.f f69058a;

        public final Y0 f69059b;

        public c(Descriptors.f fVar, Y0 y02, a aVar) {
            this(fVar, y02);
        }

        public c(final Descriptors.f descriptor) {
            this.f69058a = descriptor;
            this.f69059b = null;
        }

        public c(final Descriptors.f descriptor, final Y0 defaultInstance) {
            this.f69058a = descriptor;
            this.f69059b = defaultInstance;
        }
    }

    public C12658b0() {
        this.f69051g = new HashMap();
        this.f69052h = new HashMap();
        this.f69053i = new HashMap();
        this.f69054j = new HashMap();
    }

    public static C12658b0 v() {
        return f69050k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static c x(Z<?, ?> z10) {
        a aVar = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (z10.h().v() != Descriptors.f.b.MESSAGE) {
            return new c(z10.h(), objArr2 == true ? 1 : 0, objArr == true ? 1 : 0);
        }
        if (z10.c() != null) {
            return new c(z10.h(), z10.c(), aVar);
        }
        throw new IllegalStateException("Registered message-type extension had null default instance: " + z10.h().b());
    }

    public static C12658b0 y() {
        return new C12658b0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void i(Descriptors.f fVar) {
        if (fVar.v() == Descriptors.f.b.MESSAGE) {
            throw new IllegalArgumentException("ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension.");
        }
        c cVar = new c(fVar, null, 0 == true ? 1 : 0);
        l(cVar, Z.a.IMMUTABLE);
        l(cVar, Z.a.MUTABLE);
    }

    public void j(final Descriptors.f type, final Y0 defaultInstance) {
        if (type.v() != Descriptors.f.b.MESSAGE) {
            throw new IllegalArgumentException("ExtensionRegistry.add() provided a default instance for a non-message extension.");
        }
        l(new c(type, defaultInstance, null), Z.a.IMMUTABLE);
    }

    public void k(final Z<?, ?> extension) {
        if (extension.i() == Z.a.IMMUTABLE || extension.i() == Z.a.MUTABLE) {
            l(x(extension), extension.i());
        }
    }

    public final void l(final c extension, final Z.a extensionType) {
        Map<String, c> map;
        Map<b, c> map2;
        if (!extension.f69058a.F()) {
            throw new IllegalArgumentException("ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field.");
        }
        int i10 = a.f69055a[extensionType.ordinal()];
        if (i10 == 1) {
            map = this.f69051g;
            map2 = this.f69053i;
        } else {
            if (i10 != 2) {
                return;
            }
            map = this.f69052h;
            map2 = this.f69054j;
        }
        map.put(extension.f69058a.b(), extension);
        map2.put(new b(extension.f69058a.q(), extension.f69058a.getNumber()), extension);
        Descriptors.f fVar = extension.f69058a;
        if (fVar.q().w().X2() && fVar.A() == Descriptors.f.c.MESSAGE && fVar.H() && fVar.t() == fVar.x()) {
            map.put(fVar.x().b(), extension);
        }
    }

    public void m(final AbstractC12713t0.n<?, ?> extension) {
        k(extension);
    }

    @Deprecated
    public c n(final String fullName) {
        return p(fullName);
    }

    @Deprecated
    public c o(final Descriptors.b containingType, final int fieldNumber) {
        return q(containingType, fieldNumber);
    }

    public c p(final String fullName) {
        return this.f69051g.get(fullName);
    }

    public c q(final Descriptors.b containingType, final int fieldNumber) {
        return this.f69053i.get(new b(containingType, fieldNumber));
    }

    public c r(final String fullName) {
        return this.f69052h.get(fullName);
    }

    public c s(final Descriptors.b containingType, final int fieldNumber) {
        return this.f69054j.get(new b(containingType, fieldNumber));
    }

    public Set<c> t(final String fullName) {
        HashSet hashSet = new HashSet();
        for (b bVar : this.f69053i.o()) {
            if (bVar.f69056a.b().equals(fullName)) {
                hashSet.add(this.f69053i.get(bVar));
            }
        }
        return hashSet;
    }

    public Set<c> u(final String fullName) {
        HashSet hashSet = new HashSet();
        for (b bVar : this.f69054j.o()) {
            if (bVar.f69056a.b().equals(fullName)) {
                hashSet.add(this.f69054j.get(bVar));
            }
        }
        return hashSet;
    }

    @Override
    public C12658b0 e() {
        return new C12658b0(this);
    }

    public C12658b0(C12658b0 other) {
        super(other);
        this.f69051g = Collections.unmodifiableMap(other.f69051g);
        this.f69052h = Collections.unmodifiableMap(other.f69052h);
        this.f69053i = Collections.unmodifiableMap(other.f69053i);
        this.f69054j = Collections.unmodifiableMap(other.f69054j);
    }

    public C12658b0(boolean empty) {
        super(C12666d0.f69070f);
        this.f69051g = Collections.emptyMap();
        this.f69052h = Collections.emptyMap();
        this.f69053i = Collections.emptyMap();
        this.f69054j = Collections.emptyMap();
    }
}
