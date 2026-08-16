.class public final Lcom/google/android/gms/measurement/internal/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/R3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/y3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/y3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/y3;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y3;->e:Lcom/google/android/gms/measurement/internal/R3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y3;->e:Lcom/google/android/gms/measurement/internal/R3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y3;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/y3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/w;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
