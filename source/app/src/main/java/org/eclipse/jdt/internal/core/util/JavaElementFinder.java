package org.eclipse.jdt.internal.core.util;

import java.util.ArrayList;
import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.JavaProject;

public class JavaElementFinder extends BindingKeyParser {
    public IJavaElement element;
    public JavaModelException exception;
    private WorkingCopyOwner owner;
    private JavaProject project;
    private ArrayList types;

    public JavaElementFinder(String str, JavaProject javaProject, WorkingCopyOwner workingCopyOwner) {
        super(str);
        this.types = new ArrayList();
        this.project = javaProject;
        this.owner = workingCopyOwner;
    }

    @Override
    public void consumeAnnotation() {
        int size;
        if ((this.element instanceof IAnnotatable) && (size = this.types.size()) != 0) {
            this.element = ((IAnnotatable) this.element).getAnnotation(((JavaElementFinder) this.types.get(size - 1)).element.getElementName());
        }
    }

    @Override
    public void consumeField(char[] cArr) {
        IJavaElement iJavaElement = this.element;
        if (iJavaElement instanceof IType) {
            this.element = ((IType) iJavaElement).getField(new String(cArr));
        }
    }

    @Override
    public void consumeFullyQualifiedName(char[] cArr) {
        try {
            this.element = this.project.findType(new String(CharOperation.replaceOnCopy(cArr, '/', '.')), this.owner);
        } catch (JavaModelException e10) {
            this.exception = e10;
        }
    }

    @Override
    public void consumeLocalType(char[] cArr) {
        IJavaElement iJavaElement = this.element;
        if (iJavaElement == null) {
            return;
        }
        if (iJavaElement instanceof BinaryType) {
            int lastIndexOf = CharOperation.lastIndexOf('/', cArr) + 1;
            char[] subarray = CharOperation.subarray(cArr, lastIndexOf, CharOperation.indexOf(';', cArr, lastIndexOf));
            this.element = ((IPackageFragment) this.element.getAncestor(4)).getClassFile(new String(subarray) + ".class");
            return;
        }
        int indexOf = CharOperation.indexOf('$', cArr) + 1;
        int indexOf2 = CharOperation.indexOf('$', cArr, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = CharOperation.indexOf(';', cArr, indexOf);
        }
        try {
            this.element = ((ITypeRoot) this.element.getOpenable()).getElementAt(Integer.parseInt(new String(CharOperation.subarray(cArr, indexOf, indexOf2))));
        } catch (JavaModelException e10) {
            this.exception = e10;
        }
    }

    @Override
    public void consumeMemberType(char[] cArr) {
        IJavaElement iJavaElement = this.element;
        if (iJavaElement instanceof IType) {
            this.element = ((IType) iJavaElement).getType(new String(cArr));
        }
    }

    @Override
    public void consumeMethod(char[] cArr, char[] cArr2) {
        if (this.element instanceof IType) {
            String[] parameterTypes = Signature.getParameterTypes(new String(cArr2));
            IType iType = (IType) this.element;
            IMethod[] findMethods = iType.findMethods(iType.getMethod(new String(cArr), parameterTypes));
            if (findMethods.length > 0) {
                this.element = findMethods[0];
            }
        }
    }

    @Override
    public void consumeModule(char[] cArr) {
        try {
            this.element = this.project.findModule(new String(cArr), (WorkingCopyOwner) null);
        } catch (JavaModelException e10) {
            this.exception = e10;
        }
    }

    @Override
    public void consumePackage(char[] cArr) {
        try {
            this.element = this.project.findPackageFragment(new String(CharOperation.replaceOnCopy(cArr, '/', '.')));
        } catch (JavaModelException e10) {
            this.exception = e10;
        }
    }

    @Override
    public void consumeParser(BindingKeyParser bindingKeyParser) {
        this.types.add(bindingKeyParser);
    }

    @Override
    public void consumeSecondaryType(char[] cArr) {
        IJavaElement iJavaElement = this.element;
        if (iJavaElement == null) {
            return;
        }
        IOpenable openable = iJavaElement.getOpenable();
        if (openable instanceof ICompilationUnit) {
            this.element = ((ICompilationUnit) openable).getType(new String(cArr));
        }
    }

    @Override
    public void consumeTypeVariable(char[] cArr, char[] cArr2) {
        IJavaElement iJavaElement = this.element;
        if (iJavaElement == null) {
            return;
        }
        int elementType = iJavaElement.getElementType();
        if (elementType == 7) {
            this.element = ((IType) this.element).getTypeParameter(new String(cArr2));
        } else {
            if (elementType != 9) {
                return;
            }
            this.element = ((IMethod) this.element).getTypeParameter(new String(cArr2));
        }
    }

    @Override
    public BindingKeyParser newParser() {
        return new JavaElementFinder(this, this.project, this.owner);
    }

    private JavaElementFinder(BindingKeyParser bindingKeyParser, JavaProject javaProject, WorkingCopyOwner workingCopyOwner) {
        super(bindingKeyParser);
        this.types = new ArrayList();
        this.project = javaProject;
        this.owner = workingCopyOwner;
    }
}
