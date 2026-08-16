package nf;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@of.e(EnumC14501a.SOURCE)
@of.f(allowedTargets = {of.b.CLASS, of.b.ANNOTATION_CLASS, of.b.TYPE_PARAMETER, of.b.PROPERTY, of.b.FIELD, of.b.LOCAL_VARIABLE, of.b.VALUE_PARAMETER, of.b.CONSTRUCTOR, of.b.FUNCTION, of.b.PROPERTY_GETTER, of.b.PROPERTY_SETTER, of.b.TYPE, of.b.EXPRESSION, of.b.FILE, of.b.TYPEALIAS})
@Retention(RetentionPolicy.SOURCE)
public @interface InterfaceC14432q0 {
    String[] names();
}
