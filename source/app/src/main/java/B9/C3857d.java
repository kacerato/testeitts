package b9;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class C3857d {

    public Ac.b f33043c;

    public Ac.b f33044d;

    public Ac.b[] f33045e;

    public String f33041a = "";

    public String f33042b = "";

    public final List<Ac.b> f33046f = new SteppedArrayList();

    public void a() {
        String r10 = X7.a.r(this.f33041a);
        if (r10 == null) {
            r10 = "";
        }
        this.f33043c = new Ac.b(r10);
        this.f33046f.clear();
        Ac.b bVar = this.f33043c;
        if (bVar == null || bVar.g0()) {
            this.f33044d = new Ac.b();
            this.f33045e = null;
            return;
        }
        Ac.b[] B02 = this.f33043c.B0("\n");
        int i10 = 0;
        while (true) {
            if (i10 >= B02.length) {
                break;
            }
            String trim = B02[i10].toString().trim();
            if (trim.startsWith("--") && trim.contains("-- Menu:")) {
                i(trim.replace("-- Menu:", ""));
                break;
            }
            i10++;
        }
        for (Ac.b bVar2 : B02) {
            String trim2 = bVar2.toString().trim();
            if (trim2.startsWith("public ")) {
                try {
                    String replace = trim2.replace("public ", "");
                    this.f33046f.add(new Ac.b(replace.substring(0, replace.indexOf("=")).trim()));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        this.f33045e = B02;
        this.f33044d = new Ac.b(h(this.f33043c.toString()));
    }

    public String b() {
        return this.f33042b;
    }

    public Ac.b c() {
        return this.f33043c;
    }

    public String d() {
        return this.f33041a;
    }

    public List<Ac.b> e() {
        return this.f33046f;
    }

    public Ac.b f() {
        return this.f33044d;
    }

    public Ac.b[] g() {
        return this.f33045e;
    }

    public final String h(String input) {
        return Pattern.compile("(?i)\\bpublic\\b(?=(?:[^\"\\\\]*\"[^\"\\\\]*\")*[^\"\\\\]*$)").matcher(input).replaceAll("");
    }

    public void i(String menu) {
        this.f33042b = menu;
    }

    public void j(String path) {
        this.f33041a = path;
        a();
    }
}
