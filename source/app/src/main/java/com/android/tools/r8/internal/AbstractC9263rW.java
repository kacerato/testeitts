package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class AbstractC9263rW {
    public static String a(String str, C5685Ol c5685Ol, int i10) {
        StringBuilder sb2 = new StringBuilder(str);
        if (c5685Ol.f43017c.e()) {
            sb2.append('(');
            sb2.append(c5685Ol.f43018d);
            sb2.append(')');
        } else {
            sb2.append(c5685Ol.f43017c.getName());
        }
        if (i10 != -1) {
            sb2.append('[');
            sb2.append(i10);
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        sb2.append('.');
        return sb2.toString();
    }

    public static void a(InterfaceC8596nW interfaceC8596nW, String str, ArrayList arrayList) {
        for (C5685Ol c5685Ol : Collections.unmodifiableList(Arrays.asList(interfaceC8596nW.getDescriptorForType().f39344g))) {
            EnumC4988Ck a10 = EnumC4988Ck.a(c5685Ol.f43017c.f39996e);
            if (a10 == null) {
                a10 = EnumC4988Ck.f39333c;
            }
            if (a10 == EnumC4988Ck.f39334d && !interfaceC8596nW.hasField(c5685Ol)) {
                arrayList.add(str + c5685Ol.f43017c.getName());
            }
        }
        for (Map.Entry entry : interfaceC8596nW.getAllFields().entrySet()) {
            C5685Ol c5685Ol2 = (C5685Ol) entry.getKey();
            Object value = entry.getValue();
            if (c5685Ol2.f43022h.f42689b == EnumC5569Ml.f42387k) {
                if (c5685Ol2.k()) {
                    Iterator it = ((List) value).iterator();
                    int i10 = 0;
                    while (it.hasNext()) {
                        a((InterfaceC8596nW) it.next(), a(str, c5685Ol2, i10), arrayList);
                        i10++;
                    }
                } else if (interfaceC8596nW.hasField(c5685Ol2)) {
                    a((InterfaceC8596nW) value, a(str, c5685Ol2, -1), arrayList);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(AbstractC4916Be abstractC4916Be, C8167kv0 c8167kv0, C10670zv c10670zv, C4990Cl c4990Cl, InterfaceC9097qW interfaceC9097qW, int i10) {
        boolean z10;
        boolean z11;
        Object b10;
        C5685Ol c5685Ol = null;
        C7707i8 c7707i8 = null;
        c5685Ol = null;
        c5685Ol = null;
        c5685Ol = null;
        if (c4990Cl.f().f44566d && i10 == 11) {
            int i11 = 0;
            while (true) {
                int s10 = abstractC4916Be.s();
                if (s10 == 0) {
                    break;
                }
                if (s10 == 16) {
                    i11 = abstractC4916Be.t();
                    if (i11 != 0 && (c10670zv instanceof C10002vv)) {
                        interfaceC9097qW.a((C10002vv) c10670zv, c4990Cl, i11);
                    }
                } else if (s10 == 26) {
                    c7707i8 = abstractC4916Be.d();
                } else if (!abstractC4916Be.e(s10)) {
                    break;
                }
            }
            abstractC4916Be.a(12);
            if (c7707i8 != null && i11 != 0 && c8167kv0 != null) {
                int i12 = C8501mv0.f50456f;
                C8334lv0 c8334lv0 = new C8334lv0();
                C8501mv0 c8501mv0 = c8334lv0.f50146a;
                if (c8501mv0.f50460d == null) {
                    c8501mv0.f50460d = new ArrayList();
                }
                c8334lv0.f50146a.f50460d.add(c7707i8);
                c8167kv0.a(i11, c8334lv0.a());
            }
            return true;
        }
        int i13 = i10 & 7;
        int i14 = i10 >>> 3;
        int binarySearch = Arrays.binarySearch(c4990Cl.f39348k, i14);
        if (binarySearch < 0) {
            binarySearch = (~binarySearch) - 1;
        }
        if (binarySearch >= 0 && i14 < c4990Cl.f39349l[binarySearch]) {
            if (c10670zv instanceof C10002vv) {
                interfaceC9097qW.a((C10002vv) c10670zv, c4990Cl, i14);
            }
        } else if (interfaceC9097qW.a() == 1) {
            C5685Ol[] c5685OlArr = c4990Cl.f39345h;
            int length = c5685OlArr.length;
            EnumC6000Tx0[] enumC6000Tx0Arr = C5685Ol.f43015n;
            Logger logger = AbstractC6033Ul.f44855a;
            int i15 = length - 1;
            int i16 = 0;
            while (true) {
                if (i16 > i15) {
                    break;
                }
                int i17 = (i16 + i15) / 2;
                C5685Ol c5685Ol2 = c5685OlArr[i17];
                int i18 = c5685Ol2.f43017c.f39995d;
                if (i14 >= i18) {
                    if (i14 <= i18) {
                        c5685Ol = c5685Ol2;
                        break;
                    }
                    i16 = i17 + 1;
                } else {
                    i15 = i17 - 1;
                }
            }
        }
        if (c5685Ol != null) {
            EnumC6000Tx0[] enumC6000Tx0Arr2 = C5685Ol.f43015n;
            if (i13 == enumC6000Tx0Arr2[c5685Ol.f43022h.ordinal()].f44630c) {
                z10 = false;
                z11 = false;
                if (z10) {
                    if (c8167kv0 != null) {
                        return c8167kv0.a(i10, abstractC4916Be);
                    }
                    return abstractC4916Be.e(i10);
                }
                if (z11) {
                    int d10 = abstractC4916Be.d(abstractC4916Be.l());
                    if (C5685Ol.f43015n[c5685Ol.f43022h.ordinal()] == EnumC6000Tx0.f44627e) {
                        while (abstractC4916Be.b() > 0) {
                            int f10 = abstractC4916Be.f();
                            if (c5685Ol.f43019e.e() == 3) {
                                interfaceC9097qW.addRepeatedField(c5685Ol, c5685Ol.f().b(f10));
                            } else {
                                C5454Kl a10 = c5685Ol.f().a(f10);
                                if (a10 != null) {
                                    interfaceC9097qW.addRepeatedField(c5685Ol, a10);
                                } else if (c8167kv0 != null) {
                                    c8167kv0.a(i14, f10);
                                }
                            }
                        }
                    } else {
                        while (abstractC4916Be.b() > 0) {
                            interfaceC9097qW.addRepeatedField(c5685Ol, AbstractC6229Xx0.a(abstractC4916Be, C5685Ol.f43015n[c5685Ol.f43022h.ordinal()], interfaceC9097qW.a(c5685Ol)));
                        }
                    }
                    abstractC4916Be.c(d10);
                } else {
                    int ordinal = c5685Ol.f43022h.ordinal();
                    if (ordinal == 9) {
                        b10 = interfaceC9097qW.b(abstractC4916Be, c10670zv, c5685Ol);
                    } else if (ordinal == 10) {
                        b10 = interfaceC9097qW.a(abstractC4916Be, c10670zv, c5685Ol);
                    } else if (ordinal != 13) {
                        b10 = AbstractC6229Xx0.a(abstractC4916Be, C5685Ol.f43015n[c5685Ol.f43022h.ordinal()], interfaceC9097qW.a(c5685Ol));
                    } else {
                        int f11 = abstractC4916Be.f();
                        if (c5685Ol.f43019e.e() == 3) {
                            b10 = c5685Ol.f().b(f11);
                        } else {
                            C5454Kl a11 = c5685Ol.f().a(f11);
                            if (a11 == null) {
                                if (c8167kv0 != null) {
                                    c8167kv0.a(i14, f11);
                                }
                                return true;
                            }
                            b10 = a11;
                        }
                    }
                    if (c5685Ol.k()) {
                        interfaceC9097qW.addRepeatedField(c5685Ol, b10);
                    } else {
                        interfaceC9097qW.setField(c5685Ol, b10);
                    }
                }
                return true;
            }
            if (c5685Ol.k() && enumC6000Tx0Arr2[c5685Ol.f43022h.ordinal()].a()) {
                EnumC6000Tx0 enumC6000Tx0 = enumC6000Tx0Arr2[c5685Ol.f43022h.ordinal()];
                if (i13 == 2) {
                    z11 = true;
                    z10 = false;
                    if (z10) {
                    }
                }
            }
        }
        z10 = true;
        z11 = false;
        if (z10) {
        }
    }
}
