.class public final Lcom/google/android/gms/measurement/internal/F3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/I;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/R3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/F3;->b:Lcom/google/android/gms/measurement/internal/I;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/F3;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/F3;->d:Lcom/google/android/gms/measurement/internal/R3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/F3;->d:Lcom/google/android/gms/measurement/internal/R3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/F3;->b:Lcom/google/android/gms/measurement/internal/I;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/F3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->i(Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V

    return-void
.end method
