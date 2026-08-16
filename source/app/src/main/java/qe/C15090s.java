package qe;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.eclipse.jdt.internal.core.JavaElement;

public class C15090s<T> {

    public final String f106186a;

    public C15090s(@NonNull String str) {
        this.f106186a = str;
    }

    @NonNull
    public static <T> C15090s<T> e(@NonNull Class<T> cls, @NonNull String str) {
        return new C15090s<>(str);
    }

    @NonNull
    public static <T> C15090s<T> f(@NonNull String str) {
        return new C15090s<>(str);
    }

    public void a(@NonNull InterfaceC15093v interfaceC15093v) {
        interfaceC15093v.b(this);
    }

    @Nullable
    public T b(@NonNull InterfaceC15093v interfaceC15093v) {
        return (T) interfaceC15093v.a(this);
    }

    @NonNull
    public T c(@NonNull InterfaceC15093v interfaceC15093v, @NonNull T t10) {
        return (T) interfaceC15093v.d(this, t10);
    }

    @NonNull
    public String d() {
        return this.f106186a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f106186a.equals(((C15090s) obj).f106186a);
    }

    @NonNull
    public T g(@NonNull InterfaceC15093v interfaceC15093v) {
        T b10 = b(interfaceC15093v);
        if (b10 != null) {
            return b10;
        }
        throw new NullPointerException(this.f106186a);
    }

    public void h(@NonNull InterfaceC15093v interfaceC15093v, @Nullable T t10) {
        interfaceC15093v.c(this, t10);
    }

    public int hashCode() {
        return this.f106186a.hashCode();
    }

    public String toString() {
        return "Prop{name='" + this.f106186a + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
    }
}
