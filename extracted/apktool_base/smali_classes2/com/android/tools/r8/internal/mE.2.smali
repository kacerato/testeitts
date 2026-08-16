.class public Lcom/android/tools/r8/internal/mE;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# instance fields
.field public final k:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final Y()Lcom/android/tools/r8/internal/mE;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 23
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 5
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 8
    iget v3, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 9
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v4, v1, v3}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 10
    new-instance v3, Lcom/android/tools/r8/internal/Mp;

    iget-object v4, p0, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v3, v0, v1, v4}, Lcom/android/tools/r8/internal/Mp;-><init>(IILcom/android/tools/r8/graph/M2;)V

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v1, Lcom/android/tools/r8/internal/C2;->E:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->m:Lcom/android/tools/r8/internal/Fn;

    instance-of v1, v0, Lcom/android/tools/r8/internal/Gn;

    if-eqz v1, :cond_1

    .line 14
    check-cast v0, Lcom/android/tools/r8/internal/Gn;

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Gn;->c(Lcom/android/tools/r8/internal/Kn;)I

    move-result v1

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Gn;->b(Lcom/android/tools/r8/internal/Kn;)I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 17
    iget-byte v4, v3, Lcom/android/tools/r8/internal/bp;->f:B

    if-ne v1, v4, :cond_1

    iget-byte v1, v3, Lcom/android/tools/r8/internal/bp;->g:B

    if-ne v0, v1, :cond_1

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/kr;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kr;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/tools/r8/internal/Np;

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object v3, v1, v0

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;[Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p1, p0, v3}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xc1

    .line 33
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/V9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/V9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/mE;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Y()Lcom/android/tools/r8/internal/mE;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public final q2()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
