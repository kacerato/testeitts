.class public final synthetic Lcom/google/android/gms/internal/auth/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/o0;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/s0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/s0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/q0;->a:Lcom/google/android/gms/internal/auth/s0;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/q0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final N1()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/q0;->a:Lcom/google/android/gms/internal/auth/s0;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/q0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/s0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
