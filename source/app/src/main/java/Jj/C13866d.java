package jj;

import ij.InterfaceC13752g;
import java.util.Set;
import org.bouncycastle.est.ESTException;

public class C13866d implements ij.h {

    public final i f93792a;

    public final k f93793b;

    public final int f93794c;

    public final InterfaceC13863a f93795d;

    public final Set<String> f93796e;

    public final Long f93797f;

    public final boolean f93798g;

    public C13866d(i iVar, k kVar, int i10, InterfaceC13863a interfaceC13863a, Set<String> set, Long l10, boolean z10) {
        this.f93792a = iVar;
        this.f93793b = kVar;
        this.f93794c = i10;
        this.f93795d = interfaceC13863a;
        this.f93796e = set;
        this.f93797f = l10;
        this.f93798g = z10;
    }

    @Override
    public boolean a() {
        return this.f93793b.a();
    }

    @Override
    public InterfaceC13752g b() throws ESTException {
        try {
            return new C13864b(new C13865c(this.f93793b.b(), this.f93792a, this.f93794c, this.f93795d, this.f93796e, this.f93797f, this.f93798g));
        } catch (Exception e10) {
            throw new ESTException(e10.getMessage(), e10.getCause());
        }
    }
}
