package com.github.javaparser.resolution.model;

import com.github.javaparser.resolution.UnsolvedSymbolException;
import com.github.javaparser.resolution.declarations.ResolvedDeclaration;
import com.github.javaparser.resolution.model.SymbolReference;
import java.util.Optional;
import java.util.function.Supplier;
import org.apache.commons.math3.geometry.VectorFormat;

public class SymbolReference<S extends ResolvedDeclaration> {
    private final S correspondingDeclaration;

    private SymbolReference(S correspondingDeclaration) {
        this.correspondingDeclaration = correspondingDeclaration;
    }

    public static <I extends ResolvedDeclaration, O extends ResolvedDeclaration> SymbolReference<O> adapt(SymbolReference<I> ref, Class<O> clazz) {
        Optional<I> declaration = ref.getDeclaration();
        if (declaration.isPresent()) {
            I i10 = declaration.get();
            if (clazz.isInstance(i10)) {
                return solved(clazz.cast(i10));
            }
        }
        return unsolved();
    }

    public static UnsolvedSymbolException lambda$getCorrespondingDeclaration$0() {
        return new UnsolvedSymbolException("Corresponding declaration not available for unsolved symbol.");
    }

    /* JADX WARN: Incorrect types in method signature: <S::Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;S2:TS;>(TS2;)Lcom/github/javaparser/resolution/model/SymbolReference<TS;>; */
    public static SymbolReference solved(ResolvedDeclaration symbolDeclaration) {
        return new SymbolReference(symbolDeclaration);
    }

    public static <S extends ResolvedDeclaration> SymbolReference<S> unsolved() {
        return new SymbolReference<>(null);
    }

    public S getCorrespondingDeclaration() {
        return getDeclaration().orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                UnsolvedSymbolException lambda$getCorrespondingDeclaration$0;
                lambda$getCorrespondingDeclaration$0 = SymbolReference.lambda$getCorrespondingDeclaration$0();
                return lambda$getCorrespondingDeclaration$0;
            }
        });
    }

    public Optional<S> getDeclaration() {
        return Optional.ofNullable(this.correspondingDeclaration);
    }

    public boolean isSolved() {
        return getDeclaration().isPresent();
    }

    public String toString() {
        return "SymbolReference{" + ((Object) this.correspondingDeclaration) + VectorFormat.DEFAULT_SUFFIX;
    }

    @Deprecated
    public static <S extends ResolvedDeclaration, S2 extends S> SymbolReference<S> unsolved(Class<S2> clazz) {
        return unsolved();
    }
}
