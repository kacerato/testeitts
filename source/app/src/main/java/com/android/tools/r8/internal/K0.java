package com.android.tools.r8.internal;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

public abstract class K0 extends P0 implements InterfaceC7262fW {
    protected int memoizedSize = -1;

    private static Map a(List list) {
        if (list.isEmpty()) {
            return Collections.EMPTY_MAP;
        }
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        InterfaceC7262fW interfaceC7262fW = (InterfaceC7262fW) it.next();
        C4990Cl descriptorForType = interfaceC7262fW.getDescriptorForType();
        AbstractC5801Ql a10 = descriptorForType.f39341d.f43363h.a(3, descriptorForType.f39340c + ".key");
        C5685Ol c5685Ol = a10 instanceof C5685Ol ? (C5685Ol) a10 : null;
        AbstractC5801Ql a11 = descriptorForType.f39341d.f43363h.a(3, descriptorForType.f39340c + ".value");
        C5685Ol c5685Ol2 = a11 instanceof C5685Ol ? (C5685Ol) a11 : null;
        Object field = interfaceC7262fW.getField(c5685Ol2);
        if (field instanceof C5454Kl) {
            field = Integer.valueOf(((C5454Kl) field).f41756c.f52682d);
        }
        hashMap.put(interfaceC7262fW.getField(c5685Ol), field);
        while (it.hasNext()) {
            InterfaceC7262fW interfaceC7262fW2 = (InterfaceC7262fW) it.next();
            Object field2 = interfaceC7262fW2.getField(c5685Ol2);
            if (field2 instanceof C5454Kl) {
                field2 = Integer.valueOf(((C5454Kl) field2).f41756c.f52682d);
            }
            hashMap.put(interfaceC7262fW2.getField(c5685Ol), field2);
        }
        return hashMap;
    }

    public static boolean compareFields(Map<C5685Ol, Object> map, Map<C5685Ol, Object> map2) {
        AbstractC8373m8 abstractC8373m8;
        Object obj;
        boolean equals;
        AbstractC8373m8 abstractC8373m82;
        Object obj2;
        boolean equals2;
        if (map.size() != map2.size()) {
            return false;
        }
        for (C5685Ol c5685Ol : map.o()) {
            if (!map2.containsKey(c5685Ol)) {
                return false;
            }
            Object obj3 = map.get(c5685Ol);
            Object obj4 = map2.get(c5685Ol);
            if (c5685Ol.f43022h == EnumC5627Nl.f42686f) {
                if (c5685Ol.k()) {
                    List list = (List) obj3;
                    List list2 = (List) obj4;
                    if (list.size() != list2.size()) {
                        return false;
                    }
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        Object obj5 = list.get(i10);
                        Object obj6 = list2.get(i10);
                        boolean z10 = obj5 instanceof byte[];
                        if (z10 && (obj6 instanceof byte[])) {
                            equals = Arrays.equals((byte[]) obj5, (byte[]) obj6);
                        } else {
                            if (z10) {
                                byte[] bArr = (byte[]) obj5;
                                C7707i8 c7707i8 = AbstractC8373m8.f50204c;
                                int length = bArr.length;
                                AbstractC8373m8.a(0, length, bArr.length);
                                abstractC8373m8 = new C7707i8(AbstractC8373m8.f50205d.a(bArr, 0, length));
                            } else {
                                abstractC8373m8 = (AbstractC8373m8) obj5;
                            }
                            if (obj6 instanceof byte[]) {
                                byte[] bArr2 = (byte[]) obj6;
                                C7707i8 c7707i82 = AbstractC8373m8.f50204c;
                                int length2 = bArr2.length;
                                AbstractC8373m8.a(0, length2, bArr2.length);
                                obj = new C7707i8(AbstractC8373m8.f50205d.a(bArr2, 0, length2));
                            } else {
                                obj = (AbstractC8373m8) obj6;
                            }
                            equals = abstractC8373m8.equals(obj);
                        }
                        if (!equals) {
                            return false;
                        }
                    }
                } else {
                    boolean z11 = obj3 instanceof byte[];
                    if (z11 && (obj4 instanceof byte[])) {
                        equals2 = Arrays.equals((byte[]) obj3, (byte[]) obj4);
                    } else {
                        if (z11) {
                            byte[] bArr3 = (byte[]) obj3;
                            C7707i8 c7707i83 = AbstractC8373m8.f50204c;
                            int length3 = bArr3.length;
                            AbstractC8373m8.a(0, length3, bArr3.length);
                            abstractC8373m82 = new C7707i8(AbstractC8373m8.f50205d.a(bArr3, 0, length3));
                        } else {
                            abstractC8373m82 = (AbstractC8373m8) obj3;
                        }
                        if (obj4 instanceof byte[]) {
                            byte[] bArr4 = (byte[]) obj4;
                            C7707i8 c7707i84 = AbstractC8373m8.f50204c;
                            int length4 = bArr4.length;
                            AbstractC8373m8.a(0, length4, bArr4.length);
                            obj2 = new C7707i8(AbstractC8373m8.f50205d.a(bArr4, 0, length4));
                        } else {
                            obj2 = (AbstractC8373m8) obj4;
                        }
                        equals2 = abstractC8373m82.equals(obj2);
                    }
                    if (!equals2) {
                        return false;
                    }
                }
            } else if (c5685Ol.i()) {
                if (!OU.a(a((List) obj3), a((List) obj4))) {
                    return false;
                }
            } else if (!obj3.equals(obj4)) {
                return false;
            }
        }
        return true;
    }

    @Deprecated
    public static int hashBoolean(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    @Deprecated
    public static int hashEnum(QI qi2) {
        return qi2.getNumber();
    }

    @Deprecated
    public static int hashEnumList(List<? extends QI> list) {
        Iterator<? extends QI> it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            i10 = (i10 * 31) + hashEnum(it.next());
        }
        return i10;
    }

    public static int hashFields(int i10, Map<C5685Ol, Object> map) {
        int hashCode;
        int hashCode2;
        int i11;
        int hashCode3;
        for (Map.Entry<C5685Ol, Object> entry : map.entrySet()) {
            C5685Ol key = entry.getKey();
            Object value = entry.getValue();
            int i12 = (i10 * 37) + key.f43017c.f39995d;
            int i13 = 1;
            if (key.i()) {
                int i14 = i12 * 53;
                Map a10 = a((List) value);
                int i15 = OU.f42893c;
                int i16 = 0;
                for (Map.Entry entry2 : a10.entrySet()) {
                    Object key2 = entry2.getKey();
                    if (key2 instanceof byte[]) {
                        byte[] bArr = (byte[]) key2;
                        Charset charset = YI.f45964a;
                        hashCode = bArr.length;
                        for (byte b10 : bArr) {
                            hashCode = (hashCode * 31) + b10;
                        }
                        if (hashCode == 0) {
                            hashCode = 1;
                        }
                    } else {
                        if (key2 instanceof QI) {
                            throw new UnsupportedOperationException();
                        }
                        hashCode = key2.hashCode();
                    }
                    Object value2 = entry2.getValue();
                    if (value2 instanceof byte[]) {
                        byte[] bArr2 = (byte[]) value2;
                        Charset charset2 = YI.f45964a;
                        hashCode2 = bArr2.length;
                        for (byte b11 : bArr2) {
                            hashCode2 = (hashCode2 * 31) + b11;
                        }
                        if (hashCode2 == 0) {
                            hashCode2 = 1;
                        }
                    } else {
                        if (value2 instanceof QI) {
                            throw new UnsupportedOperationException();
                        }
                        hashCode2 = value2.hashCode();
                    }
                    i16 += hashCode ^ hashCode2;
                }
                i10 = i14 + i16;
            } else {
                if (key.f43022h != EnumC5627Nl.f42687g) {
                    i11 = i12 * 53;
                    hashCode3 = value.hashCode();
                } else if (key.k()) {
                    int i17 = i12 * 53;
                    Iterator it = ((List) value).iterator();
                    while (it.hasNext()) {
                        i13 = (i13 * 31) + ((QI) it.next()).getNumber();
                    }
                    i10 = i17 + i13;
                } else {
                    i11 = i12 * 53;
                    hashCode3 = ((QI) value).getNumber();
                }
                i10 = i11 + hashCode3;
            }
        }
        return i10;
    }

    @Deprecated
    public static int hashLong(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InterfaceC7262fW)) {
            return false;
        }
        InterfaceC7262fW interfaceC7262fW = (InterfaceC7262fW) obj;
        return getDescriptorForType() == interfaceC7262fW.getDescriptorForType() && compareFields(getAllFields(), interfaceC7262fW.getAllFields()) && getUnknownFields().equals(interfaceC7262fW.getUnknownFields());
    }

    public List<String> findInitializationErrors() {
        ArrayList arrayList = new ArrayList();
        AbstractC9263rW.a(this, "", arrayList);
        return arrayList;
    }

    public String getInitializationErrorString() {
        List<String> findInitializationErrors = findInitializationErrors();
        StringBuilder sb2 = new StringBuilder();
        for (String str : findInitializationErrors) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    @Override
    public int getMemoizedSerializedSize() {
        return this.memoizedSize;
    }

    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = getUnknownFields().hashCode() + (hashFields(getDescriptorForType().hashCode() + 779, getAllFields()) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    public InterfaceC7095eW newBuilderForType(J0 j02) {
        throw new UnsupportedOperationException("Nested builder is not supported for this type.");
    }

    @Override
    public C7000dv0 newUninitializedMessageException() {
        return I0.newUninitializedMessageException((InterfaceC7262fW) this);
    }

    public void setMemoizedSerializedSize(int i10) {
        this.memoizedSize = i10;
    }

    public final String toString() {
        Logger logger = AbstractC5003Cr0.f39372a;
        C4887Ar0 c4887Ar0 = C4887Ar0.f38725b;
        c4887Ar0.getClass();
        try {
            StringBuilder sb2 = new StringBuilder();
            c4887Ar0.a(this, new C4945Br0(sb2));
            return sb2.toString();
        } catch (IOException e10) {
            throw new IllegalStateException(e10);
        }
    }
}
