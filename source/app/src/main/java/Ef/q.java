package Ef;

import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.jvm.internal.p0;
import nf.EnumC14431q;
import nf.InterfaceC14422l0;
import of.EnumC14501a;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.SOURCE)
@of.d
@of.e(EnumC14501a.SOURCE)
@of.f(allowedTargets = {of.b.CLASS, of.b.FUNCTION, of.b.PROPERTY, of.b.CONSTRUCTOR, of.b.TYPEALIAS})
@Repeatable(a.class)
@InterfaceC14422l0(version = "1.2")
public @interface q {

    @Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR})
    @of.e(EnumC14501a.SOURCE)
    @of.f(allowedTargets = {of.b.CLASS, of.b.FUNCTION, of.b.PROPERTY, of.b.CONSTRUCTOR, of.b.TYPEALIAS})
    @p0
    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
        q[] value();
    }

    int errorCode() default -1;

    EnumC14431q level() default EnumC14431q.ERROR;

    String message() default "";

    String version();

    r versionKind() default r.LANGUAGE_VERSION;
}
