package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;

public final class C8334lv0 {

    public C8501mv0 f50146a = new C8501mv0();

    public final C8334lv0 a(C8501mv0 c8501mv0) {
        if (!c8501mv0.f50457a.isEmpty()) {
            C8501mv0 c8501mv02 = this.f50146a;
            if (c8501mv02.f50457a == null) {
                c8501mv02.f50457a = new ArrayList();
            }
            this.f50146a.f50457a.addAll(c8501mv0.f50457a);
        }
        if (!c8501mv0.f50458b.isEmpty()) {
            C8501mv0 c8501mv03 = this.f50146a;
            if (c8501mv03.f50458b == null) {
                c8501mv03.f50458b = new ArrayList();
            }
            this.f50146a.f50458b.addAll(c8501mv0.f50458b);
        }
        if (!c8501mv0.f50459c.isEmpty()) {
            C8501mv0 c8501mv04 = this.f50146a;
            if (c8501mv04.f50459c == null) {
                c8501mv04.f50459c = new ArrayList();
            }
            this.f50146a.f50459c.addAll(c8501mv0.f50459c);
        }
        if (!c8501mv0.f50460d.isEmpty()) {
            C8501mv0 c8501mv05 = this.f50146a;
            if (c8501mv05.f50460d == null) {
                c8501mv05.f50460d = new ArrayList();
            }
            this.f50146a.f50460d.addAll(c8501mv0.f50460d);
        }
        if (!c8501mv0.f50461e.isEmpty()) {
            C8501mv0 c8501mv06 = this.f50146a;
            if (c8501mv06.f50461e == null) {
                c8501mv06.f50461e = new ArrayList();
            }
            this.f50146a.f50461e.addAll(c8501mv0.f50461e);
        }
        return this;
    }

    public final C8334lv0 m740clone() {
        C8501mv0 c8501mv0 = new C8501mv0();
        if (this.f50146a.f50457a == null) {
            c8501mv0.f50457a = null;
        } else {
            c8501mv0.f50457a = new ArrayList(this.f50146a.f50457a);
        }
        if (this.f50146a.f50458b == null) {
            c8501mv0.f50458b = null;
        } else {
            c8501mv0.f50458b = new ArrayList(this.f50146a.f50458b);
        }
        if (this.f50146a.f50459c == null) {
            c8501mv0.f50459c = null;
        } else {
            c8501mv0.f50459c = new ArrayList(this.f50146a.f50459c);
        }
        if (this.f50146a.f50460d == null) {
            c8501mv0.f50460d = null;
        } else {
            c8501mv0.f50460d = new ArrayList(this.f50146a.f50460d);
        }
        if (this.f50146a.f50461e == null) {
            c8501mv0.f50461e = null;
        } else {
            c8501mv0.f50461e = new ArrayList(this.f50146a.f50461e);
        }
        C8334lv0 c8334lv0 = new C8334lv0();
        c8334lv0.f50146a = c8501mv0;
        return c8334lv0;
    }

    public final C8501mv0 a() {
        C8501mv0 c8501mv0 = new C8501mv0();
        if (this.f50146a.f50457a == null) {
            c8501mv0.f50457a = Collections.EMPTY_LIST;
        } else {
            c8501mv0.f50457a = Collections.unmodifiableList(new ArrayList(this.f50146a.f50457a));
        }
        if (this.f50146a.f50458b == null) {
            c8501mv0.f50458b = Collections.EMPTY_LIST;
        } else {
            c8501mv0.f50458b = Collections.unmodifiableList(new ArrayList(this.f50146a.f50458b));
        }
        if (this.f50146a.f50459c == null) {
            c8501mv0.f50459c = Collections.EMPTY_LIST;
        } else {
            c8501mv0.f50459c = Collections.unmodifiableList(new ArrayList(this.f50146a.f50459c));
        }
        if (this.f50146a.f50460d == null) {
            c8501mv0.f50460d = Collections.EMPTY_LIST;
        } else {
            c8501mv0.f50460d = Collections.unmodifiableList(new ArrayList(this.f50146a.f50460d));
        }
        if (this.f50146a.f50461e == null) {
            c8501mv0.f50461e = Collections.EMPTY_LIST;
            return c8501mv0;
        }
        c8501mv0.f50461e = Collections.unmodifiableList(new ArrayList(this.f50146a.f50461e));
        return c8501mv0;
    }
}
