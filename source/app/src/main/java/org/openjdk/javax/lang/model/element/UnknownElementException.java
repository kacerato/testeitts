package org.openjdk.javax.lang.model.element;

import org.openjdk.javax.lang.model.UnknownEntityException;

public class UnknownElementException extends UnknownEntityException {
    private static final long serialVersionUID = 269;
    private transient Element element;
    private transient Object parameter;

    public UnknownElementException(Element element, Object obj) {
        super("Unknown element: " + ((Object) element));
        this.element = element;
        this.parameter = obj;
    }

    public Object getArgument() {
        return this.parameter;
    }

    public Element getUnknownElement() {
        return this.element;
    }
}
