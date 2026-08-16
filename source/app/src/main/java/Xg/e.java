package Xg;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class e implements o {

    public List<String> f28880i = Collections.emptyList();

    public Set<String> f28883l = null;

    public String f28884m = null;

    public List<g> f28885n = null;

    public Set<String> f28886o = null;

    public g f28887p = null;

    public String f28888q = null;

    public final List<i> f28872a = new ArrayList();

    public final List<i> f28874c = new ArrayList();

    public final List<i> f28873b = new ArrayList();

    public final List<q> f28875d = new ArrayList();

    public final List<t> f28876e = new ArrayList();

    public final List<t> f28877f = new ArrayList();

    public final Map<String, g> f28878g = new LinkedHashMap();

    public final Map<String, g> f28879h = new LinkedHashMap();

    public final Map<q, Set<String>> f28881j = new HashMap();

    public final Map<q, String> f28882k = new HashMap();

    public e() {
        z(Arrays.asList("default"));
        I("default");
    }

    public static void H(int[] indices, int max, String name) {
        if (indices == null) {
            return;
        }
        for (int i10 = 0; i10 < indices.length; i10++) {
            int i11 = indices[i10];
            if (i11 < 0) {
                throw new IllegalArgumentException(name + " index is negative: " + indices[i10]);
            }
            if (i11 >= max) {
                throw new IllegalArgumentException(name + " index is " + indices[i10] + ", but must be smaller than " + max);
            }
        }
    }

    @Override
    public void A(q face) {
        if (face == null) {
            throw new NullPointerException("The face is null");
        }
        Set<String> set = this.f28883l;
        if (set != null) {
            this.f28885n = J(set);
            if (!this.f28883l.equals(this.f28886o)) {
                this.f28881j.put(face, this.f28883l);
            }
            this.f28886o = this.f28883l;
            this.f28883l = null;
        }
        String str = this.f28884m;
        if (str != null) {
            this.f28887p = K(str);
            if (!this.f28884m.equals(this.f28888q)) {
                this.f28882k.put(face, this.f28884m);
            }
            this.f28888q = this.f28884m;
            this.f28884m = null;
        }
        this.f28875d.add(face);
        g gVar = this.f28887p;
        if (gVar != null) {
            gVar.a(face);
        }
        Iterator<g> it = this.f28885n.iterator();
        while (it.hasNext()) {
            it.next().a(face);
        }
    }

    @Override
    public void B(float x10, float y10, float z10) {
        this.f28873b.add(new C3324c(x10, y10, z10));
    }

    @Override
    public void C(int... v10) {
        w(v10, null, null);
    }

    @Override
    public void D(i texCoord) {
        Objects.requireNonNull(texCoord, "The texCoord is null");
        this.f28873b.add(texCoord);
    }

    @Override
    public Set<String> E(q face) {
        return this.f28881j.get(face);
    }

    @Override
    public void F(float x10) {
        this.f28873b.add(new C3324c(x10));
    }

    @Override
    public void G(float x10, float y10) {
        this.f28873b.add(new C3324c(x10, y10));
    }

    public final g I(String groupName) {
        g gVar = this.f28878g.get(groupName);
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g(groupName);
        this.f28878g.put(groupName, gVar2);
        this.f28876e.add(gVar2);
        return gVar2;
    }

    public final List<g> J(Collection<? extends String> groupNames) {
        ArrayList arrayList = new ArrayList(groupNames.size());
        Iterator<? extends String> it = groupNames.iterator();
        while (it.hasNext()) {
            arrayList.add(I(it.next()));
        }
        return arrayList;
    }

    public final g K(String materialGroupName) {
        g gVar = this.f28879h.get(materialGroupName);
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g(materialGroupName);
        this.f28879h.put(materialGroupName, gVar2);
        this.f28877f.add(gVar2);
        return gVar2;
    }

    @Override
    public int a() {
        return this.f28872a.size();
    }

    @Override
    public q b(int index) {
        return this.f28875d.get(index);
    }

    @Override
    public void c(int... v10) {
        w(v10, v10, v10);
    }

    @Override
    public String d(q face) {
        return this.f28882k.get(face);
    }

    @Override
    public int e() {
        return this.f28876e.size();
    }

    @Override
    public t f(int index) {
        return this.f28877f.get(index);
    }

    @Override
    public void g(String materialGroupName) {
        if (materialGroupName == null) {
            return;
        }
        this.f28884m = materialGroupName;
    }

    @Override
    public int getNumFaces() {
        return this.f28875d.size();
    }

    @Override
    public int h() {
        return this.f28873b.size();
    }

    @Override
    public t i(int index) {
        return this.f28876e.get(index);
    }

    @Override
    public t j(String name) {
        return this.f28879h.get(name);
    }

    @Override
    public List<String> k() {
        return this.f28880i;
    }

    @Override
    public void l(Collection<? extends String> mtlFileNames) {
        this.f28880i = Collections.unmodifiableList(new ArrayList(mtlFileNames));
    }

    @Override
    public void m(i vertex) {
        Objects.requireNonNull(vertex, "The vertex is null");
        this.f28872a.add(vertex);
    }

    @Override
    public i n(int index) {
        return this.f28872a.get(index);
    }

    @Override
    public i o(int index) {
        return this.f28874c.get(index);
    }

    @Override
    public void p(int... v10) {
        w(v10, v10, null);
    }

    @Override
    public void q(i normal) {
        Objects.requireNonNull(normal, "The normal is null");
        this.f28874c.add(normal);
    }

    @Override
    public void r(float x10, float y10, float z10) {
        this.f28874c.add(new C3324c(x10, y10, z10));
    }

    @Override
    public t s(String name) {
        return this.f28878g.get(name);
    }

    @Override
    public int t() {
        return this.f28877f.size();
    }

    public String toString() {
        return "Obj[#vertices=" + this.f28872a.size() + ",#texCoords=" + this.f28873b.size() + ",#normals=" + this.f28874c.size() + ",#faces=" + this.f28875d.size() + ",#groups=" + this.f28876e.size() + ",#materialGroups=" + this.f28877f.size() + ",mtlFileNames=" + ((Object) this.f28880i) + "]";
    }

    @Override
    public void u(int... v10) {
        w(v10, null, v10);
    }

    @Override
    public i v(int index) {
        return this.f28873b.get(index);
    }

    @Override
    public void w(int[] v10, int[] vt, int[] vn2) {
        Objects.requireNonNull(v10, "The vertex indices are null");
        H(v10, a(), "Vertex");
        H(vt, h(), "TexCoord");
        H(vn2, x(), "Normal");
        A(new f(v10, vt, vn2));
    }

    @Override
    public int x() {
        return this.f28874c.size();
    }

    @Override
    public void y(float x10, float y10, float z10) {
        this.f28872a.add(new C3324c(x10, y10, z10));
    }

    @Override
    public void z(Collection<? extends String> groupNames) {
        if (groupNames == null) {
            return;
        }
        if (groupNames.size() == 0) {
            groupNames = Arrays.asList("default");
        } else if (groupNames.contains(null)) {
            throw new NullPointerException("The groupNames contains null");
        }
        this.f28883l = Collections.unmodifiableSet(new LinkedHashSet(groupNames));
    }
}
