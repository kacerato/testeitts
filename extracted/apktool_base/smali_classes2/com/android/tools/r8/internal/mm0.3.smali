.class public final Lcom/android/tools/r8/internal/mm0;
.super Lcom/android/tools/r8/internal/lm0;
.source "SourceFile"


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/lm0;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/mm0;->c:I

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

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

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

    iget v1, p0, Lcom/android/tools/r8/internal/mm0;->c:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/tools/r8/internal/ph;->d:J

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/gK;->o:Z

    new-instance v1, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fK;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->c2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-interface {p4}, Lcom/android/tools/r8/internal/DV;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-interface {p3, p1, v2}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    iput-object p1, v1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object p1, p2, Lcom/android/tools/r8/graph/u1;->I4:Lcom/android/tools/r8/graph/p2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/p2;->d:Lcom/android/tools/r8/graph/A2;

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

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->c2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/mm0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/mm0;

    iget v1, p0, Lcom/android/tools/r8/internal/mm0;->c:I

    iget p1, p1, Lcom/android/tools/r8/internal/mm0;->c:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/mm0;->c:I

    return v0
.end method

.method public final i0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j0()J
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/mm0;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/mm0;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingleBoxedShortValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
