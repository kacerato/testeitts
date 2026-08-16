package org.apache.http.params;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/apache/http/params/HttpParams.class
 */
@Deprecated
public interface HttpParams {
    Object getParameter(String str);

    HttpParams setParameter(String str, Object obj);

    HttpParams copy();

    boolean removeParameter(String str);

    long getLongParameter(String str, long j10);

    HttpParams setLongParameter(String str, long j10);

    int getIntParameter(String str, int i10);

    HttpParams setIntParameter(String str, int i10);

    double getDoubleParameter(String str, double d10);

    HttpParams setDoubleParameter(String str, double d10);

    boolean getBooleanParameter(String str, boolean z10);

    HttpParams setBooleanParameter(String str, boolean z10);

    boolean isParameterTrue(String str);

    boolean isParameterFalse(String str);
}
