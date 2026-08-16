package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12653a.AbstractC1035a;
import com.google.protobuf.InterfaceC12670e1;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

public class G1<MType extends AbstractC12653a, BType extends AbstractC12653a.AbstractC1035a, IType extends InterfaceC12670e1> implements AbstractC12653a.b {

    public AbstractC12653a.b f68076a;

    public List<MType> f68077b;

    public boolean f68078c;

    public List<Q1<MType, BType, IType>> f68079d;

    public boolean f68080e;

    public b<MType, BType, IType> f68081f;

    public a<MType, BType, IType> f68082g;

    public c<MType, BType, IType> f68083h;

    public static class a<MType extends AbstractC12653a, BType extends AbstractC12653a.AbstractC1035a, IType extends InterfaceC12670e1> extends AbstractList<BType> implements List<BType>, RandomAccess {

        public G1<MType, BType, IType> f68084b;

        public a(G1<MType, BType, IType> builder) {
            this.f68084b = builder;
        }

        @Override
        public BType get(int index) {
            return this.f68084b.l(index);
        }

        public void k() {
            this.modCount++;
        }

        @Override
        public int size() {
            return this.f68084b.n();
        }
    }

    public static class b<MType extends AbstractC12653a, BType extends AbstractC12653a.AbstractC1035a, IType extends InterfaceC12670e1> extends AbstractList<MType> implements List<MType>, RandomAccess {

        public G1<MType, BType, IType> f68085b;

        public b(G1<MType, BType, IType> builder) {
            this.f68085b = builder;
        }

        @Override
        public MType get(int index) {
            return this.f68085b.o(index);
        }

        public void k() {
            this.modCount++;
        }

        @Override
        public int size() {
            return this.f68085b.n();
        }
    }

    public static class c<MType extends AbstractC12653a, BType extends AbstractC12653a.AbstractC1035a, IType extends InterfaceC12670e1> extends AbstractList<IType> implements List<IType>, RandomAccess {

        public G1<MType, BType, IType> f68086b;

        public c(G1<MType, BType, IType> builder) {
            this.f68086b = builder;
        }

        @Override
        public IType get(int index) {
            return this.f68086b.r(index);
        }

        public void k() {
            this.modCount++;
        }

        @Override
        public int size() {
            return this.f68086b.n();
        }
    }

    public G1(List<MType> messages, boolean isMessagesListMutable, AbstractC12653a.b parent, boolean isClean) {
        this.f68077b = messages;
        this.f68078c = isMessagesListMutable;
        this.f68076a = parent;
        this.f68080e = isClean;
    }

    private void j() {
        if (this.f68079d == null) {
            this.f68079d = new ArrayList(this.f68077b.size());
            for (int i10 = 0; i10 < this.f68077b.size(); i10++) {
                this.f68079d.add(null);
            }
        }
    }

    private void k() {
        if (this.f68078c) {
            return;
        }
        this.f68077b = new ArrayList(this.f68077b);
        this.f68078c = true;
    }

    private void t() {
        b<MType, BType, IType> bVar = this.f68081f;
        if (bVar != null) {
            bVar.k();
        }
        a<MType, BType, IType> aVar = this.f68082g;
        if (aVar != null) {
            aVar.k();
        }
        c<MType, BType, IType> cVar = this.f68083h;
        if (cVar != null) {
            cVar.k();
        }
    }

    private void v() {
        AbstractC12653a.b bVar;
        if (!this.f68080e || (bVar = this.f68076a) == null) {
            return;
        }
        bVar.a();
        this.f68080e = false;
    }

    @Override
    public void a() {
        v();
    }

    @A
    public G1<MType, BType, IType> b(Iterable<? extends MType> values) {
        int i10;
        Iterator<? extends MType> it = values.iterator();
        while (it.hasNext()) {
            D0.d(it.next());
        }
        if (values instanceof Collection) {
            Collection collection = (Collection) values;
            if (collection.isEmpty()) {
                return this;
            }
            i10 = collection.size();
        } else {
            i10 = -1;
        }
        k();
        if (i10 >= 0) {
            List<MType> list = this.f68077b;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + i10);
            }
        }
        Iterator<? extends MType> it2 = values.iterator();
        while (it2.hasNext()) {
            f(it2.next());
        }
        v();
        t();
        return this;
    }

    public BType c(int index, MType message) {
        k();
        j();
        Q1<MType, BType, IType> q12 = new Q1<>(message, this, this.f68080e);
        this.f68077b.add(index, null);
        this.f68079d.add(index, q12);
        v();
        t();
        return q12.e();
    }

    public BType d(MType message) {
        k();
        j();
        Q1<MType, BType, IType> q12 = new Q1<>(message, this, this.f68080e);
        this.f68077b.add(null);
        this.f68079d.add(q12);
        v();
        t();
        return q12.e();
    }

    @A
    public G1<MType, BType, IType> e(int index, MType message) {
        D0.d(message);
        k();
        this.f68077b.add(index, message);
        List<Q1<MType, BType, IType>> list = this.f68079d;
        if (list != null) {
            list.add(index, null);
        }
        v();
        t();
        return this;
    }

    @A
    public G1<MType, BType, IType> f(MType message) {
        D0.d(message);
        k();
        this.f68077b.add(message);
        List<Q1<MType, BType, IType>> list = this.f68079d;
        if (list != null) {
            list.add(null);
        }
        v();
        t();
        return this;
    }

    public List<MType> g() {
        this.f68080e = true;
        boolean z10 = this.f68078c;
        if (!z10 && this.f68079d == null) {
            return this.f68077b;
        }
        if (!z10) {
            for (int i10 = 0; i10 < this.f68077b.size(); i10++) {
                MType mtype = this.f68077b.get(i10);
                Q1<MType, BType, IType> q12 = this.f68079d.get(i10);
                if (q12 == null || q12.b() == mtype) {
                }
            }
            return this.f68077b;
        }
        k();
        for (int i11 = 0; i11 < this.f68077b.size(); i11++) {
            this.f68077b.set(i11, p(i11, true));
        }
        List<MType> unmodifiableList = Collections.unmodifiableList(this.f68077b);
        this.f68077b = unmodifiableList;
        this.f68078c = false;
        return unmodifiableList;
    }

    public void h() {
        this.f68077b = Collections.emptyList();
        this.f68078c = false;
        List<Q1<MType, BType, IType>> list = this.f68079d;
        if (list != null) {
            for (Q1<MType, BType, IType> q12 : list) {
                if (q12 != null) {
                    q12.d();
                }
            }
            this.f68079d = null;
        }
        v();
        t();
    }

    public void i() {
        this.f68076a = null;
    }

    public BType l(int index) {
        j();
        Q1<MType, BType, IType> q12 = this.f68079d.get(index);
        if (q12 == null) {
            Q1<MType, BType, IType> q13 = new Q1<>(this.f68077b.get(index), this, this.f68080e);
            this.f68079d.set(index, q13);
            q12 = q13;
        }
        return q12.e();
    }

    public List<BType> m() {
        if (this.f68082g == null) {
            this.f68082g = new a<>(this);
        }
        return this.f68082g;
    }

    public int n() {
        return this.f68077b.size();
    }

    public MType o(int index) {
        return p(index, false);
    }

    public final MType p(int index, boolean forBuild) {
        Q1<MType, BType, IType> q12;
        List<Q1<MType, BType, IType>> list = this.f68079d;
        if (list != null && (q12 = list.get(index)) != null) {
            return forBuild ? q12.b() : q12.f();
        }
        return this.f68077b.get(index);
    }

    public List<MType> q() {
        if (this.f68081f == null) {
            this.f68081f = new b<>(this);
        }
        return this.f68081f;
    }

    public IType r(int i10) {
        Q1<MType, BType, IType> q12;
        List<Q1<MType, BType, IType>> list = this.f68079d;
        if (list != null && (q12 = list.get(i10)) != null) {
            return q12.g();
        }
        return this.f68077b.get(i10);
    }

    public List<IType> s() {
        if (this.f68083h == null) {
            this.f68083h = new c<>(this);
        }
        return this.f68083h;
    }

    public boolean u() {
        return this.f68077b.isEmpty();
    }

    public void w(int index) {
        Q1<MType, BType, IType> remove;
        k();
        this.f68077b.remove(index);
        List<Q1<MType, BType, IType>> list = this.f68079d;
        if (list != null && (remove = list.remove(index)) != null) {
            remove.d();
        }
        v();
        t();
    }

    @A
    public G1<MType, BType, IType> x(int index, MType message) {
        Q1<MType, BType, IType> q12;
        D0.d(message);
        k();
        this.f68077b.set(index, message);
        List<Q1<MType, BType, IType>> list = this.f68079d;
        if (list != null && (q12 = list.set(index, null)) != null) {
            q12.d();
        }
        v();
        t();
        return this;
    }
}
