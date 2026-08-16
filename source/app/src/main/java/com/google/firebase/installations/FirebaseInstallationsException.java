package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.firebase.FirebaseException;

public class FirebaseInstallationsException extends FirebaseException {

    @NonNull
    private final a status;

    public enum a {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public FirebaseInstallationsException(@NonNull a aVar) {
        this.status = aVar;
    }

    @NonNull
    public a getStatus() {
        return this.status;
    }

    public FirebaseInstallationsException(@NonNull String str, @NonNull a aVar) {
        super(str);
        this.status = aVar;
    }

    public FirebaseInstallationsException(@NonNull String str, @NonNull a aVar, @NonNull Throwable th2) {
        super(str, th2);
        this.status = aVar;
    }
}
