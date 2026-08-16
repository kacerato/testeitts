package java.nio.file.attribute;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/AclEntry.class
 */
public final class AclEntry {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/AclEntry$Builder.class
 */
    public static final class Builder {
        Builder() {
            throw new RuntimeException("Stub!");
        }

        public AclEntry build() {
            throw new RuntimeException("Stub!");
        }

        public Builder setType(AclEntryType type) {
            throw new RuntimeException("Stub!");
        }

        public Builder setPrincipal(UserPrincipal who) {
            throw new RuntimeException("Stub!");
        }

        public Builder setPermissions(Set<AclEntryPermission> perms) {
            throw new RuntimeException("Stub!");
        }

        public Builder setPermissions(AclEntryPermission... perms) {
            throw new RuntimeException("Stub!");
        }

        public Builder setFlags(Set<AclEntryFlag> flags) {
            throw new RuntimeException("Stub!");
        }

        public Builder setFlags(AclEntryFlag... flags) {
            throw new RuntimeException("Stub!");
        }
    }

    AclEntry() {
        throw new RuntimeException("Stub!");
    }

    public static Builder newBuilder() {
        throw new RuntimeException("Stub!");
    }

    public static Builder newBuilder(AclEntry entry) {
        throw new RuntimeException("Stub!");
    }

    public AclEntryType type() {
        throw new RuntimeException("Stub!");
    }

    public UserPrincipal principal() {
        throw new RuntimeException("Stub!");
    }

    public Set<AclEntryPermission> permissions() {
        throw new RuntimeException("Stub!");
    }

    public Set<AclEntryFlag> flags() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object ob2) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
