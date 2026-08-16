package java.security.cert;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.util.Date;
import java.util.List;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/PKIXParameters.class
 */
public class PKIXParameters implements CertPathParameters {
    public PKIXParameters(Set<TrustAnchor> trustAnchors) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public PKIXParameters(KeyStore keystore) throws KeyStoreException, InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public Set<TrustAnchor> getTrustAnchors() {
        throw new RuntimeException("Stub!");
    }

    public void setTrustAnchors(Set<TrustAnchor> trustAnchors) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public Set<String> getInitialPolicies() {
        throw new RuntimeException("Stub!");
    }

    public void setInitialPolicies(Set<String> initialPolicies) {
        throw new RuntimeException("Stub!");
    }

    public void setCertStores(List<CertStore> stores) {
        throw new RuntimeException("Stub!");
    }

    public void addCertStore(CertStore store) {
        throw new RuntimeException("Stub!");
    }

    public List<CertStore> getCertStores() {
        throw new RuntimeException("Stub!");
    }

    public void setRevocationEnabled(boolean val) {
        throw new RuntimeException("Stub!");
    }

    public boolean isRevocationEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setExplicitPolicyRequired(boolean val) {
        throw new RuntimeException("Stub!");
    }

    public boolean isExplicitPolicyRequired() {
        throw new RuntimeException("Stub!");
    }

    public void setPolicyMappingInhibited(boolean val) {
        throw new RuntimeException("Stub!");
    }

    public boolean isPolicyMappingInhibited() {
        throw new RuntimeException("Stub!");
    }

    public void setAnyPolicyInhibited(boolean val) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAnyPolicyInhibited() {
        throw new RuntimeException("Stub!");
    }

    public void setPolicyQualifiersRejected(boolean qualifiersRejected) {
        throw new RuntimeException("Stub!");
    }

    public boolean getPolicyQualifiersRejected() {
        throw new RuntimeException("Stub!");
    }

    public Date getDate() {
        throw new RuntimeException("Stub!");
    }

    public void setDate(Date date) {
        throw new RuntimeException("Stub!");
    }

    public void setCertPathCheckers(List<PKIXCertPathChecker> checkers) {
        throw new RuntimeException("Stub!");
    }

    public List<PKIXCertPathChecker> getCertPathCheckers() {
        throw new RuntimeException("Stub!");
    }

    public void addCertPathChecker(PKIXCertPathChecker checker) {
        throw new RuntimeException("Stub!");
    }

    public String getSigProvider() {
        throw new RuntimeException("Stub!");
    }

    public void setSigProvider(String sigProvider) {
        throw new RuntimeException("Stub!");
    }

    public CertSelector getTargetCertConstraints() {
        throw new RuntimeException("Stub!");
    }

    public void setTargetCertConstraints(CertSelector selector) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
