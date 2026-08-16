package org.bouncycastle.jce.provider;

import ei.C13155a;
import java.security.cert.PolicyNode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class I implements PolicyNode {

    public List f101613a;

    public int f101614b;

    public Set f101615c;

    public PolicyNode f101616d;

    public Set f101617e;

    public String f101618f;

    public boolean f101619g;

    public I(List list, int i10, Set set, PolicyNode policyNode, Set set2, String str, boolean z10) {
        this.f101613a = list;
        this.f101614b = i10;
        this.f101615c = set;
        this.f101616d = policyNode;
        this.f101617e = set2;
        this.f101618f = str;
        this.f101619g = z10;
    }

    public void a(I i10) {
        this.f101613a.add(i10);
        i10.g(this);
    }

    public I b() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f101615c.iterator();
        while (it.hasNext()) {
            hashSet.add(new String((String) it.next()));
        }
        HashSet hashSet2 = new HashSet();
        Iterator it2 = this.f101617e.iterator();
        while (it2.hasNext()) {
            hashSet2.add(new String((String) it2.next()));
        }
        I i10 = new I(new ArrayList(), this.f101614b, hashSet, null, hashSet2, new String(this.f101618f), this.f101619g);
        Iterator it3 = this.f101613a.iterator();
        while (it3.hasNext()) {
            I b10 = ((I) it3.next()).b();
            b10.g(i10);
            i10.a(b10);
        }
        return i10;
    }

    public boolean c() {
        return !this.f101613a.isEmpty();
    }

    public Object clone() {
        return b();
    }

    public void d(I i10) {
        this.f101613a.remove(i10);
    }

    public void e(boolean z10) {
        this.f101619g = z10;
    }

    public void f(Set set) {
        this.f101615c = set;
    }

    public void g(I i10) {
        this.f101616d = i10;
    }

    @Override
    public Iterator getChildren() {
        return this.f101613a.iterator();
    }

    @Override
    public int getDepth() {
        return this.f101614b;
    }

    @Override
    public Set getExpectedPolicies() {
        return this.f101615c;
    }

    @Override
    public PolicyNode getParent() {
        return this.f101616d;
    }

    @Override
    public Set getPolicyQualifiers() {
        return this.f101617e;
    }

    @Override
    public String getValidPolicy() {
        return this.f101618f;
    }

    public String h(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(this.f101618f);
        stringBuffer.append(" {\n");
        for (int i10 = 0; i10 < this.f101613a.size(); i10++) {
            stringBuffer.append(((I) this.f101613a.get(i10)).h(str + C13155a.f85806a));
        }
        stringBuffer.append(str);
        stringBuffer.append("}\n");
        return stringBuffer.toString();
    }

    @Override
    public boolean isCritical() {
        return this.f101619g;
    }

    public String toString() {
        return h("");
    }
}
