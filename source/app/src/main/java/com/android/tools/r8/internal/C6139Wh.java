package com.android.tools.r8.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

public final class C6139Wh {

    public final Map f45508a;

    public final boolean f45509b;

    public final List f45510c;

    public C6139Wh(Map map, boolean z10, List list) {
        this.f45508a = map;
        this.f45509b = z10;
        this.f45510c = list;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10529z30 a(C5009Cu0 c5009Cu0) {
        InterfaceC10529z30 interfaceC10529z30;
        String str;
        Type type = c5009Cu0.f39379b;
        Class cls = c5009Cu0.f39378a;
        if (this.f45508a.get(type) != null) {
            throw new ClassCastException();
        }
        if (this.f45508a.get(cls) != null) {
            throw new ClassCastException();
        }
        String str2 = null;
        InterfaceC10529z30 c5909Sh = EnumSet.class.isAssignableFrom(cls) ? new C5909Sh(type) : cls == EnumMap.class ? new C5967Th(type) : null;
        if (c5909Sh != null) {
            return c5909Sh;
        }
        Iterator it = this.f45510c.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        if (!Modifier.isAbstract(cls.getModifiers())) {
            try {
                Constructor declaredConstructor = cls.getDeclaredConstructor(null);
                AbstractC9952ve0 abstractC9952ve0 = AbstractC10453ye0.f54092a;
                try {
                    declaredConstructor.setAccessible(true);
                    str = null;
                } catch (Exception e10) {
                    str = "Failed making constructor '" + AbstractC10453ye0.a(declaredConstructor) + "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: " + e10.getMessage();
                }
                interfaceC10529z30 = str != null ? new C6025Uh(str) : new C6082Vh(declaredConstructor);
            } catch (NoSuchMethodException unused) {
                interfaceC10529z30 = null;
            }
            if (interfaceC10529z30 == null) {
                return interfaceC10529z30;
            }
            InterfaceC10529z30 c5214Gh = Collection.class.isAssignableFrom(cls) ? SortedSet.class.isAssignableFrom(cls) ? new C5214Gh() : Set.class.isAssignableFrom(cls) ? new C5272Hh() : Queue.class.isAssignableFrom(cls) ? new C5330Ih() : new C5388Jh() : Map.class.isAssignableFrom(cls) ? ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new C5446Kh() : ConcurrentMap.class.isAssignableFrom(cls) ? new C5504Lh() : SortedMap.class.isAssignableFrom(cls) ? new C5561Mh() : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(new C5009Cu0(((ParameterizedType) type).getActualTypeArguments()[0]).f39378a)) ? new C5677Oh() : new C5619Nh() : null;
            if (c5214Gh != null) {
                return c5214Gh;
            }
            int modifiers = cls.getModifiers();
            if (Modifier.isInterface(modifiers)) {
                str2 = "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
            } else if (Modifier.isAbstract(modifiers)) {
                str2 = "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: ".concat(cls.getName());
            }
            if (str2 != null) {
                return new C5851Rh(str2);
            }
            if (this.f45509b) {
                return new C5735Ph(cls);
            }
            return new C5793Qh("Unable to create instance of " + ((Object) cls) + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.");
        }
        interfaceC10529z30 = null;
        if (interfaceC10529z30 == null) {
        }
    }

    public final String toString() {
        return this.f45508a.toString();
    }
}
