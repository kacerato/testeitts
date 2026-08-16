.class public final Lcom/google/android/gms/measurement/internal/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/t2;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/p3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/g4;Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/f4;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final N1()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f4;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->z()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
