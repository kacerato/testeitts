package org.openjdk.javax.lang.model.element;

import org.openjdk.javax.lang.model.UnknownEntityException;
import org.openjdk.javax.lang.model.element.ModuleElement;

public class UnknownDirectiveException extends UnknownEntityException {
    private static final long serialVersionUID = 269;
    private final transient ModuleElement.Directive directive;
    private final transient Object parameter;

    public UnknownDirectiveException(ModuleElement.Directive directive, Object obj) {
        super("Unknown directive: " + ((Object) directive));
        this.directive = directive;
        this.parameter = obj;
    }

    public Object getArgument() {
        return this.parameter;
    }

    public ModuleElement.Directive getUnknownDirective() {
        return this.directive;
    }
}
