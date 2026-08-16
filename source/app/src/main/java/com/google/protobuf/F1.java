package com.google.protobuf;

import com.google.protobuf.AbstractC12713t0;
import com.google.protobuf.AbstractC12713t0.f;
import com.google.protobuf.InterfaceC12670e1;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

public class F1<MType extends AbstractC12713t0, BType extends AbstractC12713t0.f, IType extends InterfaceC12670e1> implements AbstractC12713t0.g {

    public AbstractC12713t0.g f68045a;

    public List<MType> f68046b;

    public boolean f68047c;

    public List<P1<MType, BType, IType>> f68048d;

    public boolean f68049e;

    public b<MType, BType, IType> f68050f;

    public a<MType, BType, IType> f68051g;

    public c<MType, BType, IType> f68052h;

    public static class a<MType extends AbstractC12713t0, BType extends AbstractC12713t0.f, IType extends InterfaceC12670e1> extends AbstractList<BType> implements List<BType>, RandomAccess {

        public F1<MType, BType, IType> f68053b;

        public a(F1<MType, BType, IType> builder) {
            this.f68053b = builder;
        }

        @Override
        public BType get(int index) {
            return this.f68053b.l(index);
        }

        public void k() {
            this.modCount++;
        }

        @Override
        public int size() {
            return this.f68053b.n();
        }
    }

    public static class b<MType extends AbstractC12713t0, BType extends AbstractC12713t0.f, IType extends InterfaceC12670e1> extends AbstractList<MType> implements List<MType>, RandomAccess {

        public F1<MType, BType, IType> f68054b;

        public b(F1<MType, BType, IType> builder) {
            this.f68054b = builder;
        }

        @Override
        public MType get(int index) {
            return this.f68054b.o(index);
        }

        public void k() {
            this.modCount++;
        }

        @Override
        public int size() {
            return this.f68054b.n();
        }
    }

    public static class c<MType extends AbstractC12713t0, BType extends AbstractC12713t0.f, IType extends InterfaceC12670e1> extends AbstractList<IType> implements List<IType>, RandomAccess {

        public F1<MType, BType, IType> f68055b;

        public c(F1<MType, BType, IType> builder) {
            this.f68055b = builder;
        }

        @Override
        public IType get(int index) {
            return this.f68055b.r(index);
        }

        public void k() {
            this.modCount++;
        }

        @Override
        public int size() {
            return this.f68055b.n();
        }
    }

    public F1(List<MType> messages, boolean isMessagesListMutable, AbstractC12713t0.g parent, boolean isClean) {
        this.f68046b = messages;
        this.f68047c = isMessagesListMutable;
        this.f68045a = parent;
        this.f68049e = isClean;
    }

    @Override
    public void a() {
        v();
    }

    @A
    public F1<MType, BType, IType> b(Iterable<? extends MType> values) {
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
            List<MType> list = this.f68046b;
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
        P1<MType, BType, IType> p12 = new P1<>(message, this, this.f68049e);
        this.f68046b.add(index, null);
        this.f68048d.add(index, p12);
        v();
        t();
        return p12.e();
    }

    public BType d(MType message) {
        k();
        j();
        P1<MType, BType, IType> p12 = new P1<>(message, this, this.f68049e);
        this.f68046b.add(null);
        this.f68048d.add(p12);
        v();
        t();
        return p12.e();
    }

    @A
    public F1<MType, BType, IType> e(int index, MType message) {
        D0.d(message);
        k();
        this.f68046b.add(index, message);
        List<P1<MType, BType, IType>> list = this.f68048d;
        if (list != null) {
            list.add(index, null);
        }
        v();
        t();
        return this;
    }

    @A
    public F1<MType, BType, IType> f(MType message) {
        D0.d(message);
        k();
        this.f68046b.add(message);
        List<P1<MType, BType, IType>> list = this.f68048d;
        if (list != null) {
            list.add(null);
        }
        v();
        t();
        return this;
    }

    public List<MType> g() {
        this.f68049e = true;
        boolean z10 = this.f68047c;
        if (!z10 && this.f68048d == null) {
            return this.f68046b;
        }
        if (!z10) {
            for (int i10 = 0; i10 < this.f68046b.size(); i10++) {
                MType mtype = this.f68046b.get(i10);
                P1<MType, BType, IType> p12 = this.f68048d.get(i10);
                if (p12 == null || p12.b() == mtype) {
                }
            }
            return this.f68046b;
        }
        k();
        for (int i11 = 0; i11 < this.f68046b.size(); i11++) {
            this.f68046b.set(i11, p(i11, true));
        }
        List<MType> unmodifiableList = Collections.unmodifiableList(this.f68046b);
        this.f68046b = unmodifiableList;
        this.f68047c = false;
        return unmodifiableList;
    }

    public void h() {
        this.f68046b = Collections.emptyList();
        this.f68047c = false;
        List<P1<MType, BType, IType>> list = this.f68048d;
        if (list != null) {
            for (P1<MType, BType, IType> p12 : list) {
                if (p12 != null) {
                    p12.d();
                }
            }
            this.f68048d = null;
        }
        v();
        t();
    }

    public void i() {
        this.f68045a = null;
    }

    public final void j() {
        if (this.f68048d == null) {
            this.f68048d = new ArrayList(this.f68046b.size());
            for (int i10 = 0; i10 < this.f68046b.size(); i10++) {
                this.f68048d.add(null);
            }
        }
    }

    public final void k() {
        if (this.f68047c) {
            return;
        }
        this.f68046b = new ArrayList(this.f68046b);
        this.f68047c = true;
    }

    public BType l(int index) {
        j();
        P1<MType, BType, IType> p12 = this.f68048d.get(index);
        if (p12 == null) {
            P1<MType, BType, IType> p13 = new P1<>(this.f68046b.get(index), this, this.f68049e);
            this.f68048d.set(index, p13);
            p12 = p13;
        }
        return p12.e();
    }

    public List<BType> m() {
        if (this.f68051g == null) {
            this.f68051g = new a<>(this);
        }
        return this.f68051g;
    }

    public int n() {
        return this.f68046b.size();
    }

    public MType o(int index) {
        return p(index, false);
    }

    public final MType p(int index, boolean forBuild) {
        P1<MType, BType, IType> p12;
        List<P1<MType, BType, IType>> list = this.f68048d;
        if (list != null && (p12 = list.get(index)) != null) {
            return forBuild ? p12.b() : p12.f();
        }
        return this.f68046b.get(index);
    }

    public List<MType> q() {
        if (this.f68050f == null) {
            this.f68050f = new b<>(this);
        }
        return this.f68050f;
    }

    public IType r(int i10) {
        P1<MType, BType, IType> p12;
        List<P1<MType, BType, IType>> list = this.f68048d;
        if (list != null && (p12 = list.get(i10)) != null) {
            return p12.g();
        }
        return this.f68046b.get(i10);
    }

    public List<IType> s() {
        if (this.f68052h == null) {
            this.f68052h = new c<>(this);
        }
        return this.f68052h;
    }

    public final void t() {
        b<MType, BType, IType> bVar = this.f68050f;
        if (bVar != null) {
            bVar.k();
        }
        a<MType, BType, IType> aVar = this.f68051g;
        if (aVar != null) {
            aVar.k();
        }
        c<MType, BType, IType> cVar = this.f68052h;
        if (cVar != null) {
            cVar.k();
        }
    }

    public boolean u() {
        return this.f68046b.isEmpty();
    }

    public final void v() {
        AbstractC12713t0.g gVar;
        if (!this.f68049e || (gVar = this.f68045a) == null) {
            return;
        }
        gVar.a();
        this.f68049e = false;
    }

    public void w(int index) {
        P1<MType, BType, IType> remove;
        k();
        this.f68046b.remove(index);
        List<P1<MType, BType, IType>> list = this.f68048d;
        if (list != null && (remove = list.remove(index)) != null) {
            remove.d();
        }
        v();
        t();
    }

    @A
    public F1<MType, BType, IType> x(int index, MType message) {
        P1<MType, BType, IType> p12;
        D0.d(message);
        k();
        this.f68046b.set(index, message);
        List<P1<MType, BType, IType>> list = this.f68048d;
        if (list != null && (p12 = list.set(index, null)) != null) {
            p12.d();
        }
        v();
        t();
        return this;
    }
}
