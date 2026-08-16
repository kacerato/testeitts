package com.android.tools.r8.internal;

import b2.AbstractC3834c;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.LinkedHashSet;

public abstract class AbstractC9744uM {
    public static final C8866p50 a(AbstractC6001Ty abstractC6001Ty, C6676by0 c6676by0) {
        int i10;
        String[] strArr;
        GJ.c(c6676by0, AbstractC3834c.f32824b1);
        C9243rM c9243rM = c6676by0.f46917a;
        GJ.a((Object) c9243rM, "null cannot be cast to non-null type org.jetbrains.kotlin.metadata.jvm.serialization.JvmStringTable");
        C10503yv c10503yv = AbstractC8910pM.f51506a;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C8576nM c8576nM = C8576nM.f50930h;
        C7743iM c7743iM = new C7743iM();
        ArrayList arrayList = c9243rM.f52028b;
        ArrayList arrayList2 = new ArrayList(AbstractC6785cf.a(arrayList));
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            C8409mM c10 = ((C8075kM) obj).c();
            if (!c10.isInitialized()) {
                throw new C6834cv0();
            }
            arrayList2.add(c10);
        }
        if ((c7743iM.f48923c & 1) != 1) {
            c7743iM.f48924d = new ArrayList(c7743iM.f48924d);
            c7743iM.f48923c |= 1;
        }
        AbstractC5827Qy.a(arrayList2, c7743iM.f48924d);
        LinkedHashSet linkedHashSet = c9243rM.f52030d;
        int i12 = 2;
        if ((c7743iM.f48923c & 2) != 2) {
            c7743iM.f48925e = new ArrayList(c7743iM.f48925e);
            c7743iM.f48923c |= 2;
        }
        AbstractC5827Qy.a(linkedHashSet, c7743iM.f48925e);
        C8576nM c11 = c7743iM.c();
        if (!c11.isInitialized()) {
            throw new C6834cv0();
        }
        int a10 = c11.a();
        int b10 = C5264He.b(a10) + a10;
        if (b10 > 4096) {
            b10 = 4096;
        }
        C5264He c5264He = new C5264He(byteArrayOutputStream, new byte[b10]);
        c5264He.g(a10);
        c11.a(c5264He);
        c5264He.a();
        int a11 = abstractC6001Ty.a();
        C5264He c5264He2 = new C5264He(byteArrayOutputStream, new byte[a11 <= 4096 ? a11 : 4096]);
        abstractC6001Ty.a(c5264He2);
        c5264He2.a();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (byteArray == null) {
            N6.a(0);
            throw null;
        }
        if (N6.f42498a) {
            int length = ((byteArray.length * 8) + 6) / 7;
            byte[] bArr = new byte[length];
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (true) {
                i10 = length - 1;
                if (i13 >= i10) {
                    break;
                }
                if (i14 == 0) {
                    bArr[i13] = (byte) (byteArray[i15] & Byte.MAX_VALUE);
                    i14 = 7;
                } else {
                    int i16 = (byteArray[i15] & 255) >>> i14;
                    i15++;
                    bArr[i13] = (byte) (i16 + ((byteArray[i15] & ((1 << r16) - 1)) << (8 - i14)));
                    i14 = (i14 + 7) & 7;
                }
                i13++;
            }
            if (length > 0) {
                boolean z10 = N6.f42499b;
                if (!z10 && i14 == 0) {
                    throw new AssertionError((Object) "The last chunk cannot start from the input byte since otherwise at least one bit will remain unprocessed");
                }
                if (!z10 && i15 != byteArray.length - 1) {
                    StringBuilder a12 = AbstractC5413Jt0.a(i15, "The last 7-bit chunk should be encoded from the last input byte: ", " != ");
                    a12.append(byteArray.length - 1);
                    throw new AssertionError((Object) a12.toString());
                }
                bArr[i10] = (byte) ((byteArray[i15] & 255) >>> i14);
            }
            for (int i17 = 0; i17 < length; i17++) {
                bArr[i17] = (byte) ((bArr[i17] + 1) & 127);
            }
            ArrayList arrayList3 = new ArrayList();
            int i18 = 0;
            boolean z11 = false;
            for (int i19 = 0; i19 < length; i19++) {
                if (i12 >= 65534) {
                    if (!N6.f42499b && i12 > 65535) {
                        throw new AssertionError((Object) T60.a(i12, "Produced strings cannot contain more than 65535 bytes: "));
                    }
                    String str = new String(bArr, i18, i19 - i18);
                    if (z11) {
                        arrayList3.add(str);
                    } else {
                        arrayList3.add("\uffff".concat(str));
                        z11 = true;
                    }
                    i12 = 0;
                    i18 = i19;
                }
                i12 = bArr[i19] == 0 ? i12 + 2 : i12 + 1;
            }
            if (i12 >= 0) {
                arrayList3.add(new String(bArr, i18, length - i18));
            }
            strArr = (String[]) arrayList3.toArray(new String[arrayList3.size()]);
            if (strArr == null) {
                N6.a(6);
                throw null;
            }
        } else {
            ArrayList arrayList4 = new ArrayList(1);
            StringBuilder sb2 = new StringBuilder();
            sb2.append((char) 0);
            int length2 = byteArray.length;
            for (int i20 = 0; i20 < length2; i20++) {
                byte b11 = byteArray[i20];
                sb2.append((char) (b11 & 255));
                i12 = (1 > b11 || b11 >= 128) ? i12 + 2 : i12 + 1;
                if (i12 >= 65534) {
                    arrayList4.add(sb2.toString());
                    sb2.setLength(0);
                    i12 = 0;
                }
            }
            if (sb2.length() != 0) {
                arrayList4.add(sb2.toString());
            }
            strArr = (String[]) arrayList4.toArray(new String[0]);
            if (strArr == null) {
                N6.a(1);
                throw null;
            }
        }
        return new C8866p50(strArr, c9243rM.f52027a.toArray(new String[0]));
    }
}
