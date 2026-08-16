package android.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/util/AttributeSet.class
 */
public interface AttributeSet {
    int getAttributeCount();

    String getAttributeName(int i10);

    String getAttributeValue(int i10);

    String getAttributeValue(String str, String str2);

    String getPositionDescription();

    int getAttributeNameResource(int i10);

    int getAttributeListValue(String str, String str2, String[] strArr, int i10);

    boolean getAttributeBooleanValue(String str, String str2, boolean z10);

    int getAttributeResourceValue(String str, String str2, int i10);

    int getAttributeIntValue(String str, String str2, int i10);

    int getAttributeUnsignedIntValue(String str, String str2, int i10);

    float getAttributeFloatValue(String str, String str2, float f10);

    int getAttributeListValue(int i10, String[] strArr, int i11);

    boolean getAttributeBooleanValue(int i10, boolean z10);

    int getAttributeResourceValue(int i10, int i11);

    int getAttributeIntValue(int i10, int i11);

    int getAttributeUnsignedIntValue(int i10, int i11);

    float getAttributeFloatValue(int i10, float f10);

    String getIdAttribute();

    String getClassAttribute();

    int getIdAttributeResourceValue(int i10);

    int getStyleAttribute();
}
