package G8;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;

public class a {

    public EnumC0148a f7699a;

    public String f7700b;

    public String f7701c;

    public final List<a> f7702d;

    public a f7703e;

    public enum EnumC0148a {
        Folder,
        Shader
    }

    public a() {
        this.f7702d = new SteppedArrayList();
    }

    public a a(a child) {
        this.f7702d.add(child);
        child.f7703e = this;
        return this;
    }

    public a b(List<a> child) {
        Iterator<a> it = child.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this;
    }

    public a c(int idx) {
        return this.f7702d.get(idx);
    }

    public int d() {
        return this.f7702d.size();
    }

    public a clone() {
        a aVar = new a();
        aVar.f7699a = this.f7699a;
        aVar.f7700b = this.f7700b;
        aVar.f7701c = this.f7701c;
        Iterator<a> it = this.f7702d.iterator();
        while (it.hasNext()) {
            a clone = it.next().clone();
            clone.f7703e = aVar;
            aVar.f7702d.add(clone);
        }
        return aVar;
    }

    public List<a> f() {
        return this.f7702d;
    }

    public a g() {
        return this.f7703e;
    }

    public String h() {
        return this.f7700b;
    }

    public String i() {
        if (this.f7701c == null) {
            if (this.f7703e != null) {
                this.f7701c = this.f7703e.i() + "/" + this.f7700b;
            } else {
                this.f7701c = this.f7700b;
            }
        }
        return this.f7701c;
    }

    public EnumC0148a j() {
        return this.f7699a;
    }

    public void k(List<a> children) {
        this.f7702d.clear();
        this.f7702d.addAll(children);
    }

    public void l(a parent) {
        this.f7703e = parent;
    }

    public a(EnumC0148a type, String tittle) {
        this.f7702d = new SteppedArrayList();
        this.f7699a = type;
        this.f7700b = tittle;
    }

    public a(String tittle, String totalTittle) {
        this.f7702d = new SteppedArrayList();
        this.f7699a = EnumC0148a.Shader;
        this.f7700b = tittle;
        this.f7701c = totalTittle;
    }
}
