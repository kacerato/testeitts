package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jdt.core.IJavaModelMarker;

@InterfaceC9597tW(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B'\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\b\b\u0010\tJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0003H\u0016R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r\u00a8\u0006\u0014"}, d2 = {"Lkotlin/metadata/KmAnnotation;", "", "className", "", "Lkotlin/metadata/ClassName;", IJavaModelMarker.ARGUMENTS, "", "Lkotlin/metadata/KmAnnotationArgument;", ConstantDescs.INIT_NAME, "(Ljava/lang/String;Ljava/util/Map;)V", "getClassName", "()Ljava/lang/String;", "getArguments", "()Ljava/util/Map;", "equals", "", "other", "hashCode", "", "toString", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GP {

    public final String f40476a;

    public final Map f40477b;

    public GP(String str, Map map) {
        GJ.c(str, "className");
        this.f40476a = str;
        this.f40477b = map;
    }

    public static final CharSequence a(C8866p50 c8866p50) {
        GJ.c(c8866p50, "<destruct>");
        return ((String) c8866p50.f51436b) + " = " + ((Object) ((JP) c8866p50.f51437c));
    }

    public final String b() {
        return this.f40476a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GP)) {
            return false;
        }
        GP gp = (GP) obj;
        return GJ.a((Object) this.f40476a, (Object) gp.f40476a) && GJ.a(this.f40477b, gp.f40477b);
    }

    public final int hashCode() {
        return this.f40477b.hashCode() + (this.f40476a.hashCode() * 31);
    }

    public final String toString() {
        Collection collection;
        Collection singletonList;
        Map map = this.f40477b;
        GJ.c(map, "<this>");
        if (map.size() == 0) {
            singletonList = C6049Ut.f44892b;
        } else {
            Iterator it = map.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (it.hasNext()) {
                    Collection arrayList = new ArrayList(map.size());
                    arrayList.add(new C8866p50(entry.getKey(), entry.getValue()));
                    do {
                        Map.Entry entry2 = (Map.Entry) it.next();
                        arrayList.add(new C8866p50(entry2.getKey(), entry2.getValue()));
                    } while (it.hasNext());
                    collection = arrayList;
                    return "@" + this.f40476a + '(' + AbstractC6303Ze.a(collection, null, null, null, new InterfaceC8676ny() {
                        @Override
                        public final Object a(Object obj) {
                            return GP.a((C8866p50) obj);
                        }
                    }, 31) + ')';
                }
                singletonList = Collections.singletonList(new C8866p50(entry.getKey(), entry.getValue()));
                GJ.b(singletonList, "singletonList(...)");
            } else {
                singletonList = C6049Ut.f44892b;
            }
        }
        collection = singletonList;
        return "@" + this.f40476a + '(' + AbstractC6303Ze.a(collection, null, null, null, new InterfaceC8676ny() {
            @Override
            public final Object a(Object obj) {
                return GP.a((C8866p50) obj);
            }
        }, 31) + ')';
    }

    public final Map<String, JP> a() {
        return this.f40477b;
    }
}
