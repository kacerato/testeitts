package com.google.protobuf;

import com.google.protobuf.D0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@B
public abstract class L0 {

    public static final L0 f68783a;

    public static final L0 f68784b;

    public static final class b extends L0 {

        public static final Class<?> f68785c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        public b() {
            super();
        }

        public static <E> List<E> f(Object message, long offset) {
            return (List) x2.Q(message, offset);
        }

        public static <L> List<L> g(Object message, long offset, int additionalCapacity) {
            List<L> j02;
            List<L> f10 = f(message, offset);
            if (f10.isEmpty()) {
                List<L> j03 = f10 instanceof K0 ? new J0(additionalCapacity) : ((f10 instanceof InterfaceC12726x1) && (f10 instanceof D0.k)) ? ((D0.k) f10).q2(additionalCapacity) : new ArrayList<>(additionalCapacity);
                x2.t0(message, offset, j03);
                return j03;
            }
            if (f68785c.isAssignableFrom(f10.getClass())) {
                j02 = new ArrayList<>(f10.size() + additionalCapacity);
                j02.addAll(f10);
                x2.t0(message, offset, j02);
            } else {
                if (!(f10 instanceof v2)) {
                    if (!(f10 instanceof InterfaceC12726x1) || !(f10 instanceof D0.k)) {
                        return f10;
                    }
                    D0.k kVar = (D0.k) f10;
                    if (kVar.hc()) {
                        return f10;
                    }
                    D0.k q22 = kVar.q2(f10.size() + additionalCapacity);
                    x2.t0(message, offset, q22);
                    return q22;
                }
                j02 = new J0(f10.size() + additionalCapacity);
                j02.addAll((v2) f10);
                x2.t0(message, offset, j02);
            }
            return j02;
        }

        @Override
        public void c(Object message, long offset) {
            Object unmodifiableList;
            List list = (List) x2.Q(message, offset);
            if (list instanceof K0) {
                unmodifiableList = ((K0) list).t8();
            } else {
                if (f68785c.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof InterfaceC12726x1) && (list instanceof D0.k)) {
                    D0.k kVar = (D0.k) list;
                    if (kVar.hc()) {
                        kVar.r9();
                        return;
                    }
                    return;
                }
                unmodifiableList = Collections.unmodifiableList(list);
            }
            x2.t0(message, offset, unmodifiableList);
        }

        @Override
        public <E> void d(Object msg, Object otherMsg, long offset) {
            List f10 = f(otherMsg, offset);
            List g10 = g(msg, offset, f10.size());
            int size = g10.size();
            int size2 = f10.size();
            if (size > 0 && size2 > 0) {
                g10.addAll(f10);
            }
            if (size > 0) {
                f10 = g10;
            }
            x2.t0(msg, offset, f10);
        }

        @Override
        public <L> List<L> e(Object message, long offset) {
            return g(message, offset, 10);
        }
    }

    public static final class c extends L0 {
        public c() {
            super();
        }

        public static <E> D0.k<E> f(Object message, long offset) {
            return (D0.k) x2.Q(message, offset);
        }

        @Override
        public void c(Object message, long offset) {
            f(message, offset).r9();
        }

        @Override
        public <E> void d(Object msg, Object otherMsg, long offset) {
            D0.k f10 = f(msg, offset);
            D0.k f11 = f(otherMsg, offset);
            int size = f10.size();
            int size2 = f11.size();
            if (size > 0 && size2 > 0) {
                if (!f10.hc()) {
                    f10 = f10.q2(size2 + size);
                }
                f10.addAll(f11);
            }
            if (size > 0) {
                f11 = f10;
            }
            x2.t0(msg, offset, f11);
        }

        @Override
        public <L> List<L> e(Object message, long offset) {
            D0.k f10 = f(message, offset);
            if (f10.hc()) {
                return f10;
            }
            int size = f10.size();
            D0.k q22 = f10.q2(size == 0 ? 10 : size * 2);
            x2.t0(message, offset, q22);
            return q22;
        }
    }

    static {
        f68783a = new b();
        f68784b = new c();
    }

    public static L0 a() {
        return f68783a;
    }

    public static L0 b() {
        return f68784b;
    }

    public abstract void c(Object msg, long offset);

    public abstract <L> void d(Object msg, Object otherMsg, long offset);

    public abstract <L> List<L> e(Object msg, long offset);

    public L0() {
    }
}
