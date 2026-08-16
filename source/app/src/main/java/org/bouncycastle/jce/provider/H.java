package org.bouncycastle.jce.provider;

import fi.C13228d;
import hi.C13481E;
import org.bouncycastle.asn1.x509.NameConstraintValidatorException;

public class H {

    public hi.U f101612a = new hi.U();

    public void a(hi.H h10) {
        this.f101612a.e(h10);
    }

    public void b(C13481E c13481e) throws PKIXNameConstraintValidatorException {
        try {
            this.f101612a.d(c13481e);
        } catch (NameConstraintValidatorException e10) {
            throw new PKIXNameConstraintValidatorException(e10.getMessage(), e10);
        }
    }

    public void c(oh.E e10) throws PKIXNameConstraintValidatorException {
        try {
            this.f101612a.h(C13228d.x(e10));
        } catch (NameConstraintValidatorException e11) {
            throw new PKIXNameConstraintValidatorException(e11.getMessage(), e11);
        }
    }

    public void d(C13481E c13481e) throws PKIXNameConstraintValidatorException {
        try {
            this.f101612a.f(c13481e);
        } catch (NameConstraintValidatorException e10) {
            throw new PKIXNameConstraintValidatorException(e10.getMessage(), e10);
        }
    }

    public void e(oh.E e10) throws PKIXNameConstraintValidatorException {
        try {
            this.f101612a.o(C13228d.x(e10));
        } catch (NameConstraintValidatorException e11) {
            throw new PKIXNameConstraintValidatorException(e11.getMessage(), e11);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof H) {
            return this.f101612a.equals(((H) obj).f101612a);
        }
        return false;
    }

    public void f(int i10) {
        this.f101612a.c(i10);
    }

    public void g(hi.H h10) {
        this.f101612a.a(h10);
    }

    public void h(hi.H[] hArr) {
        this.f101612a.b(hArr);
    }

    public int hashCode() {
        return this.f101612a.hashCode();
    }

    public String toString() {
        return this.f101612a.toString();
    }
}
