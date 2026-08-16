package javax.net.ssl;

import java.security.AlgorithmConstraints;
import java.util.Collection;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLParameters.class
 */
public class SSLParameters {
    public SSLParameters() {
        throw new RuntimeException("Stub!");
    }

    public SSLParameters(String[] cipherSuites) {
        throw new RuntimeException("Stub!");
    }

    public SSLParameters(String[] cipherSuites, String[] protocols) {
        throw new RuntimeException("Stub!");
    }

    public String[] getCipherSuites() {
        throw new RuntimeException("Stub!");
    }

    public void setCipherSuites(String[] cipherSuites) {
        throw new RuntimeException("Stub!");
    }

    public String[] getProtocols() {
        throw new RuntimeException("Stub!");
    }

    public void setProtocols(String[] protocols) {
        throw new RuntimeException("Stub!");
    }

    public boolean getWantClientAuth() {
        throw new RuntimeException("Stub!");
    }

    public void setWantClientAuth(boolean wantClientAuth) {
        throw new RuntimeException("Stub!");
    }

    public boolean getNeedClientAuth() {
        throw new RuntimeException("Stub!");
    }

    public void setNeedClientAuth(boolean needClientAuth) {
        throw new RuntimeException("Stub!");
    }

    public AlgorithmConstraints getAlgorithmConstraints() {
        throw new RuntimeException("Stub!");
    }

    public void setAlgorithmConstraints(AlgorithmConstraints constraints) {
        throw new RuntimeException("Stub!");
    }

    public String getEndpointIdentificationAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public void setEndpointIdentificationAlgorithm(String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public final void setServerNames(List<SNIServerName> serverNames) {
        throw new RuntimeException("Stub!");
    }

    public final List<SNIServerName> getServerNames() {
        throw new RuntimeException("Stub!");
    }

    public final void setSNIMatchers(Collection<SNIMatcher> matchers) {
        throw new RuntimeException("Stub!");
    }

    public final Collection<SNIMatcher> getSNIMatchers() {
        throw new RuntimeException("Stub!");
    }

    public final void setUseCipherSuitesOrder(boolean honorOrder) {
        throw new RuntimeException("Stub!");
    }

    public final boolean getUseCipherSuitesOrder() {
        throw new RuntimeException("Stub!");
    }
}
