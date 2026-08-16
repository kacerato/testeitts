package com.android.tools.r8.internal;

import com.android.tools.r8.naming.MapVersion;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Collection;

public final class C6760cV implements InterfaceC6594bV {

    public final MapVersion f47062b;

    public final AW f47063c;

    public final C10098wW f47064d;

    public C6760cV(MapVersion mapVersion, AW aw, C10098wW c10098wW) {
        this.f47062b = mapVersion;
        this.f47063c = aw;
        this.f47064d = c10098wW;
    }

    @Override
    public final Collection a() {
        return this.f47063c.a();
    }

    @Override
    public final MapVersion b() {
        return this.f47062b;
    }

    @Override
    public final boolean c() {
        return true;
    }

    @Override
    public final C10098wW d() {
        return this.f47064d;
    }

    @Override
    public final boolean e() {
        return true;
    }

    @Override
    public final byte[] getBytes() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.write(InterfaceC6594bV.f46770a);
            dataOutputStream.writeShort(ZU.OBFUSCATED_TYPE_NAME_AS_KEY_WITH_PARTITIONS.f46248b);
            dataOutputStream.writeUTF(this.f47062b.getName());
            AbstractC10307xl0.a(dataOutputStream, C10656zq0.a(";", this.f47063c.f38628a));
            this.f47064d.a(dataOutputStream);
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
