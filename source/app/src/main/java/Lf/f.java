package Lf;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import nf.InterfaceC14422l0;
import nf.InterfaceC14441w;
import of.EnumC14501a;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR})
@InterfaceC14441w
@Retention(RetentionPolicy.CLASS)
@of.e(EnumC14501a.BINARY)
@of.f(allowedTargets = {of.b.FUNCTION, of.b.CONSTRUCTOR, of.b.PROPERTY_GETTER, of.b.PROPERTY_SETTER, of.b.CLASS})
@Documented
@InterfaceC14422l0(version = "2.2")
@of.c
public @interface f {
    String jvmName() default "";
}
