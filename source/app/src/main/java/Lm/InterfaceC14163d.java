package lm;

import Lm.A;
import Lm.x;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@x(qualifier = InterfaceC14160a.class)
@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
public @interface InterfaceC14163d {
    @A("value")
    String[] methods();

    String[] value();
}
