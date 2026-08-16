package org.openjdk.tools.sjavac.pubapi;

import java.io.Serializable;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.tools.doclint.DocLint;

public class PubMethod implements Serializable {
    private static final long serialVersionUID = -7813050194553446243L;
    String identifier;
    Set<Modifier> modifiers;
    List<TypeDesc> paramTypes;
    TypeDesc returnType;
    List<TypeDesc> throwDecls;
    List<PubApiTypeParam> typeParams;

    public PubMethod(Set<Modifier> set, List<PubApiTypeParam> list, TypeDesc typeDesc, String str, List<TypeDesc> list2, List<TypeDesc> list3) {
        this.modifiers = set;
        this.typeParams = list;
        this.returnType = typeDesc;
        this.identifier = str;
        this.paramTypes = list2;
        this.throwDecls = list3;
    }

    public String asSignatureString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.typeParams.size() > 0) {
            sb2.append((String) this.typeParams.stream().map(new i()).collect(Collectors.joining(DocLint.SEPARATOR, "<", "> ")));
        }
        sb2.append(TypeDesc.encodeAsString(this.returnType));
        sb2.append(" ");
        sb2.append(this.identifier);
        sb2.append("(");
        sb2.append((String) this.paramTypes.stream().map(new a()).collect(Collectors.joining(DocLint.SEPARATOR)));
        sb2.append(")");
        return sb2.toString();
    }

    public boolean equals(Object obj) {
        if (getClass() != obj.getClass()) {
            return false;
        }
        PubMethod pubMethod = (PubMethod) obj;
        return this.modifiers.equals(pubMethod.modifiers) && this.typeParams.equals(pubMethod.typeParams) && this.returnType.equals(pubMethod.returnType) && this.identifier.equals(pubMethod.identifier) && this.paramTypes.equals(pubMethod.paramTypes) && this.throwDecls.equals(pubMethod.throwDecls);
    }

    public int hashCode() {
        return ((((this.modifiers.hashCode() ^ this.typeParams.hashCode()) ^ this.returnType.hashCode()) ^ this.identifier.hashCode()) ^ this.paramTypes.hashCode()) ^ this.throwDecls.hashCode();
    }

    public String toString() {
        return String.format("%s[modifiers: %s, typeParams: %s, retType: %s, identifier: %s, params: %s, throws: %s]", getClass().getSimpleName(), this.modifiers, this.typeParams, this.returnType, this.identifier, this.paramTypes, this.throwDecls);
    }
}
