package io.reactivex.internal.util;

import Be.I;

public class a<T> {

    public final int f92435a;

    public final Object[] f92436b;

    public Object[] f92437c;

    public int f92438d;

    public interface InterfaceC1782a<T> extends Fe.r<T> {
        @Override
        boolean test(T t10);
    }

    public a(int i10) {
        this.f92435a = i10;
        Object[] objArr = new Object[i10 + 1];
        this.f92436b = objArr;
        this.f92437c = objArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0019, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <U> boolean a(I<? super U> i10) {
        Object[] objArr = this.f92436b;
        int i11 = this.f92435a;
        while (true) {
            if (objArr == null) {
                return false;
            }
            for (int i12 = 0; i12 < i11; i12++) {
                Object[] objArr2 = objArr[i12];
                if (objArr2 == null) {
                    break;
                }
                if (p.c(objArr2, i10)) {
                    return true;
                }
            }
            objArr = objArr[i11];
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0019, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <U> boolean b(hn.c<? super U> cVar) {
        Object[] objArr = this.f92436b;
        int i10 = this.f92435a;
        while (true) {
            if (objArr == null) {
                return false;
            }
            for (int i11 = 0; i11 < i10; i11++) {
                Object[] objArr2 = objArr[i11];
                if (objArr2 == null) {
                    break;
                }
                if (p.d(objArr2, cVar)) {
                    return true;
                }
            }
            objArr = objArr[i10];
        }
    }

    public void c(T t10) {
        int i10 = this.f92435a;
        int i11 = this.f92438d;
        if (i11 == i10) {
            Object[] objArr = new Object[i10 + 1];
            this.f92437c[i10] = objArr;
            this.f92437c = objArr;
            i11 = 0;
        }
        this.f92437c[i11] = t10;
        this.f92438d = i11 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0018, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(InterfaceC1782a<? super T> interfaceC1782a) {
        int i10 = this.f92435a;
        for (Object[] objArr = this.f92436b; objArr != null; objArr = (Object[]) objArr[i10]) {
            for (int i11 = 0; i11 < i10; i11++) {
                Object obj = objArr[i11];
                if (obj == null) {
                    break;
                } else {
                    if (interfaceC1782a.test(obj)) {
                        return;
                    }
                }
            }
        }
    }

    public <S> void e(S s10, Fe.d<? super S, ? super T> dVar) throws Exception {
        Object[] objArr = this.f92436b;
        int i10 = this.f92435a;
        while (true) {
            for (int i11 = 0; i11 < i10; i11++) {
                Object obj = objArr[i11];
                if (obj == null || dVar.test(s10, obj)) {
                    return;
                }
            }
            objArr = (Object[]) objArr[i10];
        }
    }

    public void f(T t10) {
        this.f92436b[0] = t10;
    }
}
