package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:EqualsComparator.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:EqualsComparator.class
  classes.dex
 */
@ClassCategory(cat = {"EngineOverride"})
public interface EqualsComparator {
    boolean equals(Object obj);

    boolean pointerEquals(Object obj);

    boolean notEquals(Object obj);
}
