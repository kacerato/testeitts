package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.B4;
import com.google.android.gms.internal.measurement.C4;
import java.io.IOException;
import java.util.List;

public abstract class C4<MessageType extends C4<MessageType, BuilderType>, BuilderType extends B4<MessageType, BuilderType>> implements W5 {
    protected int zza = 0;

    public static void i(Iterable iterable, List list) {
        B4.k(iterable, list);
    }

    @Override
    public final S4 a() {
        try {
            int f10 = f();
            S4 s42 = S4.f62112c;
            byte[] bArr = new byte[f10];
            int i10 = W4.f62159d;
            V4 v42 = new V4(bArr, 0, f10);
            c(v42);
            return P4.a(v42, bArr);
        } catch (IOException e10) {
            String name = getClass().getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 72);
            sb2.append("Serializing ");
            sb2.append(name);
            sb2.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb2.toString(), e10);
        }
    }

    public final byte[] g() {
        try {
            int f10 = f();
            byte[] bArr = new byte[f10];
            int i10 = W4.f62159d;
            V4 v42 = new V4(bArr, 0, f10);
            c(v42);
            v42.e();
            return bArr;
        } catch (IOException e10) {
            String name = getClass().getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 72);
            sb2.append("Serializing ");
            sb2.append(name);
            sb2.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb2.toString(), e10);
        }
    }

    public int h(InterfaceC12083h6 interfaceC12083h6) {
        throw null;
    }
}
