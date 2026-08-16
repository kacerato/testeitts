package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class C6129Wd implements InterfaceC10078wM, InterfaceC5026Dc {

    public static final Map f45487b;

    public final Class f45488a;

    static {
        List a10 = AbstractC6619bf.a(InterfaceC8342ly.class, InterfaceC8676ny.class, InterfaceC4958By.class, InterfaceC5016Cy.class, InterfaceC5074Dy.class, InterfaceC5132Ey.class, InterfaceC5190Fy.class, InterfaceC5248Gy.class, InterfaceC5306Hy.class, InterfaceC5364Iy.class, InterfaceC8509my.class, InterfaceC8843oy.class, InterfaceC9010py.class, InterfaceC9177qy.class, InterfaceC9343ry.class, InterfaceC9510sy.class, InterfaceC9677ty.class, InterfaceC9844uy.class, InterfaceC10011vy.class, InterfaceC10178wy.class, InterfaceC10512yy.class, InterfaceC10679zy.class, InterfaceC4900Ay.class);
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(a10));
        int i10 = 0;
        for (Object obj : a10) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                throw new ArithmeticException("Index overflow has happened.");
            }
            arrayList.add(new C8866p50((Class) obj, Integer.valueOf(i10)));
            i10 = i11;
        }
        f45487b = AbstractC9762uV.a(arrayList);
        HashMap hashMap = new HashMap();
        hashMap.put(TypedValues.Custom.S_BOOLEAN, "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put(TypedValues.Custom.S_FLOAT, "kotlin.Float");
        hashMap.put("long", "kotlin.Long");
        hashMap.put("double", "kotlin.Double");
        HashMap hashMap2 = new HashMap();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("java.lang.Object", "kotlin.Any");
        hashMap3.put("java.lang.String", "kotlin.String");
        hashMap3.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap3.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap3.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap3.put("java.lang.Number", "kotlin.Number");
        hashMap3.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap3.put("java.lang.Enum", "kotlin.Enum");
        hashMap3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap3.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap3.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap3.put("java.util.List", "kotlin.collections.List");
        hashMap3.put("java.util.Set", "kotlin.collections.Set");
        hashMap3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap3.put("java.util.Map", "kotlin.collections.Map");
        hashMap3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap3.putAll(hashMap);
        hashMap3.putAll(hashMap2);
        Collection<String> values = hashMap.values();
        GJ.b(values, "<get-values>(...)");
        for (String str : values) {
            StringBuilder sb2 = new StringBuilder("kotlin.jvm.internal.");
            GJ.a((Object) str);
            sb2.append(AbstractC5349Iq0.b(str, '.'));
            sb2.append("CompanionObject");
            hashMap3.put(sb2.toString(), str.concat(".Companion"));
        }
        for (Map.Entry entry : f45487b.entrySet()) {
            Class cls = (Class) entry.getKey();
            int intValue = ((Number) entry.getValue()).intValue();
            hashMap3.put(cls.getName(), "kotlin.Function" + intValue);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(AbstractC9762uV.a(hashMap3.size()));
        for (Map.Entry entry2 : hashMap3.entrySet()) {
            Object key = entry2.getKey();
            String str2 = (String) entry2.getValue();
            GJ.a((Object) str2);
            linkedHashMap.put(key, AbstractC5349Iq0.b(str2, '.'));
        }
    }

    public C6129Wd(Class cls) {
        this.f45488a = cls;
    }

    @Override
    public final Class a() {
        return this.f45488a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C6129Wd) && AbstractC10410yL.a(this).equals(AbstractC10410yL.a((InterfaceC10078wM) obj));
    }

    public final int hashCode() {
        return AbstractC10410yL.a(this).hashCode();
    }

    public final String toString() {
        return ((Object) this.f45488a) + kotlin.jvm.internal.n0.f95758b;
    }
}
