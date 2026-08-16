package Wf;

import java.lang.annotation.Annotation;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14441w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.I;

@t0({"SMAP\nTypesJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypeVariableImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,230:1\n1586#2:231\n1661#2,3:232\n37#3,2:235\n*S KotlinDebug\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypeVariableImpl\n*L\n116#1:231\n116#1:232,3\n116#1:235,2\n*E\n"})
@InterfaceC14441w
public final class z implements TypeVariable<GenericDeclaration>, x {

    @NotNull
    public final s f27769b;

    public z(@NotNull s typeParameter) {
        M.p(typeParameter, "typeParameter");
        this.f27769b = typeParameter;
    }

    @Nullable
    public final <T extends Annotation> T a(@NotNull Class<T> annotationClass) {
        M.p(annotationClass, "annotationClass");
        return null;
    }

    @NotNull
    public final Annotation[] b() {
        return new Annotation[0];
    }

    @NotNull
    public final Annotation[] c() {
        return new Annotation[0];
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) obj;
            if (M.g(getName(), typeVariable.getName()) && M.g(getGenericDeclaration(), typeVariable.getGenericDeclaration())) {
                return true;
            }
        }
        return false;
    }

    @Override
    @NotNull
    public Type[] getBounds() {
        Type c10;
        List<r> upperBounds = this.f27769b.getUpperBounds();
        ArrayList arrayList = new ArrayList(I.d0(upperBounds, 10));
        Iterator<r> it = upperBounds.iterator();
        while (it.hasNext()) {
            c10 = A.c(it.next(), true);
            arrayList.add(c10);
        }
        return (Type[]) arrayList.toArray(new Type[0]);
    }

    @Override
    @NotNull
    public GenericDeclaration getGenericDeclaration() {
        throw new NotImplementedError("An operation is not implemented: " + ("getGenericDeclaration() is not yet supported for type variables created from KType: " + ((Object) this.f27769b)));
    }

    @Override
    @NotNull
    public String getName() {
        return this.f27769b.getName();
    }

    @Override
    @NotNull
    public String getTypeName() {
        return getName();
    }

    public int hashCode() {
        return getName().hashCode() ^ getGenericDeclaration().hashCode();
    }

    @NotNull
    public String toString() {
        return getTypeName();
    }
}
