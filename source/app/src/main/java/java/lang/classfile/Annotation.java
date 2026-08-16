package java.lang.classfile;

import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import java.util.List;
import jdk.internal.classfile.impl.AnnotationImpl;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.Util;

public interface Annotation {
    Utf8Entry className();

    List<AnnotationElement> elements();

    default ClassDesc classSymbol() {
        return Util.fieldTypeSymbol(className());
    }

    static Annotation of(Utf8Entry annotationClass, List<AnnotationElement> elements) {
        return new AnnotationImpl(annotationClass, elements);
    }

    static Annotation of(Utf8Entry annotationClass, AnnotationElement... elements) {
        return of(annotationClass, (List<AnnotationElement>) List.of(elements));
    }

    static Annotation of(ClassDesc annotationClass, List<AnnotationElement> elements) {
        return of(TemporaryConstantPool.INSTANCE.utf8Entry(annotationClass), elements);
    }

    static Annotation of(ClassDesc annotationClass, AnnotationElement... elements) {
        return of(TemporaryConstantPool.INSTANCE.utf8Entry(annotationClass), elements);
    }
}
