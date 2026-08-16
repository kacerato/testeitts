.class public final synthetic Lcom/google/android/gms/internal/auth/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/o0;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/k0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/i0;->a:Lcom/google/android/gms/internal/auth/k0;

    return-void
.end method


# virtual methods
.method public final N1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/i0;->a:Lcom/google/android/gms/internal/auth/k0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/k0;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
