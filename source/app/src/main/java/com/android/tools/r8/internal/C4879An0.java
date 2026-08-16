package com.android.tools.r8.internal;

public final class C4879An0 extends AbstractC4995Cn0 {

    public final WK f38717i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4879An0(C5111En0 c5111En0, String str, WK wk2) {
        super(c5111En0, str);
        this.f38717i = wk2;
    }

    @Override
    public final int a(int i10) {
        return this.f38717i.f45365a.end();
    }

    @Override
    public final int b(int i10) {
        if (this.f38717i.f45365a.find(i10)) {
            return this.f38717i.f45365a.start();
        }
        return -1;
    }
}
