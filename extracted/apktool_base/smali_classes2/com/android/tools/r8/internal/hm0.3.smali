.class public final Lcom/android/tools/r8/internal/hm0;
.super Lcom/android/tools/r8/internal/lm0;
.source "SourceFile"


# instance fields
.field public final c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/lm0;-><init>()V

    iput-wide p1, p0, Lcom/android/tools/r8/internal/hm0;->c:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    sget-boolean v0, Lcom/android/tools/r8/internal/qh;->m:Z

    new-instance v0, Lcom/android/tools/r8/internal/ph;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ph;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->i()Lcom/android/tools/r8/internal/kt;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ph;

    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/sE;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ph;

    iget-wide v1, p0, Lcom/android/tools/r8/internal/hm0;->c:J

    iput-wide v1, v0, Lcom/android/tools/r8/internal/ph;->d:J

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/gK;->o:Z

    new-instance v1, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fK;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->Y1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-interface {p3, p1, v2}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    iput-object p1, v1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object p1, p2, Lcom/android/tools/r8/graph/u1;->L4:Lcom/android/tools/r8/graph/I1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/I1;->e:Lcom/android/tools/r8/graph/A2;

    iput-object p1, v1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    iput-object p1, v1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fK;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/android/tools/r8/internal/zE;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    return-object p2
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->Y1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/hm0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/hm0;

    iget-wide v3, p0, Lcom/android/tools/r8/internal/hm0;->c:J

    iget-wide v5, p1, Lcom/android/tools/r8/internal/hm0;->c:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/hm0;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public final i0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j0()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/hm0;->c:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/internal/hm0;->c:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleBoxedDoubleValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
