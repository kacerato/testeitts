package com.karumi.dexter;

final class PermissionRationaleToken implements PermissionToken {
    private final DexterInstance dexterInstance;
    private boolean isTokenResolved = false;

    public PermissionRationaleToken(DexterInstance dexterInstance) {
        this.dexterInstance = dexterInstance;
    }

    @Override
    public void cancelPermissionRequest() {
        if (this.isTokenResolved) {
            return;
        }
        this.dexterInstance.onCancelPermissionRequest();
        this.isTokenResolved = true;
    }

    @Override
    public void continuePermissionRequest() {
        if (this.isTokenResolved) {
            return;
        }
        this.dexterInstance.onContinuePermissionRequest();
        this.isTokenResolved = true;
    }
}
