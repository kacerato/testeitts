package java.nio.file.attribute;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/UserPrincipalLookupService.class
 */
public abstract class UserPrincipalLookupService {
    public abstract UserPrincipal lookupPrincipalByName(String str) throws IOException;

    public abstract GroupPrincipal lookupPrincipalByGroupName(String str) throws IOException;

    protected UserPrincipalLookupService() {
        throw new RuntimeException("Stub!");
    }
}
