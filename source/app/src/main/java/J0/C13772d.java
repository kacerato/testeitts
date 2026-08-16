package j0;

import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.types.ResolvedTypeVariable;
import java.util.function.Function;

public final class C13772d implements Function {
    @Override
    public final Object apply(Object obj) {
        return new ResolvedTypeVariable((ResolvedTypeParameterDeclaration) obj);
    }
}
