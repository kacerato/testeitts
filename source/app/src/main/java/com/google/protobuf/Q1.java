package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12653a.AbstractC1035a;
import com.google.protobuf.InterfaceC12670e1;

public class Q1<MType extends AbstractC12653a, BType extends AbstractC12653a.AbstractC1035a, IType extends InterfaceC12670e1> implements AbstractC12653a.b {

    public AbstractC12653a.b f68851a;

    public BType f68852b;

    public MType f68853c;

    public boolean f68854d;

    public Q1(MType message, AbstractC12653a.b parent, boolean isClean) {
        this.f68853c = (MType) D0.d(message);
        this.f68851a = parent;
        this.f68854d = isClean;
    }

    private void i() {
        AbstractC12653a.b bVar;
        if (this.f68852b != null) {
            this.f68853c = null;
        }
        if (!this.f68854d || (bVar = this.f68851a) == null) {
            return;
        }
        bVar.a();
        this.f68854d = false;
    }

    @Override
    public void a() {
        i();
    }

    public MType b() {
        this.f68854d = true;
        return f();
    }

    @A
    public Q1<MType, BType, IType> c() {
        MType mtype = this.f68853c;
        this.f68853c = (MType) (mtype != null ? mtype.getDefaultInstanceForType() : this.f68852b.getDefaultInstanceForType());
        BType btype = this.f68852b;
        if (btype != null) {
            btype.dispose();
            this.f68852b = null;
        }
        i();
        this.f68854d = true;
        return this;
    }

    public void d() {
        this.f68851a = null;
    }

    public BType e() {
        if (this.f68852b == null) {
            BType btype = (BType) this.f68853c.newBuilderForType(this);
            this.f68852b = btype;
            btype.mergeFrom(this.f68853c);
            this.f68852b.markClean();
        }
        return this.f68852b;
    }

    public MType f() {
        if (this.f68853c == null) {
            this.f68853c = (MType) this.f68852b.buildPartial();
        }
        return this.f68853c;
    }

    public IType g() {
        BType btype = this.f68852b;
        return btype != null ? btype : this.f68853c;
    }

    @A
    public Q1<MType, BType, IType> h(MType value) {
        if (this.f68852b == null) {
            Y0 y02 = this.f68853c;
            if (y02 == y02.getDefaultInstanceForType()) {
                this.f68853c = value;
                i();
                return this;
            }
        }
        e().mergeFrom(value);
        i();
        return this;
    }

    @A
    public Q1<MType, BType, IType> j(MType message) {
        this.f68853c = (MType) D0.d(message);
        BType btype = this.f68852b;
        if (btype != null) {
            btype.dispose();
            this.f68852b = null;
        }
        i();
        return this;
    }
}
