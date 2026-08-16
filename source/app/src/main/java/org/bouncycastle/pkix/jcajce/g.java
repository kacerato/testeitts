package org.bouncycastle.pkix.jcajce;

import ei.C13155a;
import java.security.cert.PolicyNode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class g implements PolicyNode {

    public List f102029a;

    public int f102030b;

    public Set f102031c;

    public PolicyNode f102032d;

    public Set f102033e;

    public String f102034f;

    public boolean f102035g;

    public g(List list, int i10, Set set, PolicyNode policyNode, Set set2, String str, boolean z10) {
        this.f102029a = list;
        this.f102030b = i10;
        this.f102031c = set;
        this.f102032d = policyNode;
        this.f102033e = set2;
        this.f102034f = str;
        this.f102035g = z10;
    }

    public void a(g gVar) {
        this.f102029a.add(gVar);
        gVar.g(this);
    }

    public g b() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f102031c.iterator();
        while (it.hasNext()) {
            hashSet.add(new String((String) it.next()));
        }
        HashSet hashSet2 = new HashSet();
        Iterator it2 = this.f102033e.iterator();
        while (it2.hasNext()) {
            hashSet2.add(new String((String) it2.next()));
        }
        g gVar = new g(new ArrayList(), this.f102030b, hashSet, null, hashSet2, new String(this.f102034f), this.f102035g);
        Iterator it3 = this.f102029a.iterator();
        while (it3.hasNext()) {
            g b10 = ((g) it3.next()).b();
            b10.g(gVar);
            gVar.a(b10);
        }
        return gVar;
    }

    public boolean c() {
        return !this.f102029a.isEmpty();
    }

    public Object clone() {
        return b();
    }

    public void d(g gVar) {
        this.f102029a.remove(gVar);
    }

    public void e(boolean z10) {
        this.f102035g = z10;
    }

    public void f(Set set) {
        this.f102031c = set;
    }

    public void g(g gVar) {
        this.f102032d = gVar;
    }

    @Override
    public Iterator getChildren() {
        return this.f102029a.iterator();
    }

    @Override
    public int getDepth() {
        return this.f102030b;
    }

    @Override
    public Set getExpectedPolicies() {
        return this.f102031c;
    }

    @Override
    public PolicyNode getParent() {
        return this.f102032d;
    }

    @Override
    public Set getPolicyQualifiers() {
        return this.f102033e;
    }

    @Override
    public String getValidPolicy() {
        return this.f102034f;
    }

    public String h(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(this.f102034f);
        stringBuffer.append(" {\n");
        for (int i10 = 0; i10 < this.f102029a.size(); i10++) {
            stringBuffer.append(((g) this.f102029a.get(i10)).h(str + C13155a.f85806a));
        }
        stringBuffer.append(str);
        stringBuffer.append("}\n");
        return stringBuffer.toString();
    }

    @Override
    public boolean isCritical() {
        return this.f102035g;
    }

    public String toString() {
        return h("");
    }
}
