package com.android.tools.r8.internal;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import yd.C16181m;

public final class C5265He0 implements InterfaceC10164wt0 {

    public final C6139Wh f40815b;

    public final EnumC9504sw f40816c;

    public final C9001pv f40817d;

    public final List f40818e;

    public C5265He0(C6139Wh c6139Wh, EnumC9504sw enumC9504sw, C9001pv c9001pv, C6407aL c6407aL, List list) {
        this.f40815b = c6139Wh;
        this.f40816c = enumC9504sw;
        this.f40817d = c9001pv;
        this.f40818e = list;
    }

    public final boolean a(Field field, boolean z10) {
        C9001pv c9001pv = this.f40817d;
        Class<?> type = field.getType();
        c9001pv.getClass();
        if (C9001pv.a(type)) {
            return false;
        }
        Iterator it = (z10 ? c9001pv.f51663c : c9001pv.f51664d).iterator();
        if (!it.hasNext()) {
            C9001pv c9001pv2 = this.f40817d;
            c9001pv2.getClass();
            if ((field.getModifiers() & 136) != 0 || field.isSynthetic()) {
                return false;
            }
            if (c9001pv2.f51662b) {
                InterfaceC9168qv interfaceC9168qv = (InterfaceC9168qv) field.getAnnotation(InterfaceC9168qv.class);
                if (interfaceC9168qv == null) {
                    return false;
                }
                if (z10) {
                    if (!interfaceC9168qv.serialize()) {
                        return false;
                    }
                } else if (!interfaceC9168qv.deserialize()) {
                    return false;
                }
            }
            if (C9001pv.a(field.getType())) {
                return false;
            }
            List list = z10 ? c9001pv2.f51663c : c9001pv2.f51664d;
            if (list.isEmpty()) {
                return true;
            }
            new C6281Yv(field);
            Iterator it2 = list.iterator();
            if (!it2.hasNext()) {
                return true;
            }
            it2.next().getClass();
            throw new ClassCastException();
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        Class cls = c5009Cu0.f39378a;
        if (!Object.class.isAssignableFrom(cls)) {
            return null;
        }
        Iterator it = this.f40818e.iterator();
        if (!it.hasNext()) {
            if (AbstractC10453ye0.f54092a.c(cls)) {
                return new C5207Ge0(cls, a(c5713Oz, c5009Cu0, cls, true));
            }
            return new C5149Fe0(this.f40815b.a(c5009Cu0), a(c5713Oz, c5009Cu0, cls, false));
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01d4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00cf  */
    /* JADX WARN: Type inference failed for: r2v31, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final LinkedHashMap a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0, Class cls, boolean z10) {
        boolean z11;
        Method method;
        InterfaceC10474yl0 interfaceC10474yl0;
        ArrayList arrayList;
        boolean z12;
        int size;
        int i10;
        C5009Cu0 c5009Cu02;
        int i11;
        int i12;
        Field[] fieldArr;
        Class cls2;
        C4975Ce0 c4975Ce0;
        boolean z13;
        ArrayList arrayList2;
        C5265He0 c5265He0 = this;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!cls.isInterface()) {
            C5009Cu0 c5009Cu03 = c5009Cu0;
            Class cls3 = cls;
            while (cls3 != Object.class) {
                Field[] declaredFields = cls3.getDeclaredFields();
                if (cls3 != cls && declaredFields.length > 0) {
                    Iterator it = c5265He0.f40818e.iterator();
                    if (it.hasNext()) {
                        it.next().getClass();
                        throw new ClassCastException();
                    }
                }
                int length = declaredFields.length;
                boolean z14 = false;
                int i13 = 0;
                while (i13 < length) {
                    Field field = declaredFields[i13];
                    boolean a10 = c5265He0.a(field, true);
                    boolean a11 = c5265He0.a(field, z14);
                    if (a10 || a11) {
                        if (!z10) {
                            z11 = a11;
                        } else if (Modifier.isStatic(field.getModifiers())) {
                            z11 = z14;
                        } else {
                            Method a12 = AbstractC10453ye0.f54092a.a(cls3, field);
                            AbstractC10453ye0.a(a12);
                            if (a12.getAnnotation(InterfaceC10474yl0.class) != null && field.getAnnotation(InterfaceC10474yl0.class) == null) {
                                throw new C7073eL(AbstractC4917Be0.a("@SerializedName on ", AbstractC10453ye0.a(a12, z14), " is not supported"));
                            }
                            z11 = a11;
                            method = a12;
                            if (method == null) {
                                AbstractC10453ye0.a(field);
                            }
                            Type a13 = AbstractC6848d.a(c5009Cu03.f39379b, cls3, field.getGenericType(), new HashMap());
                            interfaceC10474yl0 = (InterfaceC10474yl0) field.getAnnotation(InterfaceC10474yl0.class);
                            if (interfaceC10474yl0 != null) {
                                arrayList2 = Collections.singletonList(c5265He0.f40816c.a(field));
                            } else {
                                String value = interfaceC10474yl0.value();
                                String[] alternate = interfaceC10474yl0.alternate();
                                if (alternate.length == 0) {
                                    arrayList2 = Collections.singletonList(value);
                                } else {
                                    z12 = a10;
                                    arrayList = new ArrayList(alternate.length + 1);
                                    arrayList.add(value);
                                    Collections.addAll(arrayList, alternate);
                                    size = arrayList.size();
                                    boolean z15 = z12;
                                    i10 = 0;
                                    c5009Cu02 = c5009Cu03;
                                    C4975Ce0 c4975Ce02 = null;
                                    while (i10 < size) {
                                        C4975Ce0 c4975Ce03 = c4975Ce02;
                                        String str = (String) arrayList.get(i10);
                                        boolean z16 = i10 != 0 ? false : z15;
                                        C5009Cu0 c5009Cu04 = new C5009Cu0(a13);
                                        Class cls4 = c5009Cu04.f39378a;
                                        boolean z17 = cls4 != null && cls4.isPrimitive();
                                        int modifiers = field.getModifiers();
                                        boolean z18 = Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers);
                                        ZK zk2 = (ZK) field.getAnnotation(ZK.class);
                                        int i14 = i10;
                                        AbstractC9997vt0 a14 = zk2 != null ? C6407aL.a(c5265He0.f40815b, c5713Oz, c5009Cu04, zk2) : null;
                                        boolean z19 = a14 != null;
                                        if (a14 == null) {
                                            a14 = c5713Oz.a(c5009Cu04);
                                        }
                                        int i15 = size;
                                        ArrayList arrayList3 = arrayList;
                                        Field field2 = field;
                                        int i16 = i13;
                                        Type type = a13;
                                        int i17 = length;
                                        Field[] fieldArr2 = declaredFields;
                                        Class cls5 = cls3;
                                        c4975Ce02 = c4975Ce03 == null ? (C4975Ce0) linkedHashMap.put(str, new C4975Ce0(str, field, z16, z11, method, z19, a14, c5713Oz, c5009Cu04, z17, z18)) : c4975Ce03;
                                        i10 = i14 + 1;
                                        c5265He0 = this;
                                        cls3 = cls5;
                                        z15 = z16;
                                        length = i17;
                                        declaredFields = fieldArr2;
                                        size = i15;
                                        arrayList = arrayList3;
                                        field = field2;
                                        i13 = i16;
                                        a13 = type;
                                    }
                                    Field field3 = field;
                                    i11 = i13;
                                    i12 = length;
                                    fieldArr = declaredFields;
                                    cls2 = cls3;
                                    c4975Ce0 = c4975Ce02;
                                    z13 = false;
                                    if (c4975Ce0 != null) {
                                        StringBuilder sb2 = new StringBuilder("Class ");
                                        sb2.append(cls.getName());
                                        sb2.append(" declares multiple JSON fields named '");
                                        sb2.append(c4975Ce0.f39292a);
                                        sb2.append("'; conflict is caused by fields ");
                                        Field field4 = c4975Ce0.f39293b;
                                        AbstractC9952ve0 abstractC9952ve0 = AbstractC10453ye0.f54092a;
                                        sb2.append(field4.getDeclaringClass().getName() + C16181m.f130230g + field4.getName());
                                        sb2.append(" and ");
                                        sb2.append(field3.getDeclaringClass().getName() + C16181m.f130230g + field3.getName());
                                        throw new IllegalArgumentException(sb2.toString());
                                    }
                                }
                            }
                            z12 = a10;
                            arrayList = arrayList2;
                            size = arrayList.size();
                            boolean z152 = z12;
                            i10 = 0;
                            c5009Cu02 = c5009Cu03;
                            C4975Ce0 c4975Ce022 = null;
                            while (i10 < size) {
                            }
                            Field field32 = field;
                            i11 = i13;
                            i12 = length;
                            fieldArr = declaredFields;
                            cls2 = cls3;
                            c4975Ce0 = c4975Ce022;
                            z13 = false;
                            if (c4975Ce0 != null) {
                            }
                        }
                        method = null;
                        if (method == null) {
                        }
                        Type a132 = AbstractC6848d.a(c5009Cu03.f39379b, cls3, field.getGenericType(), new HashMap());
                        interfaceC10474yl0 = (InterfaceC10474yl0) field.getAnnotation(InterfaceC10474yl0.class);
                        if (interfaceC10474yl0 != null) {
                        }
                        z12 = a10;
                        arrayList = arrayList2;
                        size = arrayList.size();
                        boolean z1522 = z12;
                        i10 = 0;
                        c5009Cu02 = c5009Cu03;
                        C4975Ce0 c4975Ce0222 = null;
                        while (i10 < size) {
                        }
                        Field field322 = field;
                        i11 = i13;
                        i12 = length;
                        fieldArr = declaredFields;
                        cls2 = cls3;
                        c4975Ce0 = c4975Ce0222;
                        z13 = false;
                        if (c4975Ce0 != null) {
                        }
                    } else {
                        i11 = i13;
                        z13 = z14;
                        i12 = length;
                        fieldArr = declaredFields;
                        cls2 = cls3;
                        c5009Cu02 = c5009Cu03;
                    }
                    i13 = i11 + 1;
                    c5265He0 = this;
                    cls3 = cls2;
                    c5009Cu03 = c5009Cu02;
                    z14 = z13;
                    length = i12;
                    declaredFields = fieldArr;
                }
                Class cls6 = cls3;
                c5009Cu03 = new C5009Cu0(AbstractC6848d.a(c5009Cu03.f39379b, cls6, cls6.getGenericSuperclass(), new HashMap()));
                cls3 = c5009Cu03.f39378a;
                c5265He0 = this;
            }
        }
        return linkedHashMap;
    }
}
