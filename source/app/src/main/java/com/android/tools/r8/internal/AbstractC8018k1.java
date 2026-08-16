package com.android.tools.r8.internal;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public abstract class AbstractC8018k1 implements InterfaceC10535z50 {
    private static final C10670zv EMPTY_REGISTRY = C10670zv.a();

    private static InterfaceC8095kW a(InterfaceC8095kW interfaceC8095kW) {
        if (interfaceC8095kW == null || interfaceC8095kW.isInitialized()) {
            return interfaceC8095kW;
        }
        C7000dv0 newUninitializedMessageException = interfaceC8095kW instanceof P0 ? ((P0) interfaceC8095kW).newUninitializedMessageException() : new C7000dv0();
        newUninitializedMessageException.getClass();
        MJ mj2 = new MJ(newUninitializedMessageException.getMessage());
        mj2.f42272b = interfaceC8095kW;
        throw mj2;
    }

    @Override
    public InterfaceC8095kW parseDelimitedFrom(InputStream inputStream, C10670zv c10670zv) throws MJ {
        return a(m729parsePartialDelimitedFrom(inputStream, c10670zv));
    }

    public InterfaceC8095kW m729parsePartialDelimitedFrom(InputStream inputStream, C10670zv c10670zv) throws MJ {
        try {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            return m734parsePartialFrom((InputStream) new M0(AbstractC4916Be.a(read, inputStream), inputStream), c10670zv);
        } catch (IOException e10) {
            throw new MJ(e10);
        }
    }

    @Override
    public InterfaceC8095kW parseDelimitedFrom(InputStream inputStream) throws MJ {
        return parseDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    public InterfaceC8095kW m728parsePartialDelimitedFrom(InputStream inputStream) throws MJ {
        return m729parsePartialDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    public InterfaceC8095kW m730parsePartialFrom(AbstractC4916Be abstractC4916Be) throws MJ {
        return (InterfaceC8095kW) parsePartialFrom(abstractC4916Be, EMPTY_REGISTRY);
    }

    public InterfaceC8095kW m734parsePartialFrom(InputStream inputStream, C10670zv c10670zv) throws MJ {
        AbstractC4916Be c10452ye;
        if (inputStream == null) {
            byte[] bArr = YI.f45967d;
            c10452ye = AbstractC4916Be.a(bArr, 0, bArr.length, false);
        } else {
            c10452ye = new C10452ye(inputStream);
        }
        InterfaceC8095kW interfaceC8095kW = (InterfaceC8095kW) parsePartialFrom(c10452ye, c10670zv);
        try {
            c10452ye.a(0);
            return interfaceC8095kW;
        } catch (MJ e10) {
            e10.f42272b = interfaceC8095kW;
            throw e10;
        }
    }

    @Override
    public InterfaceC8095kW parseFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) throws MJ {
        return a((InterfaceC8095kW) parsePartialFrom(abstractC4916Be, c10670zv));
    }

    @Override
    public InterfaceC8095kW parseFrom(AbstractC4916Be abstractC4916Be) throws MJ {
        return parseFrom(abstractC4916Be, EMPTY_REGISTRY);
    }

    @Override
    public InterfaceC8095kW parseFrom(AbstractC8373m8 abstractC8373m8, C10670zv c10670zv) throws MJ {
        return a(m732parsePartialFrom(abstractC8373m8, c10670zv));
    }

    @Override
    public InterfaceC8095kW parseFrom(AbstractC8373m8 abstractC8373m8) throws MJ {
        return parseFrom(abstractC8373m8, EMPTY_REGISTRY);
    }

    @Override
    public InterfaceC8095kW parseFrom(ByteBuffer byteBuffer) throws MJ {
        return parseFrom(byteBuffer, EMPTY_REGISTRY);
    }

    @Override
    public InterfaceC8095kW parseFrom(ByteBuffer byteBuffer, C10670zv c10670zv) throws MJ {
        AbstractC4916Be a10;
        if (byteBuffer.hasArray()) {
            a10 = AbstractC4916Be.a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.remaining(), false);
        } else if (byteBuffer.isDirect() && AbstractC6671bw0.f46896d) {
            a10 = new C10619ze(byteBuffer, false);
        } else {
            int remaining = byteBuffer.remaining();
            byte[] bArr = new byte[remaining];
            byteBuffer.duplicate().get(bArr);
            a10 = AbstractC4916Be.a(bArr, 0, remaining, true);
        }
        InterfaceC8095kW interfaceC8095kW = (InterfaceC8095kW) parsePartialFrom(a10, c10670zv);
        try {
            a10.a(0);
            return a(interfaceC8095kW);
        } catch (MJ e10) {
            e10.f42272b = interfaceC8095kW;
            throw e10;
        }
    }

    public InterfaceC8095kW m732parsePartialFrom(AbstractC8373m8 abstractC8373m8, C10670zv c10670zv) throws MJ {
        AbstractC4916Be b10 = abstractC8373m8.b();
        InterfaceC8095kW interfaceC8095kW = (InterfaceC8095kW) parsePartialFrom(b10, c10670zv);
        try {
            b10.a(0);
            return interfaceC8095kW;
        } catch (MJ e10) {
            e10.f42272b = interfaceC8095kW;
            throw e10;
        }
    }

    public InterfaceC8095kW m731parsePartialFrom(AbstractC8373m8 abstractC8373m8) throws MJ {
        return m732parsePartialFrom(abstractC8373m8, EMPTY_REGISTRY);
    }

    public InterfaceC8095kW m737parsePartialFrom(byte[] bArr, int i10, int i11, C10670zv c10670zv) throws MJ {
        C10285xe a10 = AbstractC4916Be.a(bArr, i10, i11, false);
        InterfaceC8095kW interfaceC8095kW = (InterfaceC8095kW) parsePartialFrom(a10, c10670zv);
        try {
            a10.a(0);
            return interfaceC8095kW;
        } catch (MJ e10) {
            e10.f42272b = interfaceC8095kW;
            throw e10;
        }
    }

    public InterfaceC8095kW m736parsePartialFrom(byte[] bArr, int i10, int i11) throws MJ {
        return m737parsePartialFrom(bArr, i10, i11, EMPTY_REGISTRY);
    }

    public InterfaceC8095kW m738parsePartialFrom(byte[] bArr, C10670zv c10670zv) throws MJ {
        return m737parsePartialFrom(bArr, 0, bArr.length, c10670zv);
    }

    public InterfaceC8095kW m727parseFrom(byte[] bArr, int i10, int i11, C10670zv c10670zv) throws MJ {
        return a(m737parsePartialFrom(bArr, i10, i11, c10670zv));
    }

    public InterfaceC8095kW m735parsePartialFrom(byte[] bArr) throws MJ {
        return m737parsePartialFrom(bArr, 0, bArr.length, EMPTY_REGISTRY);
    }

    public InterfaceC8095kW m726parseFrom(byte[] bArr, int i10, int i11) throws MJ {
        return m727parseFrom(bArr, i10, i11, EMPTY_REGISTRY);
    }

    public InterfaceC8095kW m733parsePartialFrom(InputStream inputStream) throws MJ {
        return m734parsePartialFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override
    public InterfaceC8095kW parseFrom(byte[] bArr, C10670zv c10670zv) throws MJ {
        return m727parseFrom(bArr, 0, bArr.length, c10670zv);
    }

    @Override
    public InterfaceC8095kW parseFrom(byte[] bArr) throws MJ {
        return parseFrom(bArr, EMPTY_REGISTRY);
    }

    @Override
    public InterfaceC8095kW parseFrom(InputStream inputStream, C10670zv c10670zv) throws MJ {
        return a(m734parsePartialFrom(inputStream, c10670zv));
    }

    @Override
    public InterfaceC8095kW parseFrom(InputStream inputStream) throws MJ {
        return parseFrom(inputStream, EMPTY_REGISTRY);
    }
}
