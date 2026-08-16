package com.google.protobuf;

import com.google.protobuf.AbstractC12713t0;
import com.google.protobuf.AbstractC12713t0.f;
import com.google.protobuf.InterfaceC12670e1;

public class P1<MType extends AbstractC12713t0, BType extends AbstractC12713t0.f, IType extends InterfaceC12670e1> implements AbstractC12713t0.g {

    public AbstractC12713t0.g f68831a;

    public BType f68832b;

    public MType f68833c;

    public boolean f68834d;

    public P1(MType message, AbstractC12713t0.g parent, boolean isClean) {
        this.f68833c = (MType) D0.d(message);
        this.f68831a = parent;
        this.f68834d = isClean;
    }

    private void i() {
        AbstractC12713t0.g gVar;
        if (this.f68832b != null) {
            this.f68833c = null;
        }
        if (!this.f68834d || (gVar = this.f68831a) == null) {
            return;
        }
        gVar.a();
        this.f68834d = false;
    }

    @Override
    public void a() {
        i();
    }

    public MType b() {
        this.f68834d = true;
        return f();
    }

    @A
    public P1<MType, BType, IType> c() {
        MType mtype = this.f68833c;
        this.f68833c = (MType) (mtype != null ? mtype.getDefaultInstanceForType() : this.f68832b.getDefaultInstanceForType());
        BType btype = this.f68832b;
        if (btype != null) {
            btype.dispose();
            this.f68832b = null;
        }
        i();
        this.f68834d = true;
        return this;
    }

    public void d() {
        this.f68831a = null;
    }

    public BType e() {
        if (this.f68832b == null) {
            BType btype = (BType) this.f68833c.v6(this);
            this.f68832b = btype;
            btype.mergeFrom(this.f68833c);
            this.f68832b.markClean();
        }
        return this.f68832b;
    }

    public MType f() {
        if (this.f68833c == null) {
            this.f68833c = (MType) this.f68832b.buildPartial();
        }
        return this.f68833c;
    }

    public IType g() {
        BType btype = this.f68832b;
        return btype != null ? btype : this.f68833c;
    }

    @A
    public P1<MType, BType, IType> h(MType value) {
        if (this.f68832b == null) {
            Y0 y02 = this.f68833c;
            if (y02 == y02.getDefaultInstanceForType()) {
                this.f68833c = value;
                i();
                return this;
            }
        }
        e().mergeFrom(value);
        i();
        return this;
    }

    @A
    public P1<MType, BType, IType> j(MType message) {
        this.f68833c = (MType) D0.d(message);
        BType btype = this.f68832b;
        if (btype != null) {
            btype.dispose();
            this.f68832b = null;
        }
        i();
        return this;
    }
}
