.class public final Lcom/android/tools/r8/internal/bY;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final k:Lcom/android/tools/r8/graph/M2;

.field public final l:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/bY;->k:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/bY;->l:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/internal/bY;->k:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/bY;->k:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 10
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p2, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EW$a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->a:Lcom/android/tools/r8/ir/optimize/B;

    return-object p1

    .line 17
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 23
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
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 5
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 6
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 7
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/Iq;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Iq;-><init>(I)V

    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/bY;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v2, 0xd4

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/bY;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bY;->l:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->E:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->q0()Lcom/android/tools/r8/internal/bY;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/bY;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/bY;->k:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/bY;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "MoveException has no register arguments."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final q0()Lcom/android/tools/r8/internal/bY;
    .locals 0

    return-object p0
.end method

.method public final q2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method
