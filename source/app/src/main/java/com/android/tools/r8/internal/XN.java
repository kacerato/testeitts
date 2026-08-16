package com.android.tools.r8.internal;

public final class XN extends AbstractC7246fO {

    public final B50 f45674j;

    public final C8914pO f45675k;

    public String f45676l;

    public XN(B50 b50, C8914pO c8914pO) {
        super(b50);
        this.f45674j = b50;
        this.f45675k = c8914pO;
    }

    @Override
    public final void a(Object obj, String str) {
        if (str.equals("bindingName") && (obj instanceof String)) {
            this.f45676l = (String) obj;
        } else {
            super.a(obj, str);
        }
    }

    @Override
    public final C8914pO b() {
        return this.f45675k;
    }

    @Override
    public final void a() {
        super.a();
        this.f45675k.a(this.f45676l, c(), this.f45674j);
    }
}
