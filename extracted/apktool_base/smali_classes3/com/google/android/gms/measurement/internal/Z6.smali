.class public final Lcom/google/android/gms/measurement/internal/Z6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c7;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/Z6;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object p1

    invoke-interface {p1}, LT0/g;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/Z6;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/c7;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/Z6;-><init>(Lcom/google/android/gms/measurement/internal/c7;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/c7;[B)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/m7;->l0()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/Z6;-><init>(Lcom/google/android/gms/measurement/internal/c7;Ljava/lang/String;)V

    return-void
.end method
