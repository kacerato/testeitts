package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.search.TypeNameMatch;

public class JavaSearchTypeNameMatch extends TypeNameMatch {
    private int accessibility = 0;
    private int modifiers;
    private IType type;

    public JavaSearchTypeNameMatch(IType iType, int i10) {
        this.type = iType;
        this.modifiers = i10;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TypeNameMatch) {
            TypeNameMatch typeNameMatch = (TypeNameMatch) obj;
            IType iType = this.type;
            if (iType == null) {
                return typeNameMatch.getType() == null && typeNameMatch.getModifiers() == this.modifiers;
            }
            if (iType.equals(typeNameMatch.getType()) && typeNameMatch.getModifiers() == this.modifiers) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int getAccessibility() {
        return this.accessibility;
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    @Override
    public IType getType() {
        return this.type;
    }

    public int hashCode() {
        IType iType = this.type;
        return iType == null ? this.modifiers : iType.hashCode();
    }

    public void setAccessibility(int i10) {
        this.accessibility = i10;
    }

    public void setModifiers(int i10) {
        this.modifiers = i10;
    }

    public void setType(IType iType) {
        this.type = iType;
    }

    public String toString() {
        IType iType = this.type;
        return iType == null ? super.toString() : iType.toString();
    }
}
