package org.eclipse.jdt.core.jdom;

import java.util.Enumeration;
import org.eclipse.jdt.core.IJavaElement;

public interface IDOMNode extends Cloneable {
    public static final int COMPILATION_UNIT = 1;
    public static final int FIELD = 5;
    public static final int IMPORT = 3;
    public static final int INITIALIZER = 7;
    public static final int METHOD = 6;
    public static final int PACKAGE = 2;
    public static final int TYPE = 4;

    void addChild(IDOMNode iDOMNode) throws DOMException, IllegalArgumentException;

    boolean canHaveChildren();

    Object clone();

    char[] getCharacters();

    IDOMNode getChild(String str);

    Enumeration getChildren();

    String getContents();

    IDOMNode getFirstChild();

    IJavaElement getJavaElement(IJavaElement iJavaElement) throws IllegalArgumentException;

    String getName();

    IDOMNode getNextNode();

    int getNodeType();

    IDOMNode getParent();

    IDOMNode getPreviousNode();

    void insertSibling(IDOMNode iDOMNode) throws DOMException, IllegalArgumentException;

    boolean isAllowableChild(IDOMNode iDOMNode);

    boolean isSignatureEqual(IDOMNode iDOMNode);

    void remove();

    void setName(String str);
}
