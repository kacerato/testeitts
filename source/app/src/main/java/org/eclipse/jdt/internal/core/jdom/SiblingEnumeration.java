package org.eclipse.jdt.internal.core.jdom;

import java.util.Enumeration;
import org.eclipse.jdt.core.jdom.IDOMNode;

class SiblingEnumeration implements Enumeration {
    protected IDOMNode fCurrentElement;

    public SiblingEnumeration(IDOMNode iDOMNode) {
        this.fCurrentElement = iDOMNode;
    }

    @Override
    public boolean hasMoreElements() {
        return this.fCurrentElement != null;
    }

    @Override
    public Object nextElement() {
        IDOMNode iDOMNode = this.fCurrentElement;
        if (iDOMNode != null) {
            this.fCurrentElement = iDOMNode.getNextNode();
        }
        return iDOMNode;
    }
}
