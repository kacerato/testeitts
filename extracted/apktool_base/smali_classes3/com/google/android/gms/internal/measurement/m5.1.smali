.class public Lcom/google/android/gms/internal/measurement/m5;
.super Lcom/google/android/gms/internal/measurement/B4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/q5<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/m5<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/B4<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/internal/measurement/q5;

.field public c:Lcom/google/android/gms/internal/measurement/q5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/q5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/B4;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m5;->b:Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/q5;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/q5;->m()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/e6;->a()Lcom/google/android/gms/internal/measurement/e6;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/e6;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/h6;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic D2()Lcom/google/android/gms/internal/measurement/W5;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->p()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->o()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->B(Lcom/google/android/gms/internal/measurement/q5;Z)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/internal/measurement/W5;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/measurement/B4;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->o()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i([BII)Lcom/google/android/gms/internal/measurement/B4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmq;
        }
    .end annotation

    sget p2, Lcom/google/android/gms/internal/measurement/b5;->e:I

    sget p2, Lcom/google/android/gms/internal/measurement/e6;->d:I

    const/4 p2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/measurement/b5;->d:Lcom/google/android/gms/internal/measurement/b5;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/m5;->s([BIILcom/google/android/gms/internal/measurement/b5;)Lcom/google/android/gms/internal/measurement/m5;

    return-object p0
.end method

.method public final bridge synthetic j([BIILcom/google/android/gms/internal/measurement/b5;)Lcom/google/android/gms/internal/measurement/B4;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmq;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/m5;->s([BIILcom/google/android/gms/internal/measurement/b5;)Lcom/google/android/gms/internal/measurement/m5;

    return-object p0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->n()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->b:Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->m()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/m5;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    return-void
.end method

.method public final o()Lcom/google/android/gms/internal/measurement/m5;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->b:Lcom/google/android/gms/internal/measurement/q5;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/q5;->D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/m5;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->p()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    return-object v0
.end method

.method public p()Lcom/google/android/gms/internal/measurement/q5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->o()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/measurement/q5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->p()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzog;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzog;-><init>(Lcom/google/android/gms/internal/measurement/W5;)V

    throw v1
.end method

.method public final r(Lcom/google/android/gms/internal/measurement/q5;)Lcom/google/android/gms/internal/measurement/m5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->b:Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/q5;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->n()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/m5;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final s([BIILcom/google/android/gms/internal/measurement/b5;)Lcom/google/android/gms/internal/measurement/m5;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmq;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/q5;->k()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->n()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/e6;->a()Lcom/google/android/gms/internal/measurement/e6;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/e6;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    new-instance v6, Lcom/google/android/gms/internal/measurement/G4;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/G4;-><init>(Lcom/google/android/gms/internal/measurement/b5;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/h6;->g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/G4;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzmq;

    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    throw p1
.end method
