package com.android.tools.r8.internal;

public final class DC extends AbstractC8555nD {

    public final EC f39466e;

    public DC(EC ec2) {
        this.f39466e = ec2;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof MY) {
            MY my = (MY) obj;
            if (my.a() > 0 && this.f39466e.b(my.b()) == my.a()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean g() {
        return this.f39466e.g();
    }

    @Override
    public final Object get(int i10) {
        return this.f39466e.j(i10);
    }

    @Override
    public final int hashCode() {
        return this.f39466e.hashCode();
    }

    @Override
    public final int size() {
        return this.f39466e.w().size();
    }
}
