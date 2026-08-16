package JAVARuntime;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:MethodArgs.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:MethodArgs.class
  classes.dex
 */
@Retention(RetentionPolicy.SOURCE)
public @interface MethodArgs {
    String[] value();
}
