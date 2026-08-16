.class public interface abstract Lcom/google/android/gms/auth/api/identity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/m<",
        "Lcom/google/android/gms/auth/api/identity/p;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract D(Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;)Lv1/k;
    .param p1    # Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/identity/b;
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation
.end method

.method public abstract q(Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;)Lv1/k;
    .param p1    # Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract s(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)Lv1/k;
    .param p1    # Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;",
            ")",
            "Lv1/k<",
            "Lcom/google/android/gms/auth/api/identity/b;",
            ">;"
        }
    .end annotation
.end method
