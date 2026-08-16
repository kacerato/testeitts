package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class FS extends AbstractMap implements Serializable {

    public static final C10424yS f40200j = new C10424yS();

    public static final boolean f40201k = true;

    public final Comparator f40202b;

    public final boolean f40203c;

    public ES f40204d;

    public int f40205e;

    public int f40206f;

    public final ES f40207g;

    public AS f40208h;

    public CS f40209i;

    public FS(boolean z10) {
        C10424yS c10424yS = f40200j;
        this.f40205e = 0;
        this.f40206f = 0;
        this.f40202b = c10424yS;
        this.f40203c = z10;
        this.f40207g = new ES(z10);
    }

    public final ES a(Object obj, boolean z10) {
        int i10;
        ES es;
        Comparator comparator = this.f40202b;
        ES es2 = this.f40204d;
        if (es2 != null) {
            Comparable comparable = comparator == f40200j ? (Comparable) obj : null;
            while (true) {
                if (comparable != null) {
                    i10 = comparable.compareTo(es2.f39869g);
                } else {
                    i10 = comparator.compare(obj, es2.f39869g);
                }
                if (i10 == 0) {
                    return es2;
                }
                ES es3 = i10 < 0 ? es2.f39865c : es2.f39866d;
                if (es3 == null) {
                    break;
                }
                es2 = es3;
            }
        } else {
            i10 = 0;
        }
        if (!z10) {
            return null;
        }
        ES es4 = this.f40207g;
        if (es2 == null) {
            if (comparator == f40200j && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            es = new ES(this.f40203c, es2, obj, es4, es4.f39868f);
            this.f40204d = es;
        } else {
            es = new ES(this.f40203c, es2, obj, es4, es4.f39868f);
            if (i10 < 0) {
                es2.f39865c = es;
            } else {
                es2.f39866d = es;
            }
            a(es2, true);
        }
        this.f40205e++;
        this.f40206f++;
        return es;
    }

    public final void b(ES es, boolean z10) {
        ES es2;
        ES es3;
        int i10;
        if (z10) {
            ES es4 = es.f39868f;
            es4.f39867e = es.f39867e;
            es.f39867e.f39868f = es4;
        }
        ES es5 = es.f39865c;
        ES es6 = es.f39866d;
        ES es7 = es.f39864b;
        int i11 = 0;
        if (es5 != null && es6 != null) {
            if (es5.f39872j > es6.f39872j) {
                ES es8 = es5.f39866d;
                while (true) {
                    ES es9 = es8;
                    es3 = es5;
                    es5 = es9;
                    if (es5 == null) {
                        break;
                    } else {
                        es8 = es5.f39866d;
                    }
                }
            } else {
                ES es10 = es6.f39865c;
                while (true) {
                    es2 = es6;
                    es6 = es10;
                    if (es6 == null) {
                        break;
                    } else {
                        es10 = es6.f39865c;
                    }
                }
                es3 = es2;
            }
            b(es3, false);
            ES es11 = es.f39865c;
            if (es11 != null) {
                i10 = es11.f39872j;
                es3.f39865c = es11;
                es11.f39864b = es3;
                es.f39865c = null;
            } else {
                i10 = 0;
            }
            ES es12 = es.f39866d;
            if (es12 != null) {
                i11 = es12.f39872j;
                es3.f39866d = es12;
                es12.f39864b = es3;
                es.f39866d = null;
            }
            es3.f39872j = Math.max(i10, i11) + 1;
            a(es, es3);
            return;
        }
        if (es5 != null) {
            a(es, es5);
            es.f39865c = null;
        } else if (es6 != null) {
            a(es, es6);
            es.f39866d = null;
        } else {
            a(es, (ES) null);
        }
        a(es7, false);
        this.f40205e--;
        this.f40206f++;
    }

    @Override
    public final void clear() {
        this.f40204d = null;
        this.f40205e = 0;
        this.f40206f++;
        ES es = this.f40207g;
        es.f39868f = es;
        es.f39867e = es;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000d A[RETURN] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean containsKey(Object obj) {
        ES a10;
        if (obj != null) {
            try {
                a10 = a(obj, false);
            } catch (ClassCastException unused) {
            }
            return a10 == null;
        }
        a10 = null;
        if (a10 == null) {
        }
    }

    @Override
    public final Set entrySet() {
        AS as = this.f40208h;
        if (as != null) {
            return as;
        }
        AS as2 = new AS(this);
        this.f40208h = as2;
        return as2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(Object obj) {
        ES es;
        if (obj != null) {
            try {
                es = a(obj, false);
            } catch (ClassCastException unused) {
            }
            if (es == null) {
                return es.f39871i;
            }
            return null;
        }
        es = null;
        if (es == null) {
        }
    }

    @Override
    public final Set o() {
        CS cs = this.f40209i;
        if (cs != null) {
            return cs;
        }
        CS cs2 = new CS(this);
        this.f40209i = cs2;
        return cs2;
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        if (obj2 == null && !this.f40203c) {
            throw new NullPointerException("value == null");
        }
        ES a10 = a(obj, true);
        Object obj3 = a10.f39871i;
        a10.f39871i = obj2;
        return obj3;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object remove(Object obj) {
        ES es;
        if (obj != null) {
            try {
                es = a(obj, false);
            } catch (ClassCastException unused) {
            }
            if (es != null) {
                b(es, true);
            }
            if (es == null) {
                return es.f39871i;
            }
            return null;
        }
        es = null;
        if (es != null) {
        }
        if (es == null) {
        }
    }

    @Override
    public final int size() {
        return this.f40205e;
    }

    public final ES a(Map.Entry entry) {
        ES es;
        Object key = entry.getKey();
        if (key != null) {
            try {
                es = a(key, false);
            } catch (ClassCastException unused) {
            }
            if (es == null && Objects.equals(es.f39871i, entry.getValue())) {
                return es;
            }
            return null;
        }
        es = null;
        if (es == null) {
        }
        return null;
    }

    public final void a(ES es, ES es2) {
        ES es3 = es.f39864b;
        es.f39864b = null;
        if (es2 != null) {
            es2.f39864b = es3;
        }
        if (es3 != null) {
            if (es3.f39865c == es) {
                es3.f39865c = es2;
                return;
            } else {
                if (!f40201k && es3.f39866d != es) {
                    throw new AssertionError();
                }
                es3.f39866d = es2;
                return;
            }
        }
        this.f40204d = es2;
    }

    public final void a(ES es, boolean z10) {
        while (es != null) {
            ES es2 = es.f39865c;
            ES es3 = es.f39866d;
            int i10 = es2 != null ? es2.f39872j : 0;
            int i11 = es3 != null ? es3.f39872j : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                ES es4 = es3.f39865c;
                ES es5 = es3.f39866d;
                int i13 = (es4 != null ? es4.f39872j : 0) - (es5 != null ? es5.f39872j : 0);
                if (i13 != -1 && (i13 != 0 || z10)) {
                    if (!f40201k && i13 != 1) {
                        throw new AssertionError();
                    }
                    b(es3);
                    a(es);
                } else {
                    a(es);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 2) {
                ES es6 = es2.f39865c;
                ES es7 = es2.f39866d;
                int i14 = (es6 != null ? es6.f39872j : 0) - (es7 != null ? es7.f39872j : 0);
                if (i14 != 1 && (i14 != 0 || z10)) {
                    if (!f40201k && i14 != -1) {
                        throw new AssertionError();
                    }
                    a(es2);
                    b(es);
                } else {
                    b(es);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 0) {
                es.f39872j = i10 + 1;
                if (z10) {
                    return;
                }
            } else {
                if (!f40201k && i12 != -1 && i12 != 1) {
                    throw new AssertionError();
                }
                es.f39872j = Math.max(i10, i11) + 1;
                if (!z10) {
                    return;
                }
            }
            es = es.f39864b;
        }
    }

    public final void b(ES es) {
        ES es2 = es.f39865c;
        ES es3 = es.f39866d;
        ES es4 = es2.f39865c;
        ES es5 = es2.f39866d;
        es.f39865c = es5;
        if (es5 != null) {
            es5.f39864b = es;
        }
        a(es, es2);
        es2.f39866d = es;
        es.f39864b = es2;
        int max = Math.max(es3 != null ? es3.f39872j : 0, es5 != null ? es5.f39872j : 0) + 1;
        es.f39872j = max;
        es2.f39872j = Math.max(max, es4 != null ? es4.f39872j : 0) + 1;
    }

    public final void a(ES es) {
        ES es2 = es.f39865c;
        ES es3 = es.f39866d;
        ES es4 = es3.f39865c;
        ES es5 = es3.f39866d;
        es.f39866d = es4;
        if (es4 != null) {
            es4.f39864b = es;
        }
        a(es, es3);
        es3.f39865c = es;
        es.f39864b = es3;
        int max = Math.max(es2 != null ? es2.f39872j : 0, es4 != null ? es4.f39872j : 0) + 1;
        es.f39872j = max;
        es3.f39872j = Math.max(max, es5 != null ? es5.f39872j : 0) + 1;
    }
}
