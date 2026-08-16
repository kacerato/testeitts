package com.google.common.collect;

import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@X
@v2.b
@InterfaceC15800a
public final class I2 {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class b {
        public static final b NEXT_LOWER = new a("NEXT_LOWER", 0);
        public static final b NEXT_HIGHER = new C0985b("NEXT_HIGHER", 1);
        public static final b INVERTED_INSERTION_INDEX = new c("INVERTED_INSERTION_INDEX", 2);
        private static final b[] $VALUES = a();

        public enum a extends b {
            public a(String str, int i10) {
                super(str, i10);
            }

            @Override
            public int b(int i10) {
                return i10 - 1;
            }
        }

        public enum C0985b extends b {
            public C0985b(String str, int i10) {
                super(str, i10);
            }

            @Override
            public int b(int i10) {
                return i10;
            }
        }

        public enum c extends b {
            public c(String str, int i10) {
                super(str, i10);
            }

            @Override
            public int b(int i10) {
                return ~i10;
            }
        }

        public b(String str, int i10) {
        }

        public static b[] a() {
            return new b[]{NEXT_LOWER, NEXT_HIGHER, INVERTED_INSERTION_INDEX};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }

        public abstract int b(int i10);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class c {
        public static final c ANY_PRESENT = new a("ANY_PRESENT", 0);
        public static final c LAST_PRESENT = new b("LAST_PRESENT", 1);
        public static final c FIRST_PRESENT = new C0986c("FIRST_PRESENT", 2);
        public static final c FIRST_AFTER = new d("FIRST_AFTER", 3);
        public static final c LAST_BEFORE = new e("LAST_BEFORE", 4);
        private static final c[] $VALUES = a();

        public enum a extends c {
            public a(String str, int i10) {
                super(str, i10);
            }

            @Override
            public <E> int b(Comparator<? super E> comparator, @InterfaceC12518f2 E e10, List<? extends E> list, int i10) {
                return i10;
            }
        }

        public enum b extends c {
            public b(String str, int i10) {
                super(str, i10);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public <E> int b(Comparator<? super E> comparator, @InterfaceC12518f2 E e10, List<? extends E> list, int i10) {
                int size = list.size() - 1;
                while (i10 < size) {
                    int i11 = ((i10 + size) + 1) >>> 1;
                    if (comparator.compare(list.get(i11), e10) > 0) {
                        size = i11 - 1;
                    } else {
                        i10 = i11;
                    }
                }
                return i10;
            }
        }

        public enum C0986c extends c {
            public C0986c(String str, int i10) {
                super(str, i10);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public <E> int b(Comparator<? super E> comparator, @InterfaceC12518f2 E e10, List<? extends E> list, int i10) {
                int i11 = 0;
                while (i11 < i10) {
                    int i12 = (i11 + i10) >>> 1;
                    if (comparator.compare(list.get(i12), e10) < 0) {
                        i11 = i12 + 1;
                    } else {
                        i10 = i12;
                    }
                }
                return i11;
            }
        }

        public enum d extends c {
            public d(String str, int i10) {
                super(str, i10);
            }

            @Override
            public <E> int b(Comparator<? super E> comparator, @InterfaceC12518f2 E e10, List<? extends E> list, int i10) {
                return c.LAST_PRESENT.b(comparator, e10, list, i10) + 1;
            }
        }

        public enum e extends c {
            public e(String str, int i10) {
                super(str, i10);
            }

            @Override
            public <E> int b(Comparator<? super E> comparator, @InterfaceC12518f2 E e10, List<? extends E> list, int i10) {
                return c.FIRST_PRESENT.b(comparator, e10, list, i10) - 1;
            }
        }

        public c(String str, int i10) {
        }

        public static c[] a() {
            return new c[]{ANY_PRESENT, LAST_PRESENT, FIRST_PRESENT, FIRST_AFTER, LAST_BEFORE};
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }

        public abstract <E> int b(Comparator<? super E> comparator, @InterfaceC12518f2 E e10, List<? extends E> list, int i10);
    }

    public static <E extends Comparable> int a(List<? extends E> list, E e10, c cVar, b bVar) {
        w2.H.E(e10);
        return b(list, e10, Ordering.A(), cVar, bVar);
    }

    public static <E> int b(List<? extends E> list, @InterfaceC12518f2 E e10, Comparator<? super E> comparator, c cVar, b bVar) {
        w2.H.E(comparator);
        w2.H.E(list);
        w2.H.E(cVar);
        w2.H.E(bVar);
        if (!(list instanceof RandomAccess)) {
            list = M1.r(list);
        }
        int size = list.size() - 1;
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) >>> 1;
            int compare = comparator.compare(e10, list.get(i11));
            if (compare < 0) {
                size = i11 - 1;
            } else {
                if (compare <= 0) {
                    return i10 + cVar.b(comparator, e10, list.subList(i10, size + 1), i11 - i10);
                }
                i10 = i11 + 1;
            }
        }
        return bVar.b(i10);
    }

    public static <E, K extends Comparable> int c(List<E> list, InterfaceC15902t<? super E, K> interfaceC15902t, K k10, c cVar, b bVar) {
        w2.H.E(k10);
        return d(list, interfaceC15902t, k10, Ordering.A(), cVar, bVar);
    }

    public static <E, K> int d(List<E> list, InterfaceC15902t<? super E, K> interfaceC15902t, @InterfaceC12518f2 K k10, Comparator<? super K> comparator, c cVar, b bVar) {
        return b(M1.D(list, interfaceC15902t), k10, comparator, cVar, bVar);
    }
}
