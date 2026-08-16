.class public final Lcom/android/tools/r8/graph/b3;
.super Lcom/android/tools/r8/graph/a3;
.source "SourceFile"


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/a3;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/b3;->d:I

    return-void
.end method


# virtual methods
.method public final B0()Lcom/android/tools/r8/graph/b3;
    .locals 0

    return-object p0
.end method

.method public final F0()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/b3;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->v:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/tools/r8/graph/b3;->d:I

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/G1;->b(I)Lcom/android/tools/r8/internal/Lm0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 3

    .line 3
    sget-object p2, Lcom/android/tools/r8/graph/V2;->f:Lcom/android/tools/r8/graph/V2;

    iget v0, p0, Lcom/android/tools/r8/graph/b3;->d:I

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-static {p2, v0, v1, v2, p1}, Lcom/android/tools/r8/graph/a3;->a(Lcom/android/tools/r8/graph/V2;JILcom/android/tools/r8/dex/y;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/b3;->d:I

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->B0()Lcom/android/tools/r8/graph/b3;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/graph/b3;->d:I

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/b3;->d:I

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/b3;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/graph/b3;->d:I

    check-cast p1, Lcom/android/tools/r8/graph/b3;

    iget p1, p1, Lcom/android/tools/r8/graph/b3;->d:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/b3;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/graph/V2;->v:Lcom/android/tools/r8/graph/V2;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/b3;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/graph/b3;->d:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
