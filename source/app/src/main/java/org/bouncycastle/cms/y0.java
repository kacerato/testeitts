package org.bouncycastle.cms;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public class y0 implements V {

    public final C14549x f101035a;

    public final InterfaceC14516g f101036b;

    public y0(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101035a = c14549x;
        this.f101036b = interfaceC14516g;
    }

    @Override
    public C14549x a() {
        return this.f101035a;
    }

    @Override
    public void b(OutputStream outputStream) throws IOException, CMSException {
        InterfaceC14516g interfaceC14516g = this.f101036b;
        if (interfaceC14516g instanceof oh.E) {
            Iterator<InterfaceC14516g> it = oh.E.G(interfaceC14516g).iterator();
            while (it.hasNext()) {
                outputStream.write(it.next().r().s(InterfaceC14520i.f98892a));
            }
        } else {
            byte[] s10 = interfaceC14516g.r().s(InterfaceC14520i.f98892a);
            int i10 = 1;
            while ((s10[i10] & 255) > 127) {
                i10++;
            }
            int i11 = i10 + 1;
            outputStream.write(s10, i11, s10.length - i11);
        }
    }

    @Override
    public Object getContent() {
        return this.f101036b;
    }
}
