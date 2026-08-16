package qe;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import qe.InterfaceC15082k;

public class C15083l implements InterfaceC15082k {

    public final Map<Class<? extends Um.v>, InterfaceC15096y> f106163a;

    public static class a implements InterfaceC15082k.a {

        public final Map<Class<? extends Um.v>, InterfaceC15096y> f106164a = new HashMap(3);

        @Override
        @NonNull
        public <N extends Um.v> InterfaceC15082k.a a(@NonNull Class<N> cls, @NonNull InterfaceC15096y interfaceC15096y) {
            InterfaceC15096y interfaceC15096y2 = this.f106164a.get(cls);
            if (interfaceC15096y2 == null) {
                this.f106164a.put(cls, interfaceC15096y);
            } else if (interfaceC15096y2 instanceof b) {
                ((b) interfaceC15096y2).f106165a.add(0, interfaceC15096y);
            } else {
                this.f106164a.put(cls, new b(interfaceC15096y, interfaceC15096y2));
            }
            return this;
        }

        @Override
        @NonNull
        public <N extends Um.v> InterfaceC15096y b(@NonNull Class<N> cls) {
            InterfaceC15096y c10 = c(cls);
            if (c10 != null) {
                return c10;
            }
            throw new NullPointerException(cls.getName());
        }

        @Override
        @NonNull
        public InterfaceC15082k build() {
            return new C15083l(Collections.unmodifiableMap(this.f106164a));
        }

        @Override
        @Nullable
        public <N extends Um.v> InterfaceC15096y c(@NonNull Class<N> cls) {
            return this.f106164a.get(cls);
        }

        @Override
        @NonNull
        public <N extends Um.v> InterfaceC15082k.a d(@NonNull Class<N> cls, @NonNull InterfaceC15096y interfaceC15096y) {
            InterfaceC15096y interfaceC15096y2 = this.f106164a.get(cls);
            if (interfaceC15096y2 == null) {
                this.f106164a.put(cls, interfaceC15096y);
            } else if (interfaceC15096y2 instanceof b) {
                ((b) interfaceC15096y2).f106165a.add(interfaceC15096y);
            } else {
                this.f106164a.put(cls, new b(interfaceC15096y2, interfaceC15096y));
            }
            return this;
        }

        @Override
        @NonNull
        @Deprecated
        public <N extends Um.v> InterfaceC15082k.a e(@NonNull Class<N> cls, @NonNull InterfaceC15096y interfaceC15096y) {
            return d(cls, interfaceC15096y);
        }

        @Override
        @NonNull
        public <N extends Um.v> InterfaceC15082k.a f(@NonNull Class<N> cls, @Nullable InterfaceC15096y interfaceC15096y) {
            if (interfaceC15096y == null) {
                this.f106164a.remove(cls);
            } else {
                this.f106164a.put(cls, interfaceC15096y);
            }
            return this;
        }
    }

    public static class b implements InterfaceC15096y {

        public final List<InterfaceC15096y> f106165a;

        public b(@NonNull InterfaceC15096y interfaceC15096y, @NonNull InterfaceC15096y interfaceC15096y2) {
            ArrayList arrayList = new ArrayList(3);
            this.f106165a = arrayList;
            arrayList.add(interfaceC15096y);
            arrayList.add(interfaceC15096y2);
        }

        @Override
        @Nullable
        public Object a(@NonNull C15078g c15078g, @NonNull InterfaceC15093v interfaceC15093v) {
            int size = this.f106165a.size();
            Object[] objArr = new Object[size];
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = this.f106165a.get(i10).a(c15078g, interfaceC15093v);
            }
            return objArr;
        }
    }

    public C15083l(@NonNull Map<Class<? extends Um.v>, InterfaceC15096y> map) {
        this.f106163a = map;
    }

    @Override
    @Nullable
    public <N extends Um.v> InterfaceC15096y a(@NonNull Class<N> cls) {
        return this.f106163a.get(cls);
    }

    @Override
    @NonNull
    public <N extends Um.v> InterfaceC15096y b(@NonNull Class<N> cls) {
        InterfaceC15096y a10 = a(cls);
        if (a10 != null) {
            return a10;
        }
        throw new NullPointerException(cls.getName());
    }
}
