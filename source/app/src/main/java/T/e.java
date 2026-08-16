package T;

import C.j;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class e {

    public final List<String> f23800a = new ArrayList();

    public final Map<String, List<a<?, ?>>> f23801b = new HashMap();

    public static class a<T, R> {

        public final Class<T> f23802a;

        public final Class<R> f23803b;

        public final j<T, R> f23804c;

        public a(@NonNull Class<T> cls, @NonNull Class<R> cls2, j<T, R> jVar) {
            this.f23802a = cls;
            this.f23803b = cls2;
            this.f23804c = jVar;
        }

        public boolean a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f23802a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f23803b);
        }
    }

    public synchronized <T, R> void a(@NonNull String str, @NonNull j<T, R> jVar, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        c(str).add(new a<>(cls, cls2, jVar));
    }

    @NonNull
    public synchronized <T, R> List<j<T, R>> b(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.f23800a.iterator();
        while (it.hasNext()) {
            List<a<?, ?>> list = this.f23801b.get(it.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2)) {
                        arrayList.add(aVar.f23804c);
                    }
                }
            }
        }
        return arrayList;
    }

    @NonNull
    public final synchronized List<a<?, ?>> c(@NonNull String str) {
        List<a<?, ?>> list;
        try {
            if (!this.f23800a.contains(str)) {
                this.f23800a.add(str);
            }
            list = this.f23801b.get(str);
            if (list == null) {
                list = new ArrayList<>();
                this.f23801b.put(str, list);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return list;
    }

    @NonNull
    public synchronized <T, R> List<Class<R>> d(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.f23800a.iterator();
        while (it.hasNext()) {
            List<a<?, ?>> list = this.f23801b.get(it.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2) && !arrayList.contains(aVar.f23803b)) {
                        arrayList.add(aVar.f23803b);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized <T, R> void e(@NonNull String str, @NonNull j<T, R> jVar, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        c(str).add(0, new a<>(cls, cls2, jVar));
    }

    public synchronized void f(@NonNull List<String> list) {
        try {
            ArrayList<String> arrayList = new ArrayList(this.f23800a);
            this.f23800a.clear();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                this.f23800a.add(it.next());
            }
            for (String str : arrayList) {
                if (!list.contains(str)) {
                    this.f23800a.add(str);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
