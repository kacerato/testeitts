package com.android.tools.r8.origin;

import b3.s;
import java.util.Iterator;
import java.util.List;

public abstract class Origin implements Comparable<Origin> {

    private static final d f56144c = new d();

    private static final e f56145d = new e();

    static final boolean f56146e = true;

    private final Origin f56147b;

    public static Origin root() {
        return f56144c;
    }

    public static Origin unknown() {
        return f56145d;
    }

    public List a(int i10) {
        List a10 = parent().a(i10 + 1);
        a10.add(part());
        return a10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Origin)) {
            return false;
        }
        Origin origin = (Origin) obj;
        Origin origin2 = this;
        while (origin2 != null && origin != null && origin2.part().equals(origin.part())) {
            origin2 = origin2.parent();
            origin = origin.parent();
        }
        return false;
    }

    public int hashCode() {
        Iterator<String> it = parts().iterator();
        int i10 = 1;
        while (it.hasNext()) {
            i10 = (i10 * 31) + it.next().hashCode();
        }
        return i10;
    }

    public Origin parent() {
        return this.f56147b;
    }

    public abstract String part();

    public List<String> parts() {
        return a(0);
    }

    public String toString() {
        return String.join(s.f32937c, parts());
    }

    private Origin() {
        this.f56147b = null;
    }

    @Override
    public int compareTo(Origin origin) {
        List<String> parts = parts();
        List<String> parts2 = origin.parts();
        int min = Math.min(parts.size(), parts2.size());
        for (int i10 = 0; i10 < min; i10++) {
            int compareTo = parts.get(i10).compareTo(parts2.get(i10));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Integer.compare(parts.size(), parts2.size());
    }

    public Origin(Origin origin) {
        if (!f56146e && origin == null) {
            throw new AssertionError();
        }
        this.f56147b = origin;
    }
}
