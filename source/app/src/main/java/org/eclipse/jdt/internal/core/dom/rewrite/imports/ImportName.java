package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.dom.ImportDeclaration;

public final class ImportName {
    public final String containerName;
    public final boolean isStatic;
    public final String qualifiedName;
    public final String simpleName;

    private ImportName(boolean z10, String str, String str2) {
        this.isStatic = z10;
        this.containerName = str;
        this.simpleName = str2;
        if (!str.isEmpty()) {
            str2 = str + "." + str2;
        }
        this.qualifiedName = str2;
    }

    public static ImportName createFor(ImportDeclaration importDeclaration) {
        String fullyQualifiedName = importDeclaration.getName().getFullyQualifiedName();
        if (importDeclaration.isOnDemand()) {
            return createOnDemand(importDeclaration.isStatic(), fullyQualifiedName);
        }
        return createFor(importDeclaration.isStatic(), fullyQualifiedName);
    }

    public static ImportName createOnDemand(boolean z10, String str) {
        return new ImportName(z10, str, "*");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ImportName)) {
            return false;
        }
        ImportName importName = (ImportName) obj;
        return this.qualifiedName.equals(importName.qualifiedName) && this.isStatic == importName.isStatic;
    }

    public ImportName getContainerOnDemand() {
        return isOnDemand() ? this : createOnDemand(this.isStatic, this.containerName);
    }

    public int hashCode() {
        return (this.qualifiedName.hashCode() * 31) + (this.isStatic ? 1 : 0);
    }

    public boolean isOnDemand() {
        return this.simpleName.equals("*");
    }

    public String toString() {
        return String.format(this.isStatic ? "staticImport(%s)" : "typeImport(%s)", this.qualifiedName);
    }

    public static ImportName createFor(boolean z10, String str) {
        return new ImportName(z10, Signature.getQualifier(str), Signature.getSimpleName(str));
    }
}
