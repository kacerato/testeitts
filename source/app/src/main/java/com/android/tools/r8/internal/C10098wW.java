package com.android.tools.r8.internal;

import com.android.tools.r8.dex.C4318s;
import com.android.tools.r8.retrace.RetracePartitionException;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;

public class C10098wW {

    public final List f53519a;

    public final HashSet f53520b;

    public C10098wW(List list, HashSet hashSet) {
        this.f53519a = list;
        this.f53520b = hashSet;
    }

    public Set a() {
        return this.f53520b;
    }

    public Collection b() {
        return this.f53519a;
    }

    public boolean c() {
        return this.f53520b != null;
    }

    public boolean d() {
        return this.f53519a != null;
    }

    public final void a(DataOutputStream dataOutputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream2.writeShort(2);
        dataOutputStream2.writeShort(0);
        AbstractC10307xl0.a(dataOutputStream2, C10656zq0.a("\n", this.f53519a));
        dataOutputStream2.writeShort(1);
        ArrayList arrayList = new ArrayList(this.f53520b);
        Collections.sort(arrayList);
        AbstractC10307xl0.a(dataOutputStream2, C10656zq0.a("\n", (List) arrayList));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        dataOutputStream.writeInt(byteArray.length);
        dataOutputStream.write(byteArray);
    }

    public static C10098wW a(byte[] bArr, Predicate predicate) {
        EnumC9764uW enumC9764uW;
        C4318s b10 = C4318s.b(bArr);
        short d10 = b10.d();
        List<String> list = null;
        HashSet hashSet = null;
        for (int i10 = 0; i10 < d10; i10++) {
            short d11 = b10.d();
            if (d11 == 0) {
                enumC9764uW = EnumC9764uW.f52867d;
            } else if (d11 == 1) {
                enumC9764uW = EnumC9764uW.f52868e;
            } else {
                enumC9764uW = EnumC9764uW.f52866c;
            }
            if (enumC9764uW != EnumC9764uW.f52866c) {
                if (predicate.test(enumC9764uW)) {
                    int ordinal = enumC9764uW.ordinal();
                    if (ordinal == 1) {
                        list = C10656zq0.c(b10.e());
                    } else if (ordinal == 2) {
                        hashSet = C10656zq0.d(b10.e());
                    } else {
                        throw new C5417Jv0("Unreachable since we already checked for UNKNOWN");
                    }
                } else {
                    b10.c(b10.a().position() + b10.c());
                }
            } else {
                throw new RetracePartitionException("Could not additional info from key: " + ((int) d11));
            }
        }
        return new C10098wW(list, hashSet);
    }
}
