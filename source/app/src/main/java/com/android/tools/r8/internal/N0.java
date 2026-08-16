package com.android.tools.r8.internal;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class N0 implements InterfaceC7928jW {
    private String a(String str) {
        return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
    }

    @Deprecated
    public static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
        addAll((Iterable) iterable, (List) collection);
    }

    public static C7000dv0 newUninitializedMessageException(InterfaceC8095kW interfaceC8095kW) {
        return new C7000dv0();
    }

    public abstract N0 internalMergeFrom(P0 p02);

    public abstract N0 m710mergeFrom(AbstractC4916Be abstractC4916Be);

    @Override
    public abstract N0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv);

    public N0 m716mergeFrom(byte[] bArr, int i10, int i11) {
        try {
            C10285xe a10 = AbstractC4916Be.a(bArr, i10, i11, false);
            m710mergeFrom(a10);
            a10.a(0);
            return this;
        } catch (MJ e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException(a("byte array"), e11);
        }
    }

    public static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        Charset charset = YI.f45964a;
        iterable.getClass();
        if (iterable instanceof InterfaceC10589zR) {
            List f10 = ((InterfaceC10589zR) iterable).f();
            InterfaceC10589zR interfaceC10589zR = (InterfaceC10589zR) list;
            int size = list.size();
            for (Object obj : f10) {
                if (obj == null) {
                    String str = "Element at index " + (interfaceC10589zR.size() - size) + " is null.";
                    for (int size2 = interfaceC10589zR.size() - 1; size2 >= size; size2--) {
                        interfaceC10589zR.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof AbstractC8373m8) {
                    interfaceC10589zR.a((AbstractC8373m8) obj);
                } else {
                    interfaceC10589zR.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof B70) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size3 = list.size();
        for (T t10 : iterable) {
            if (t10 == null) {
                String str2 = "Element at index " + (list.size() - size3) + " is null.";
                for (int size4 = list.size() - 1; size4 >= size3; size4--) {
                    list.remove(size4);
                }
                throw new NullPointerException(str2);
            }
            list.add(t10);
        }
    }

    public N0 m717mergeFrom(byte[] bArr, int i10, int i11, C10670zv c10670zv) {
        try {
            C10285xe a10 = AbstractC4916Be.a(bArr, i10, i11, false);
            mergeFrom((AbstractC4916Be) a10, c10670zv);
            a10.a(0);
            return this;
        } catch (MJ e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException(a("byte array"), e11);
        }
    }

    public N0 m711mergeFrom(AbstractC8373m8 abstractC8373m8) {
        try {
            AbstractC4916Be b10 = abstractC8373m8.b();
            m710mergeFrom(b10);
            b10.a(0);
            return this;
        } catch (MJ e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException(a("ByteString"), e11);
        }
    }

    public N0 m712mergeFrom(AbstractC8373m8 abstractC8373m8, C10670zv c10670zv) {
        try {
            AbstractC4916Be b10 = abstractC8373m8.b();
            mergeFrom(b10, c10670zv);
            b10.a(0);
            return this;
        } catch (MJ e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException(a("ByteString"), e11);
        }
    }

    public N0 m721mergeFrom(InterfaceC8095kW interfaceC8095kW) {
        if (getDefaultInstanceForType().getClass().isInstance(interfaceC8095kW)) {
            return internalMergeFrom((P0) interfaceC8095kW);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
