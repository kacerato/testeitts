.class public interface abstract Lcom/google/android/gms/auth/api/identity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/m<",
        "Lcom/google/android/gms/auth/api/identity/z;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract A(Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;)Lv1/k;
    .param p1    # Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;",
            ")",
            "Lv1/k<",
            "Lcom/google/android/gms/auth/api/identity/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract n(Lcom/google/android/gms/auth/api/identity/k;)Lv1/k;
    .param p1    # Lcom/google/android/gms/auth/api/identity/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/k;",
            ")",
            "Lv1/k<",
            "Lcom/google/android/gms/auth/api/identity/l;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
