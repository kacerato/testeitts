.class public final Lcom/google/android/gms/internal/measurement/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/h6;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/W5;

.field public final b:Lcom/google/android/gms/internal/measurement/s6;

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/measurement/c5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/s6;Lcom/google/android/gms/internal/measurement/c5;Lcom/google/android/gms/internal/measurement/W5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a6;->b:Lcom/google/android/gms/internal/measurement/s6;

    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/n5;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/a6;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/a6;->d:Lcom/google/android/gms/internal/measurement/c5;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/W5;

    return-void
.end method

.method public static i(Lcom/google/android/gms/internal/measurement/s6;Lcom/google/android/gms/internal/measurement/c5;Lcom/google/android/gms/internal/measurement/W5;)Lcom/google/android/gms/internal/measurement/a6;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/a6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/a6;-><init>(Lcom/google/android/gms/internal/measurement/s6;Lcom/google/android/gms/internal/measurement/c5;Lcom/google/android/gms/internal/measurement/W5;)V

    return-object v0
.end method


# virtual methods
.method public final N1()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/W5;

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/q5;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->m()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/W5;->b()Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/V5;->D2()Lcom/google/android/gms/internal/measurement/W5;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t6;->h()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/a6;->c:Z

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/measurement/n5;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/g5;->g()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/a6;->c:Z

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/measurement/n5;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/p6;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final c(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/E6;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/n5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/g5;->c()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/f5;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/f5;->P1()Lcom/google/android/gms/internal/measurement/D6;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/D6;->zzi:Lcom/google/android/gms/internal/measurement/D6;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/f5;->Q1()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/f5;->R1()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/C5;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/f5;->N1()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/measurement/C5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/C5;->b()Lcom/google/android/gms/internal/measurement/E5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/F5;->c()Lcom/google/android/gms/internal/measurement/S4;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/E6;->y(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/f5;->N1()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/E6;->y(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/q5;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/t6;->f(Lcom/google/android/gms/internal/measurement/E6;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->b:Lcom/google/android/gms/internal/measurement/s6;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/j6;->d(Lcom/google/android/gms/internal/measurement/s6;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/a6;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->d:Lcom/google/android/gms/internal/measurement/c5;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/j6;->c(Lcom/google/android/gms/internal/measurement/c5;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/n5;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/g5;->e()Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->b:Lcom/google/android/gms/internal/measurement/s6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/s6;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->d:Lcom/google/android/gms/internal/measurement/c5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/c5;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/G4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t6;->a()Lcom/google/android/gms/internal/measurement/t6;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t6;->b()Lcom/google/android/gms/internal/measurement/t6;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/n5;

    const/4 p1, 0x0

    throw p1
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/measurement/q5;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/a6;->c:Z

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/measurement/n5;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    check-cast p2, Lcom/google/android/gms/internal/measurement/n5;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/g5;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
