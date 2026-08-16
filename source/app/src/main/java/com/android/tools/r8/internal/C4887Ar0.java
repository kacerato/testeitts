package com.android.tools.r8.internal;

import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class C4887Ar0 {

    public static final C4887Ar0 f38725b;

    public final C10334xu0 f38726a;

    static {
        int i10 = C10334xu0.f53871a;
        f38725b = new C4887Ar0(AbstractC10167wu0.f53639a);
    }

    public C4887Ar0(C10334xu0 c10334xu0) {
        this.f38726a = c10334xu0;
    }

    public static void a(C9002pv0 c9002pv0, C4945Br0 c4945Br0) {
        for (Map.Entry entry : ((Map) c9002pv0.f51666b.clone()).entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            C8501mv0 c8501mv0 = (C8501mv0) entry.getValue();
            a(intValue, 0, c8501mv0.f50457a, c4945Br0);
            a(intValue, 5, c8501mv0.f50458b, c4945Br0);
            a(intValue, 1, c8501mv0.f50459c, c4945Br0);
            a(intValue, 2, c8501mv0.f50460d, c4945Br0);
            for (C9002pv0 c9002pv02 : c8501mv0.f50461e) {
                c4945Br0.a(((Integer) entry.getKey()).toString());
                c4945Br0.a(" {");
                c4945Br0.a();
                c4945Br0.f39029b.append(GlideException.a.f59088e);
                a(c9002pv02, c4945Br0);
                int length = c4945Br0.f39029b.length();
                if (length != 0) {
                    c4945Br0.f39029b.setLength(length - 2);
                    c4945Br0.a(VectorFormat.DEFAULT_SUFFIX);
                    c4945Br0.a();
                } else {
                    throw new IllegalArgumentException(" Outdent() without matching Indent().");
                }
            }
        }
    }

    public final void a(InterfaceC8596nW interfaceC8596nW, C4945Br0 c4945Br0) {
        C5685Ol c5685Ol;
        C5685Ol c5685Ol2;
        if (interfaceC8596nW.getDescriptorForType().f39340c.equals("google.protobuf.Any")) {
            C4990Cl descriptorForType = interfaceC8596nW.getDescriptorForType();
            C5685Ol[] c5685OlArr = descriptorForType.f39345h;
            int length = c5685OlArr.length;
            EnumC6000Tx0[] enumC6000Tx0Arr = C5685Ol.f43015n;
            Logger logger = AbstractC6033Ul.f44855a;
            int i10 = length - 1;
            int i11 = 0;
            while (true) {
                c5685Ol = null;
                if (i11 > i10) {
                    c5685Ol2 = null;
                    break;
                }
                int i12 = (i11 + i10) / 2;
                c5685Ol2 = c5685OlArr[i12];
                int i13 = c5685Ol2.f43017c.f39995d;
                if (1 < i13) {
                    i10 = i12 - 1;
                } else if (1 <= i13) {
                    break;
                } else {
                    i11 = i12 + 1;
                }
            }
            C5685Ol[] c5685OlArr2 = descriptorForType.f39345h;
            int length2 = c5685OlArr2.length;
            EnumC6000Tx0[] enumC6000Tx0Arr2 = C5685Ol.f43015n;
            Logger logger2 = AbstractC6033Ul.f44855a;
            int i14 = length2 - 1;
            int i15 = 0;
            while (true) {
                if (i15 > i14) {
                    break;
                }
                int i16 = (i15 + i14) / 2;
                C5685Ol c5685Ol3 = c5685OlArr2[i16];
                int i17 = c5685Ol3.f43017c.f39995d;
                if (2 >= i17) {
                    if (2 <= i17) {
                        c5685Ol = c5685Ol3;
                        break;
                    }
                    i15 = i16 + 1;
                } else {
                    i14 = i16 - 1;
                }
            }
            if (c5685Ol2 != null && c5685Ol2.f43022h == EnumC5627Nl.f42683c && c5685Ol != null && c5685Ol.f43022h == EnumC5627Nl.f42686f) {
                String str = (String) interfaceC8596nW.getField(c5685Ol2);
                if (!str.isEmpty()) {
                    Object field = interfaceC8596nW.getField(c5685Ol);
                    try {
                        this.f38726a.getClass();
                        String[] split = str.split("/");
                        if (split.length != 1) {
                            C4990Cl c4990Cl = (C4990Cl) Collections.EMPTY_MAP.get(split[split.length - 1]);
                            if (c4990Cl != null) {
                                C9996vt c9996vt = new C9996vt(C10163wt.a(c4990Cl).f53632b);
                                c9996vt.m711mergeFrom((AbstractC8373m8) field);
                                c4945Br0.a("[");
                                c4945Br0.a(str);
                                c4945Br0.a("] {");
                                c4945Br0.a();
                                c4945Br0.f39029b.append(GlideException.a.f59088e);
                                a(c9996vt, c4945Br0);
                                int length3 = c4945Br0.f39029b.length();
                                if (length3 != 0) {
                                    c4945Br0.f39029b.setLength(length3 - 2);
                                    c4945Br0.a(VectorFormat.DEFAULT_SUFFIX);
                                    c4945Br0.a();
                                    return;
                                }
                                throw new IllegalArgumentException(" Outdent() without matching Indent().");
                            }
                        } else {
                            throw new MJ("Invalid type url found: ".concat(str));
                        }
                    } catch (MJ unused) {
                    }
                }
            }
        }
        for (Map.Entry entry : interfaceC8596nW.getAllFields().entrySet()) {
            C5685Ol c5685Ol4 = (C5685Ol) entry.getKey();
            Object value = entry.getValue();
            if (c5685Ol4.i()) {
                ArrayList arrayList = new ArrayList();
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    arrayList.add(new C10659zr0(c5685Ol4, it.next()));
                }
                Collections.sort(arrayList);
                int size = arrayList.size();
                int i18 = 0;
                while (i18 < size) {
                    Object obj = arrayList.get(i18);
                    i18++;
                    a(c5685Ol4, ((C10659zr0) obj).f54558b, c4945Br0);
                }
            } else if (c5685Ol4.k()) {
                Iterator it2 = ((List) value).iterator();
                while (it2.hasNext()) {
                    a(c5685Ol4, it2.next(), c4945Br0);
                }
            } else {
                a(c5685Ol4, value, c4945Br0);
            }
        }
        a(interfaceC8596nW.getUnknownFields(), c4945Br0);
    }

    public static void a(int i10, int i11, List list, C4945Br0 c4945Br0) {
        String bigInteger;
        int s10;
        for (Object obj : list) {
            c4945Br0.a(String.valueOf(i10));
            c4945Br0.a(": ");
            int i12 = i11 & 7;
            if (i12 == 0) {
                long longValue = ((Long) obj).longValue();
                Logger logger = AbstractC5003Cr0.f39372a;
                if (longValue >= 0) {
                    bigInteger = Long.toString(longValue);
                } else {
                    bigInteger = BigInteger.valueOf(longValue & Long.MAX_VALUE).setBit(63).toString();
                }
                c4945Br0.a(bigInteger);
            } else if (i12 == 1) {
                c4945Br0.a(String.format(null, "0x%016x", (Long) obj));
            } else if (i12 == 2) {
                try {
                    AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) obj;
                    C9002pv0 c9002pv0 = C9002pv0.f51665c;
                    C8167kv0 c8167kv0 = new C8167kv0();
                    try {
                        AbstractC4916Be b10 = abstractC8373m8.b();
                        do {
                            s10 = b10.s();
                            if (s10 == 0) {
                                break;
                            }
                        } while (c8167kv0.a(s10, b10));
                        b10.a(0);
                        C9002pv0 build = c8167kv0.build();
                        c4945Br0.a("{");
                        c4945Br0.a();
                        c4945Br0.f39029b.append(GlideException.a.f59088e);
                        a(build, c4945Br0);
                        int length = c4945Br0.f39029b.length();
                        if (length != 0) {
                            c4945Br0.f39029b.setLength(length - 2);
                            c4945Br0.a(VectorFormat.DEFAULT_SUFFIX);
                        } else {
                            throw new IllegalArgumentException(" Outdent() without matching Indent().");
                        }
                    } catch (MJ e10) {
                        throw e10;
                    } catch (IOException e11) {
                        throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", e11);
                    }
                } catch (MJ unused) {
                    c4945Br0.a(JavadocConstants.ANCHOR_PREFIX_END);
                    Logger logger2 = AbstractC5003Cr0.f39372a;
                    c4945Br0.a(AbstractC5235Gr0.a(new C5061Dr0((AbstractC8373m8) obj)));
                    c4945Br0.a(JavadocConstants.ANCHOR_PREFIX_END);
                }
            } else if (i12 == 3) {
                a((C9002pv0) obj, c4945Br0);
            } else if (i12 == 5) {
                c4945Br0.a(String.format(null, "0x%08x", (Integer) obj));
            } else {
                throw new IllegalArgumentException(T60.a(i11, "Bad tag: "));
            }
            c4945Br0.a();
        }
    }

    public final void a(C5685Ol c5685Ol, Object obj, C4945Br0 c4945Br0) {
        String bigInteger;
        String l10;
        if (c5685Ol.f43017c.e()) {
            c4945Br0.a("[");
            if (c5685Ol.f43023i.f().f44566d && c5685Ol.f43022h == EnumC5627Nl.f42685e) {
                EnumC4988Ck a10 = EnumC4988Ck.a(c5685Ol.f43017c.f39996e);
                if (a10 == null) {
                    a10 = EnumC4988Ck.f39333c;
                }
                if (a10 == EnumC4988Ck.f39333c) {
                    if (c5685Ol.f43017c.e()) {
                        if (c5685Ol.f43020f == c5685Ol.h()) {
                            c4945Br0.a(c5685Ol.h().f39340c);
                            c4945Br0.a("]");
                        }
                    } else {
                        throw new UnsupportedOperationException("This field is not an extension. (" + c5685Ol.f43018d + ")");
                    }
                }
            }
            c4945Br0.a(c5685Ol.f43018d);
            c4945Br0.a("]");
        } else if (c5685Ol.f43022h == EnumC5627Nl.f42684d) {
            c4945Br0.a(c5685Ol.h().f39339b.getName());
        } else {
            c4945Br0.a(c5685Ol.f43017c.getName());
        }
        EnumC5569Ml enumC5569Ml = c5685Ol.f43022h.f42689b;
        EnumC5569Ml enumC5569Ml2 = EnumC5569Ml.f42387k;
        if (enumC5569Ml == enumC5569Ml2) {
            c4945Br0.a(" {");
            c4945Br0.a();
            c4945Br0.f39029b.append(GlideException.a.f59088e);
        } else {
            c4945Br0.a(": ");
        }
        switch (c5685Ol.f43022h.ordinal()) {
            case 0:
                c4945Br0.a(((Double) obj).toString());
                break;
            case 1:
                c4945Br0.a(((Float) obj).toString());
                break;
            case 2:
            case 15:
            case 17:
                c4945Br0.a(((Long) obj).toString());
                break;
            case 3:
            case 5:
                long longValue = ((Long) obj).longValue();
                Logger logger = AbstractC5003Cr0.f39372a;
                if (longValue >= 0) {
                    bigInteger = Long.toString(longValue);
                } else {
                    bigInteger = BigInteger.valueOf(longValue & Long.MAX_VALUE).setBit(63).toString();
                }
                c4945Br0.a(bigInteger);
                break;
            case 4:
            case 14:
            case 16:
                c4945Br0.a(((Integer) obj).toString());
                break;
            case 6:
            case 12:
                int intValue = ((Integer) obj).intValue();
                Logger logger2 = AbstractC5003Cr0.f39372a;
                if (intValue >= 0) {
                    l10 = Integer.toString(intValue);
                } else {
                    l10 = Long.toString(intValue & 4294967295L);
                }
                c4945Br0.a(l10);
                break;
            case 7:
                c4945Br0.a(((Boolean) obj).toString());
                break;
            case 8:
                c4945Br0.a(JavadocConstants.ANCHOR_PREFIX_END);
                c4945Br0.a(AbstractC5235Gr0.a(new C5061Dr0(AbstractC8373m8.a((String) obj))));
                c4945Br0.a(JavadocConstants.ANCHOR_PREFIX_END);
                break;
            case 9:
            case 10:
                a((InterfaceC7262fW) obj, c4945Br0);
                break;
            case 11:
                c4945Br0.a(JavadocConstants.ANCHOR_PREFIX_END);
                if (obj instanceof AbstractC8373m8) {
                    Logger logger3 = AbstractC5003Cr0.f39372a;
                    c4945Br0.a(AbstractC5235Gr0.a(new C5061Dr0((AbstractC8373m8) obj)));
                } else {
                    Logger logger4 = AbstractC5003Cr0.f39372a;
                    c4945Br0.a(AbstractC5235Gr0.a(new C5119Er0((byte[]) obj)));
                }
                c4945Br0.a(JavadocConstants.ANCHOR_PREFIX_END);
                break;
            case 13:
                c4945Br0.a(((C5454Kl) obj).f41756c.getName());
                break;
        }
        if (c5685Ol.f43022h.f42689b == enumC5569Ml2) {
            int length = c4945Br0.f39029b.length();
            if (length != 0) {
                c4945Br0.f39029b.setLength(length - 2);
                c4945Br0.a(VectorFormat.DEFAULT_SUFFIX);
            } else {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            }
        }
        c4945Br0.a();
    }
}
