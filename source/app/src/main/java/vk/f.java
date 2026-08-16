package vk;

import Qk.q;
import java.io.IOException;
import java.io.InputStream;
import tk.C15464a;
import tk.C15468e;
import tk.i;
import tk.l;

public class f implements l {

    public final String f121680a;

    public final q f121681b;

    public f(String str, q qVar) {
        this.f121680a = str;
        this.f121681b = qVar;
    }

    @Override
    public i a(InputStream inputStream) throws IOException {
        return new C15464a(new C15859d(this.f121680a, this.f121681b), g.a(inputStream));
    }

    @Override
    public i b(C15468e c15468e, InputStream inputStream) throws IOException {
        return new C15464a(new C15859d(this.f121680a, this.f121681b), c15468e, g.a(inputStream));
    }
}
