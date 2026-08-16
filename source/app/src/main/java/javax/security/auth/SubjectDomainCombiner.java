package javax.security.auth;

import java.security.DomainCombiner;
import java.security.ProtectionDomain;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/security/auth/SubjectDomainCombiner.class
 */
public class SubjectDomainCombiner implements DomainCombiner {
    public SubjectDomainCombiner(Subject subject) {
        throw new RuntimeException("Stub!");
    }

    public Subject getSubject() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ProtectionDomain[] combine(ProtectionDomain[] currentDomains, ProtectionDomain[] assignedDomains) {
        throw new RuntimeException("Stub!");
    }
}
