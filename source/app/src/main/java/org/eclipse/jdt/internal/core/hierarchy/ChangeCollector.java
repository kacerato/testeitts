package org.eclipse.jdt.internal.core.hierarchy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportContainer;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.SimpleDelta;

public class ChangeCollector {
    HashMap changes = new HashMap();
    TypeHierarchy hierarchy;

    public ChangeCollector(TypeHierarchy typeHierarchy) {
        this.hierarchy = typeHierarchy;
    }

    private void addAffectedChildren(IJavaElementDelta iJavaElementDelta) throws JavaModelException {
        for (IJavaElementDelta iJavaElementDelta2 : iJavaElementDelta.getAffectedChildren()) {
            IJavaElement element = iJavaElementDelta2.getElement();
            switch (element.getElementType()) {
                case 7:
                    addChange((IType) element, iJavaElementDelta2);
                    break;
                case 8:
                case 9:
                case 10:
                    addChange((IMember) element, iJavaElementDelta2);
                    break;
                case 12:
                    addChange((IImportContainer) element, iJavaElementDelta2);
                    break;
                case 13:
                    addChange((IImportDeclaration) element, iJavaElementDelta2);
                    break;
            }
        }
    }

    private void addTypeAddition(IType iType, SimpleDelta simpleDelta) throws JavaModelException {
        boolean z10;
        if (simpleDelta == null) {
            String elementName = iType.getElementName();
            if (this.hierarchy.hasSupertype(elementName) || this.hierarchy.subtypesIncludeSupertypeOf(iType) || this.hierarchy.missingTypes.contains(elementName)) {
                SimpleDelta simpleDelta2 = new SimpleDelta();
                simpleDelta2.added();
                this.changes.put(iType, simpleDelta2);
                return;
            }
            return;
        }
        if (simpleDelta.getKind() != 2) {
            return;
        }
        boolean z11 = true;
        if (hasSuperTypeChange(iType)) {
            simpleDelta.superTypes();
            z10 = true;
        } else {
            z10 = false;
        }
        if (hasVisibilityChange(iType)) {
            simpleDelta.modifiers();
        } else {
            z11 = z10;
        }
        if (z11) {
            return;
        }
        this.changes.remove(iType);
    }

    private void addTypeChange(IType iType, int i10, SimpleDelta simpleDelta) throws JavaModelException {
        SimpleDelta simpleDelta2;
        boolean z10;
        if (simpleDelta == null) {
            if ((i10 & 2048) == 0 || !this.hierarchy.includesTypeOrSupertype(iType)) {
                simpleDelta2 = null;
            } else {
                simpleDelta2 = new SimpleDelta();
                simpleDelta2.superTypes();
            }
            if ((i10 & 2) != 0 && (this.hierarchy.hasSupertype(iType.getElementName()) || iType.equals(this.hierarchy.focusType))) {
                if (simpleDelta2 == null) {
                    simpleDelta2 = new SimpleDelta();
                }
                simpleDelta2.modifiers();
            }
            if (simpleDelta2 != null) {
                this.changes.put(iType, simpleDelta2);
                return;
            }
            return;
        }
        if (simpleDelta.getKind() != 4) {
            return;
        }
        int flags = simpleDelta.getFlags();
        boolean z11 = true;
        if ((flags & 2048) == 0 || !hasSuperTypeChange(iType)) {
            z10 = false;
        } else {
            simpleDelta.superTypes();
            z10 = true;
        }
        if ((flags & 2) == 0 || !hasVisibilityChange(iType)) {
            z11 = z10;
        } else {
            simpleDelta.modifiers();
        }
        if (z11) {
            return;
        }
        this.changes.remove(iType);
    }

    private void addTypeRemoval(IType iType, SimpleDelta simpleDelta) {
        if (simpleDelta == null) {
            if (this.hierarchy.contains(iType)) {
                SimpleDelta simpleDelta2 = new SimpleDelta();
                simpleDelta2.removed();
                this.changes.put(iType, simpleDelta2);
                return;
            }
            return;
        }
        int kind = simpleDelta.getKind();
        if (kind == 1) {
            this.changes.remove(iType);
        } else {
            if (kind != 4) {
                return;
            }
            simpleDelta.removed();
        }
    }

    private void getAllTypesFromElement(IJavaElement iJavaElement, ArrayList arrayList) throws JavaModelException {
        int i10 = 0;
        switch (iJavaElement.getElementType()) {
            case 5:
                IType[] types = ((ICompilationUnit) iJavaElement).getTypes();
                int length = types.length;
                while (i10 < length) {
                    IType iType = types[i10];
                    arrayList.add(iType);
                    getAllTypesFromElement(iType, arrayList);
                    i10++;
                }
                return;
            case 6:
            default:
                return;
            case 7:
                IType[] types2 = ((IType) iJavaElement).getTypes();
                int length2 = types2.length;
                while (i10 < length2) {
                    IType iType2 = types2[i10];
                    arrayList.add(iType2);
                    getAllTypesFromElement(iType2, arrayList);
                    i10++;
                }
                return;
            case 8:
            case 9:
            case 10:
                IJavaElement[] children = ((IMember) iJavaElement).getChildren();
                int length3 = children.length;
                while (i10 < length3) {
                    IType iType3 = (IType) children[i10];
                    arrayList.add(iType3);
                    getAllTypesFromElement(iType3, arrayList);
                    i10++;
                }
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void getAllTypesFromHierarchy(JavaElement javaElement, ArrayList arrayList) {
        switch (javaElement.getElementType()) {
            case 5:
                ArrayList<IType> arrayList2 = this.hierarchy.files.get((IOpenable) javaElement);
                if (arrayList2 != null) {
                    arrayList.addAll(arrayList2);
                    return;
                }
                return;
            case 6:
            default:
                return;
            case 7:
            case 8:
            case 9:
            case 10:
                ArrayList<IType> arrayList3 = this.hierarchy.files.get(((IMember) javaElement).getCompilationUnit());
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        IType iType = arrayList3.get(i10);
                        if (javaElement.isAncestorOf(iType)) {
                            arrayList.add(iType);
                        }
                    }
                    return;
                }
                return;
        }
    }

    private boolean hasSuperTypeChange(IType iType) throws JavaModelException {
        IType superclass = this.hierarchy.getSuperclass(iType);
        String elementName = superclass == null ? null : superclass.getElementName();
        String superclassName = iType.getSuperclassName();
        if (elementName != null && !elementName.equals(superclassName)) {
            return true;
        }
        IType[] superInterfaces = this.hierarchy.getSuperInterfaces(iType);
        String[] superInterfaceNames = iType.getSuperInterfaceNames();
        if (superInterfaces.length != superInterfaceNames.length) {
            return true;
        }
        for (String str : superInterfaceNames) {
            if (!str.equals(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasVisibilityChange(IType iType) throws JavaModelException {
        return this.hierarchy.getCachedFlags(iType) != iType.getFlags();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addChange(ICompilationUnit iCompilationUnit, IJavaElementDelta iJavaElementDelta) throws JavaModelException {
        int kind = iJavaElementDelta.getKind();
        int i10 = 0;
        if (kind == 1) {
            ArrayList arrayList = new ArrayList();
            getAllTypesFromElement(iCompilationUnit, arrayList);
            int size = arrayList.size();
            while (i10 < size) {
                IType iType = (IType) arrayList.get(i10);
                addTypeAddition(iType, (SimpleDelta) this.changes.get(iType));
                i10++;
            }
            return;
        }
        if (kind != 2) {
            if (kind != 4) {
                return;
            }
            addAffectedChildren(iJavaElementDelta);
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        getAllTypesFromHierarchy((JavaElement) iCompilationUnit, arrayList2);
        int size2 = arrayList2.size();
        while (i10 < size2) {
            IType iType2 = (IType) arrayList2.get(i10);
            addTypeRemoval(iType2, (SimpleDelta) this.changes.get(iType2));
            i10++;
        }
    }

    public boolean needsRefresh() {
        return this.changes.size() != 0;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = this.changes.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            stringBuffer.append(((JavaElement) entry.getKey()).toDebugString());
            stringBuffer.append(entry.getValue());
            if (it.hasNext()) {
                stringBuffer.append('\n');
            }
        }
        return stringBuffer.toString();
    }

    private void addChange(IImportContainer iImportContainer, IJavaElementDelta iJavaElementDelta) throws JavaModelException {
        int kind = iJavaElementDelta.getKind();
        if (kind == 4) {
            addAffectedChildren(iJavaElementDelta);
            return;
        }
        SimpleDelta simpleDelta = (SimpleDelta) this.changes.get(iImportContainer);
        if (simpleDelta == null) {
            SimpleDelta simpleDelta2 = new SimpleDelta();
            if (kind == 1) {
                simpleDelta2.added();
            } else if (kind == 2) {
                simpleDelta2.removed();
            }
            this.changes.put(iImportContainer, simpleDelta2);
            return;
        }
        if (kind != 1) {
            if (kind == 2 && simpleDelta.getKind() == 1) {
                this.changes.remove(iImportContainer);
                return;
            }
            return;
        }
        if (simpleDelta.getKind() == 2) {
            this.changes.remove(iImportContainer);
        }
    }

    private void addChange(IImportDeclaration iImportDeclaration, IJavaElementDelta iJavaElementDelta) {
        SimpleDelta simpleDelta = (SimpleDelta) this.changes.get(iImportDeclaration);
        int kind = iJavaElementDelta.getKind();
        if (simpleDelta == null) {
            SimpleDelta simpleDelta2 = new SimpleDelta();
            if (kind == 1) {
                simpleDelta2.added();
            } else if (kind == 2) {
                simpleDelta2.removed();
            }
            this.changes.put(iImportDeclaration, simpleDelta2);
            return;
        }
        if (kind != 1) {
            if (kind == 2 && simpleDelta.getKind() == 1) {
                this.changes.remove(iImportDeclaration);
                return;
            }
            return;
        }
        if (simpleDelta.getKind() == 2) {
            this.changes.remove(iImportDeclaration);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addChange(IMember iMember, IJavaElementDelta iJavaElementDelta) throws JavaModelException {
        int kind = iJavaElementDelta.getKind();
        int i10 = 0;
        if (kind == 1) {
            ArrayList arrayList = new ArrayList();
            getAllTypesFromElement(iMember, arrayList);
            int size = arrayList.size();
            while (i10 < size) {
                IType iType = (IType) arrayList.get(i10);
                addTypeAddition(iType, (SimpleDelta) this.changes.get(iType));
                i10++;
            }
            return;
        }
        if (kind != 2) {
            if (kind != 4) {
                return;
            }
            addAffectedChildren(iJavaElementDelta);
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        getAllTypesFromHierarchy((JavaElement) iMember, arrayList2);
        int size2 = arrayList2.size();
        while (i10 < size2) {
            IType iType2 = (IType) arrayList2.get(i10);
            addTypeRemoval(iType2, (SimpleDelta) this.changes.get(iType2));
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addChange(IType iType, IJavaElementDelta iJavaElementDelta) throws JavaModelException {
        int kind = iJavaElementDelta.getKind();
        SimpleDelta simpleDelta = (SimpleDelta) this.changes.get(iType);
        int i10 = 0;
        if (kind == 1) {
            addTypeAddition(iType, simpleDelta);
            ArrayList arrayList = new ArrayList();
            getAllTypesFromElement(iType, arrayList);
            int size = arrayList.size();
            while (i10 < size) {
                IType iType2 = (IType) arrayList.get(i10);
                addTypeAddition(iType2, (SimpleDelta) this.changes.get(iType2));
                i10++;
            }
            return;
        }
        if (kind != 2) {
            if (kind != 4) {
                return;
            }
            addTypeChange(iType, iJavaElementDelta.getFlags(), simpleDelta);
            addAffectedChildren(iJavaElementDelta);
            return;
        }
        addTypeRemoval(iType, simpleDelta);
        ArrayList arrayList2 = new ArrayList();
        getAllTypesFromHierarchy((JavaElement) iType, arrayList2);
        int size2 = arrayList2.size();
        while (i10 < size2) {
            IType iType3 = (IType) arrayList2.get(i10);
            addTypeRemoval(iType3, (SimpleDelta) this.changes.get(iType3));
            i10++;
        }
    }
}
