package com.github.javaparser.resolution.declarations;

import com.github.javaparser.resolution.types.ResolvedReferenceType;
import java.util.ArrayList;
import java.util.List;

public interface ResolvedInterfaceDeclaration extends ResolvedReferenceTypeDeclaration, ResolvedTypeParametrizable, HasAccessSpecifier {
    default List<ResolvedReferenceType> getAllInterfacesExtended() {
        ArrayList arrayList = new ArrayList();
        for (ResolvedReferenceType resolvedReferenceType : getInterfacesExtended()) {
            arrayList.add(resolvedReferenceType);
            arrayList.addAll(resolvedReferenceType.getAllInterfacesAncestors());
        }
        return arrayList;
    }

    List<ResolvedReferenceType> getInterfacesExtended();

    @Override
    default boolean isInterface() {
        return true;
    }
}
