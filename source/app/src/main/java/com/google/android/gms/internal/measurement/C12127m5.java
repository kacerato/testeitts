package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC12163q5;
import com.google.android.gms.internal.measurement.C12127m5;
import java.io.IOException;

public class C12127m5<MessageType extends AbstractC12163q5<MessageType, BuilderType>, BuilderType extends C12127m5<MessageType, BuilderType>> extends B4<MessageType, BuilderType> {

    public final AbstractC12163q5 f62361b;

    public AbstractC12163q5 f62362c;

    public C12127m5(MessageType messagetype) {
        this.f62361b = messagetype;
        if (messagetype.k()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f62362c = messagetype.m();
    }

    public static void l(Object obj, Object obj2) {
        C12056e6.a().b(obj.getClass()).d(obj, obj2);
    }

    @Override
    public final boolean d() {
        return AbstractC12163q5.B(this.f62362c, false);
    }

    @Override
    public final W5 e() {
        throw null;
    }

    @Override
    public final B4 i(byte[] bArr, int i10, int i11) throws zzmq {
        int i12 = C12028b5.f62235e;
        int i13 = C12056e6.f62268d;
        s(bArr, 0, i11, C12028b5.f62234d);
        return this;
    }

    @Override
    public final B4 j(byte[] bArr, int i10, int i11, C12028b5 c12028b5) throws zzmq {
        s(bArr, 0, i11, c12028b5);
        return this;
    }

    public final void m() {
        if (this.f62362c.k()) {
            return;
        }
        n();
    }

    public void n() {
        AbstractC12163q5 m10 = this.f62361b.m();
        l(m10, this.f62362c);
        this.f62362c = m10;
    }

    @Override
    public final C12127m5 h() {
        C12127m5 c12127m5 = (C12127m5) this.f62361b.D(5, null, null);
        c12127m5.f62362c = D2();
        return c12127m5;
    }

    @Override
    public MessageType D2() {
        if (!this.f62362c.k()) {
            return (MessageType) this.f62362c;
        }
        this.f62362c.o();
        return (MessageType) this.f62362c;
    }

    public final MessageType q() {
        MessageType D22 = D2();
        if (D22.d()) {
            return D22;
        }
        throw new zzog(D22);
    }

    public final C12127m5 r(AbstractC12163q5 abstractC12163q5) {
        if (!this.f62361b.equals(abstractC12163q5)) {
            if (!this.f62362c.k()) {
                n();
            }
            l(this.f62362c, abstractC12163q5);
        }
        return this;
    }

    public final C12127m5 s(byte[] bArr, int i10, int i11, C12028b5 c12028b5) throws zzmq {
        if (!this.f62362c.k()) {
            n();
        }
        try {
            C12056e6.a().b(this.f62362c.getClass()).g(this.f62362c, bArr, 0, i11, new G4(c12028b5));
            return this;
        } catch (zzmq e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }
}
