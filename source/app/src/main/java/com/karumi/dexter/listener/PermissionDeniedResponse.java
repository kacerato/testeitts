package com.karumi.dexter.listener;

import androidx.annotation.NonNull;

public final class PermissionDeniedResponse {
    private final boolean permanentlyDenied;
    private final PermissionRequest requestedPermission;

    public PermissionDeniedResponse(@NonNull PermissionRequest permissionRequest, boolean z10) {
        this.requestedPermission = permissionRequest;
        this.permanentlyDenied = z10;
    }

    public static PermissionDeniedResponse from(@NonNull String str, boolean z10) {
        return new PermissionDeniedResponse(new PermissionRequest(str), z10);
    }

    public String getPermissionName() {
        return this.requestedPermission.getName();
    }

    public PermissionRequest getRequestedPermission() {
        return this.requestedPermission;
    }

    public boolean isPermanentlyDenied() {
        return this.permanentlyDenied;
    }
}
