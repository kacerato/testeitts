package JAVARuntime;

import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ShowIf.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ShowIf.class
  classes.dex
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Repeatable(List.class)
public @interface ShowIf {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ShowIf$List.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ShowIf$List.class
  classes.dex
 */
    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface List {
        ShowIf[] value();
    }

    String value();

    boolean isTrue() default true;

    String enumValue() default "";
}
