package bd;

import androidx.annotation.NonNull;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;

@Deprecated
public class C3867a {

    public String f33076a;

    public String f33077b;

    @Deprecated
    public C3867a(String global) {
        this.f33076a = global;
        this.f33077b = global;
    }

    public String a() {
        return this.f33076a + " | " + this.f33077b;
    }

    public String b() {
        return this.f33076a;
    }

    public String c() {
        return this.f33076a;
    }

    public String d() {
        return this.f33077b;
    }

    public String e() {
        return this.f33077b;
    }

    public void f(String en_us) {
        this.f33076a = en_us;
    }

    public void g(String pt_br) {
        this.f33077b = pt_br;
    }

    @NonNull
    public String toString() {
        String str;
        String str2 = this.f33076a;
        if (str2 != null && !str2.isEmpty() && (str = this.f33077b) != null && !str.isEmpty()) {
            return Lang.o().equals("pt-br") ? this.f33077b : this.f33076a;
        }
        String str3 = this.f33076a;
        if (str3 != null && !str3.isEmpty()) {
            return this.f33076a;
        }
        String str4 = this.f33077b;
        return (str4 == null || str4.isEmpty()) ? this.f33076a : this.f33077b;
    }

    @Deprecated
    public C3867a(String en_us, String pt_br) {
        this.f33076a = en_us;
        this.f33077b = pt_br;
    }
}
