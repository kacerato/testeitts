.class public final Lcom/android/tools/r8/internal/rc0;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final k:[Lcom/android/tools/r8/graph/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p3, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean p2, Lcom/android/tools/r8/internal/rc0;->l:Z

    if-nez p2, :cond_1

    array-length p2, p1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/rc0;->k:[Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final D0()Lcom/android/tools/r8/internal/rc0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 10
    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 29
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

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

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 18
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 20
    iget v3, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 21
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 22
    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 23
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 25
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 26
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 27
    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 28
    new-instance v2, Lcom/android/tools/r8/internal/Ar;

    iget-object v3, p0, Lcom/android/tools/r8/internal/rc0;->k:[Lcom/android/tools/r8/graph/l1;

    invoke-direct {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/Ar;-><init>(I[I[Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p1, p0, v2}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/rc0;->k:[Lcom/android/tools/r8/graph/l1;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/NS;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/NS;-><init>([Lcom/android/tools/r8/graph/l1;)V

    .line 7
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xdf

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/Wa;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rc0;->k:[Lcom/android/tools/r8/graph/l1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Wa;-><init>([Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

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

    instance-of v0, p1, Lcom/android/tools/r8/internal/rc0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->D0()Lcom/android/tools/r8/internal/rc0;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/rc0;->k:[Lcom/android/tools/r8/graph/l1;

    iget-object v0, p0, Lcom/android/tools/r8/internal/rc0;->k:[Lcom/android/tools/r8/graph/l1;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method public final q2()I
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x46

    return v0
.end method
