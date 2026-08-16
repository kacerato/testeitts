package org.openjdk.javax.lang.model.util;

import java.util.List;
import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ModuleElement;

@SupportedSourceVersion(SourceVersion.RELEASE_9)
public class ElementScanner9<R, P> extends ElementScanner8<R, P> {
    public ElementScanner9() {
        super(null);
    }

    @Override
    public R visitModule(ModuleElement moduleElement, P p10) {
        return scan(moduleElement.getEnclosedElements(), (List<? extends Element>) p10);
    }

    public ElementScanner9(R r10) {
        super(r10);
    }
}
