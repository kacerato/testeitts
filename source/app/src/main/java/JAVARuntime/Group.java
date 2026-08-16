package JAVARuntime;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Group.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Group.class
  classes.dex
 */
@Retention(RetentionPolicy.RUNTIME)
public @interface Group {
    String value();
}
