package org.eclipse.jdt.internal.core.dom;

import Sm.b;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.ArrayCreation;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;

public class SourceRangeVerifier extends ASTVisitor {
    public static boolean DEBUG = false;
    public static boolean DEBUG_THROW = false;
    private StringBuffer bugs;

    private boolean checkChild(ASTNode aSTNode, ASTNode aSTNode2, ASTNode aSTNode3) {
        if ((aSTNode.getFlags() & 9) != 0 || (aSTNode3.getFlags() & 9) != 0) {
            return false;
        }
        int startPosition = aSTNode.getStartPosition();
        int length = aSTNode.getLength() + startPosition;
        int startPosition2 = aSTNode3.getStartPosition();
        int length2 = aSTNode3.getLength() + startPosition2;
        if (aSTNode2 != null) {
            if (aSTNode3.getLocationInParent() == ArrayCreation.DIMENSIONS_PROPERTY) {
                return false;
            }
            int startPosition3 = aSTNode2.getStartPosition();
            int length3 = aSTNode2.getLength() + startPosition3;
            if (startPosition2 < length3) {
                this.bugs.append("- parent [" + startPosition + ", " + length + "] " + aSTNode.getClass().getName() + "\n   previous [" + startPosition3 + ", " + length3 + "] " + aSTNode2.getClass().getName() + '\n' + b.f23785c + aSTNode3.getLocationInParent().getId() + " [" + startPosition2 + ", " + length2 + "] " + aSTNode3.getClass().getName() + '\n');
            }
        }
        if (startPosition <= startPosition2 && length2 <= length) {
            return true;
        }
        this.bugs.append("- parent [" + startPosition + ", " + length + "] " + aSTNode.getClass().getName() + '\n' + b.f23785c + aSTNode3.getLocationInParent().getId() + " [" + startPosition2 + ", " + length2 + "] " + aSTNode3.getClass().getName() + '\n');
        return true;
    }

    @Override
    public boolean preVisit2(ASTNode aSTNode) {
        List structuralPropertiesForType = aSTNode.structuralPropertiesForType();
        ASTNode aSTNode2 = null;
        for (int i10 = 0; i10 < structuralPropertiesForType.size(); i10++) {
            StructuralPropertyDescriptor structuralPropertyDescriptor = (StructuralPropertyDescriptor) structuralPropertiesForType.get(i10);
            if (structuralPropertyDescriptor.isChildProperty()) {
                ASTNode aSTNode3 = (ASTNode) aSTNode.getStructuralProperty(structuralPropertyDescriptor);
                if (aSTNode3 == null) {
                    continue;
                } else {
                    if (!checkChild(aSTNode, aSTNode2, aSTNode3)) {
                        return false;
                    }
                    aSTNode2 = aSTNode3;
                }
            } else if (structuralPropertyDescriptor.isChildListProperty()) {
                List list = (List) aSTNode.getStructuralProperty(structuralPropertyDescriptor);
                int i11 = 0;
                while (i11 < list.size()) {
                    ASTNode aSTNode4 = (ASTNode) list.get(i11);
                    if (!checkChild(aSTNode, aSTNode2, aSTNode4)) {
                        return false;
                    }
                    i11++;
                    aSTNode2 = aSTNode4;
                }
            } else {
                continue;
            }
        }
        return true;
    }

    public String process(ASTNode aSTNode) {
        StringBuffer stringBuffer = new StringBuffer();
        this.bugs = stringBuffer;
        aSTNode.accept(this);
        this.bugs = null;
        if (stringBuffer.length() == 0) {
            return null;
        }
        return stringBuffer.toString();
    }
}
