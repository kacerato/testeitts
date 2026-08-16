package org.bouncycastle.cms;

import fm.C13262f;
import hi.C13486b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Map;
import oh.C14509c0;
import oh.C14518h;
import oh.InterfaceC14520i;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15615f;
import uh.C15624o;
import uh.InterfaceC15621l;

public class C14662k extends C14668n {

    public class a implements Qk.q {

        public final Qk.p f100970a;

        public a(Qk.p pVar) {
            this.f100970a = pVar;
        }

        @Override
        public Qk.p a(C13486b c13486b) throws OperatorCreationException {
            return this.f100970a;
        }
    }

    public C14638j g(V v10, Qk.A a10) throws CMSException {
        return h(v10, a10, null);
    }

    public C14638j h(V v10, Qk.A a10, Qk.p pVar) throws CMSException {
        C15615f c15615f;
        C14518h v11 = X.v(a10.getKey(), this.f100497a);
        if (pVar != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                C13262f c13262f = new C13262f(pVar.getOutputStream(), byteArrayOutputStream);
                v10.b(c13262f);
                c13262f.close();
                C14509c0 c14509c0 = new C14509c0(byteArrayOutputStream.toByteArray());
                Map unmodifiableMap = Collections.unmodifiableMap(d(v10.a(), pVar.a(), a10.a(), pVar.b()));
                if (this.f100996C == null) {
                    this.f100996C = new Y();
                }
                oh.I0 i02 = new oh.I0(this.f100996C.a(unmodifiableMap).h());
                try {
                    OutputStream outputStream = a10.getOutputStream();
                    outputStream.write(i02.s(InterfaceC14520i.f98892a));
                    outputStream.close();
                    oh.C0 c02 = new oh.C0(a10.e());
                    c15615f = new C15615f(this.f100499c, new oh.I0(v11), a10.a(), pVar.a(), new C15624o(v10.a(), c14509c0), i02, c02, X.m(this.f100997D));
                } catch (IOException e10) {
                    throw new CMSException("unable to perform MAC calculation: " + e10.getMessage(), e10);
                }
            } catch (IOException e11) {
                throw new CMSException("unable to perform digest calculation: " + e11.getMessage(), e11);
            }
        } else {
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                C13262f c13262f2 = new C13262f(byteArrayOutputStream2, a10.getOutputStream());
                v10.b(c13262f2);
                c13262f2.close();
                C14509c0 c14509c02 = new C14509c0(byteArrayOutputStream2.toByteArray());
                oh.C0 c03 = new oh.C0(a10.e());
                c15615f = new C15615f(this.f100499c, new oh.I0(v11), a10.a(), null, new C15624o(v10.a(), c14509c02), null, c03, X.m(this.f100997D));
            } catch (IOException e12) {
                throw new CMSException("unable to perform MAC calculation: " + e12.getMessage(), e12);
            }
        }
        return new C14638j(new C15624o(InterfaceC15621l.f120711s8, c15615f), new a(pVar));
    }
}
