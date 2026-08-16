package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.core.CompletionContext;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.codeassist.complete.CompletionParser;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;

public class InternalCompletionContext extends CompletionContext {
    protected char[][] expectedTypesKeys;
    protected char[][] expectedTypesSignatures;
    protected InternalExtendedCompletionContext extendedContext;
    protected boolean isExtended;
    protected int javadoc;
    protected int tokenKind;
    protected int tokenLocation;
    protected int offset = -1;
    protected int tokenStart = -1;
    protected int tokenEnd = -1;
    protected char[] token = null;

    public ASTNode getCompletionNode() {
        if (!this.isExtended) {
            throw new UnsupportedOperationException("Operation only supported in extended context");
        }
        InternalExtendedCompletionContext internalExtendedCompletionContext = this.extendedContext;
        if (internalExtendedCompletionContext == null) {
            return null;
        }
        return internalExtendedCompletionContext.getCompletionNode();
    }

    public ASTNode getCompletionNodeParent() {
        if (!this.isExtended) {
            throw new UnsupportedOperationException("Operation only supported in extended context");
        }
        InternalExtendedCompletionContext internalExtendedCompletionContext = this.extendedContext;
        if (internalExtendedCompletionContext == null) {
            return null;
        }
        return internalExtendedCompletionContext.getCompletionNodeParent();
    }

    @Override
    public IJavaElement getEnclosingElement() {
        if (!this.isExtended) {
            throw new UnsupportedOperationException("Operation only supported in extended context");
        }
        InternalExtendedCompletionContext internalExtendedCompletionContext = this.extendedContext;
        if (internalExtendedCompletionContext == null) {
            return null;
        }
        return internalExtendedCompletionContext.getEnclosingElement();
    }

    @Override
    public char[][] getExpectedTypesKeys() {
        return this.expectedTypesKeys;
    }

    @Override
    public char[][] getExpectedTypesSignatures() {
        return this.expectedTypesSignatures;
    }

    @Override
    public int getOffset() {
        return this.offset;
    }

    @Override
    public char[] getToken() {
        return this.token;
    }

    @Override
    public int getTokenEnd() {
        return this.tokenEnd;
    }

    @Override
    public int getTokenKind() {
        return this.tokenKind;
    }

    @Override
    public int getTokenLocation() {
        return this.tokenLocation;
    }

    @Override
    public int getTokenStart() {
        return this.tokenStart;
    }

    @Override
    public IJavaElement[] getVisibleElements(String str) {
        if (!this.isExtended) {
            throw new UnsupportedOperationException("Operation only supported in extended context");
        }
        InternalExtendedCompletionContext internalExtendedCompletionContext = this.extendedContext;
        return internalExtendedCompletionContext == null ? new IJavaElement[0] : internalExtendedCompletionContext.getVisibleElements(str);
    }

    public ObjectVector getVisibleFields() {
        if (!this.isExtended) {
            throw new UnsupportedOperationException("Operation only supported in extended context");
        }
        InternalExtendedCompletionContext internalExtendedCompletionContext = this.extendedContext;
        if (internalExtendedCompletionContext == null) {
            return null;
        }
        return internalExtendedCompletionContext.getVisibleFields();
    }

    public ObjectVector getVisibleLocalVariables() {
        if (!this.isExtended) {
            throw new UnsupportedOperationException("Operation only supported in extended context");
        }
        InternalExtendedCompletionContext internalExtendedCompletionContext = this.extendedContext;
        if (internalExtendedCompletionContext == null) {
            return null;
        }
        return internalExtendedCompletionContext.getVisibleLocalVariables();
    }

    public ObjectVector getVisibleMethods() {
        if (!this.isExtended) {
            throw new UnsupportedOperationException("Operation only supported in extended context");
        }
        InternalExtendedCompletionContext internalExtendedCompletionContext = this.extendedContext;
        if (internalExtendedCompletionContext == null) {
            return null;
        }
        return internalExtendedCompletionContext.getVisibleMethods();
    }

    @Override
    public boolean isExtended() {
        return this.isExtended;
    }

    @Override
    public boolean isInJavadoc() {
        return this.javadoc != 0;
    }

    @Override
    public boolean isInJavadocFormalReference() {
        return (this.javadoc & 64) != 0;
    }

    @Override
    public boolean isInJavadocText() {
        return (this.javadoc & 4) != 0;
    }

    public void setExpectedTypesKeys(char[][] cArr) {
        this.expectedTypesKeys = cArr;
    }

    public void setExpectedTypesSignatures(char[][] cArr) {
        this.expectedTypesSignatures = cArr;
    }

    public void setExtended() {
        this.isExtended = true;
    }

    public void setExtendedData(ITypeRoot iTypeRoot, CompilationUnitDeclaration compilationUnitDeclaration, LookupEnvironment lookupEnvironment, Scope scope, ASTNode aSTNode, ASTNode aSTNode2, WorkingCopyOwner workingCopyOwner, CompletionParser completionParser) {
        this.isExtended = true;
        this.extendedContext = new InternalExtendedCompletionContext(this, iTypeRoot, compilationUnitDeclaration, lookupEnvironment, scope, aSTNode, aSTNode2, workingCopyOwner, completionParser);
    }

    public void setJavadoc(int i10) {
        this.javadoc = i10;
    }

    public void setOffset(int i10) {
        this.offset = i10;
    }

    public void setToken(char[] cArr) {
        this.token = cArr;
    }

    public void setTokenKind(int i10) {
        this.tokenKind = i10;
    }

    public void setTokenLocation(int i10) {
        this.tokenLocation = i10;
    }

    public void setTokenRange(int i10, int i11) {
        setTokenRange(i10, i11, -1);
    }

    public void setTokenRange(int i10, int i11, int i12) {
        this.tokenStart = i10;
        if (i12 > i11) {
            i11 = i12;
        }
        this.tokenEnd = i11;
        if (i11 == -1) {
            this.tokenEnd = 0;
        }
    }
}
