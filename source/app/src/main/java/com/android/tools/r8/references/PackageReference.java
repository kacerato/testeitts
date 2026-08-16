package com.android.tools.r8.references;

import com.android.tools.r8.internal.C4932Bl;
import java.util.Objects;

public class PackageReference {

    private final String f56201a;

    public PackageReference(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Package name cannot be null.");
        }
        if (str.isEmpty() || C4932Bl.E(str)) {
            this.f56201a = str;
            return;
        }
        throw new IllegalArgumentException("Package name '" + str + "' is not valid.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PackageReference) {
            return this.f56201a.equals(((PackageReference) obj).f56201a);
        }
        return false;
    }

    public String getPackageBinaryName() {
        return this.f56201a.replace('.', '/');
    }

    public String getPackageName() {
        return this.f56201a;
    }

    public int hashCode() {
        return Objects.hash(this.f56201a);
    }
}
