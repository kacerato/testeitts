package vk;

import Qk.p;
import fm.C13261e;
import fm.C13262f;
import hi.C13486b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.operator.OperatorCreationException;
import org.openjdk.tools.doclint.DocLint;
import tk.C15466c;
import tk.C15468e;
import tk.InterfaceC15470g;
import tk.h;
import tk.j;

public class C15858c implements h {

    public final C15859d f121672a;

    public p[] f121673b;

    public class a implements InterfaceC15470g {

        public final int f121674a;

        public a(int i10) {
            this.f121674a = i10;
        }

        @Override
        public InputStream b(C15468e c15468e, InputStream inputStream) throws IOException {
            if (this.f121674a != 0) {
                return inputStream;
            }
            OutputStream f10 = C15858c.this.f();
            c15468e.c(f10);
            f10.write(13);
            f10.write(10);
            return new C13261e(inputStream, new C15466c(C15858c.this.f121672a, c15468e, f10));
        }
    }

    public C15858c(j jVar, C15468e c15468e) {
        this.f121672a = (C15859d) jVar;
        this.f121673b = d(c15468e);
    }

    @Override
    public InterfaceC15470g a(int i10) throws IOException {
        return new a(i10);
    }

    @Override
    public InputStream b(C15468e c15468e, InputStream inputStream) throws IOException {
        return inputStream;
    }

    public final p[] d(C15468e c15468e) {
        try {
            String str = c15468e.i().get("micalg");
            if (str == null) {
                throw new IllegalStateException("No micalg field on content-type header");
            }
            String[] split = str.substring(str.indexOf(61) + 1).split(DocLint.SEPARATOR);
            p[] pVarArr = new p[split.length];
            for (int i10 = 0; i10 < split.length; i10++) {
                pVarArr[i10] = this.f121672a.b().a(new C13486b(g.d(g.f(split[i10]).trim())));
            }
            return pVarArr;
        } catch (OperatorCreationException unused) {
            return null;
        }
    }

    public p[] e() {
        return this.f121673b;
    }

    public OutputStream f() {
        p[] pVarArr = this.f121673b;
        int i10 = 1;
        if (pVarArr.length == 1) {
            return pVarArr[0].getOutputStream();
        }
        OutputStream outputStream = pVarArr[0].getOutputStream();
        while (i10 < this.f121673b.length) {
            C13262f c13262f = new C13262f(this.f121673b[i10].getOutputStream(), outputStream);
            i10++;
            outputStream = c13262f;
        }
        return outputStream;
    }
}
