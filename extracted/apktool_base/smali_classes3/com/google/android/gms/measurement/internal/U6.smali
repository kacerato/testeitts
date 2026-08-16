.class public final Lcom/google/android/gms/measurement/internal/U6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/c7;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c7;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/U6;->b:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/U6;->c:Lcom/google/android/gms/measurement/internal/c7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/U6;->b:Lcom/google/android/gms/measurement/internal/o7;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/U6;->c:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o7;->t:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-static {v1, v4}, Lcom/google/android/gms/measurement/internal/Z3;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I2;->p0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Analytics storage consent denied. Returning null app instance id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
