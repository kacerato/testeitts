package Vk;

import fi.C13228d;
import hi.C13481E;
import hi.H;
import oh.E;
import org.bouncycastle.asn1.x509.NameConstraintValidatorException;
import org.bouncycastle.pkix.PKIXNameConstraintValidatorException;

public class c {

    public a f27154a = new a();

    public void a(H h10) {
        this.f27154a.e(h10);
    }

    public void b(C13481E c13481e) throws PKIXNameConstraintValidatorException {
        try {
            this.f27154a.d(c13481e);
        } catch (NameConstraintValidatorException e10) {
            throw new PKIXNameConstraintValidatorException(e10.getMessage(), e10);
        }
    }

    public void c(E e10) throws PKIXNameConstraintValidatorException {
        try {
            this.f27154a.h(C13228d.x(e10));
        } catch (NameConstraintValidatorException e11) {
            throw new PKIXNameConstraintValidatorException(e11.getMessage(), e11);
        }
    }

    public void d(C13481E c13481e) throws PKIXNameConstraintValidatorException {
        try {
            this.f27154a.f(c13481e);
        } catch (NameConstraintValidatorException e10) {
            throw new PKIXNameConstraintValidatorException(e10.getMessage(), e10);
        }
    }

    public void e(E e10) throws PKIXNameConstraintValidatorException {
        try {
            this.f27154a.o(C13228d.x(e10));
        } catch (NameConstraintValidatorException e11) {
            throw new PKIXNameConstraintValidatorException(e11.getMessage(), e11);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            return this.f27154a.equals(((c) obj).f27154a);
        }
        return false;
    }

    public void f(int i10) {
        this.f27154a.c(i10);
    }

    public void g(H h10) {
        this.f27154a.a(h10);
    }

    public void h(H[] hArr) {
        this.f27154a.b(hArr);
    }

    public int hashCode() {
        return this.f27154a.hashCode();
    }

    public String toString() {
        return this.f27154a.toString();
    }
}
