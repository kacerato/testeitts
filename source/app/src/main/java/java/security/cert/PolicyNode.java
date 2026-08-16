package java.security.cert;

import java.util.Iterator;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/PolicyNode.class
 */
public interface PolicyNode {
    PolicyNode getParent();

    Iterator<? extends PolicyNode> getChildren();

    int getDepth();

    String getValidPolicy();

    Set<? extends PolicyQualifierInfo> getPolicyQualifiers();

    Set<String> getExpectedPolicies();

    boolean isCritical();
}
