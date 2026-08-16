package O5;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import s7.C15235a;

public class b extends C15235a {

    public String f16462a;

    public String f16463b;

    public String f16464c;

    public String f16465d;

    public String f16466e;

    public String f16467f;

    public String f16468g;

    public final List<a> f16469h = new SteppedArrayList();

    public String a() {
        return this.f16467f;
    }

    public String b() {
        return this.f16468g;
    }

    public String c() {
        return this.f16464c;
    }

    public String d() {
        return this.f16463b;
    }

    public String e() {
        return this.f16466e;
    }

    public a f(String tag) {
        for (int i10 = 0; i10 < this.f16469h.size(); i10++) {
            a aVar = this.f16469h.get(i10);
            if (aVar.c().equals(tag)) {
                return aVar;
            }
        }
        return null;
    }

    public String g() {
        return this.f16462a;
    }

    public String h() {
        return this.f16465d;
    }

    public void i(a error) {
        if (error != null) {
            this.f16469h.remove(error);
        }
    }

    public void j(String tag) {
        a f10 = f(tag);
        if (f10 != null) {
            this.f16469h.remove(f10);
        }
    }

    public void k(String confirmPasswordRegister) {
        this.f16467f = confirmPasswordRegister;
    }

    public void l(String emailRecovery) {
        this.f16468g = emailRecovery;
    }

    public void m(String emailRegister) {
        this.f16464c = emailRegister;
    }

    public void n(String passwordAccess) {
        this.f16463b = passwordAccess;
    }

    public void o(String passwordRegister) {
        this.f16466e = passwordRegister;
    }

    public void p(String tag, String error, String contentError) {
        a f10 = f(tag);
        if (f10 != null) {
            f10.d(contentError);
            f10.e(error);
            return;
        }
        a aVar = new a();
        aVar.f(tag);
        aVar.e(error);
        aVar.d(contentError);
        this.f16469h.add(aVar);
    }

    public void q(String userNameAccess) {
        this.f16462a = userNameAccess;
    }

    public void r(String userNameRegister) {
        this.f16465d = userNameRegister;
    }
}
