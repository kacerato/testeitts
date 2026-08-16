.class public Lcom/android/tools/r8/internal/wa;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Eb;


# instance fields
.field public final c:Lcom/android/tools/r8/graph/M2;

.field public d:Lcom/android/tools/r8/internal/ka;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/wa;->c:Lcom/android/tools/r8/graph/M2;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/wa;->d:Lcom/android/tools/r8/internal/ka;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/wa;->c:Lcom/android/tools/r8/graph/M2;

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/internal/wa;->d:Lcom/android/tools/r8/internal/ka;

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0xbb

    return v0
.end method

.method public final U()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 8
    iget-object p3, p0, Lcom/android/tools/r8/internal/wa;->c:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/internal/wa;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/wa;->d:Lcom/android/tools/r8/internal/ka;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/wa;->d:Lcom/android/tools/r8/internal/ka;

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/wa;->d:Lcom/android/tools/r8/internal/ka;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/wa;->c:Lcom/android/tools/r8/graph/M2;

    sget v1, Lcom/android/tools/r8/internal/jy;->a:I

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/ev0;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/internal/ev0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    .line 6
    invoke-virtual {p1, p3, v1}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/W9;
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/wa;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wa;->d:Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/wa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->d(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wa;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p4, p5, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 13
    invoke-virtual {p7, p1}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xbb

    invoke-virtual {p9, p2, p1}, Lcom/android/tools/r8/internal/EX;->c(ILjava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 14
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/wa;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 2

    .line 16
    iget-object p3, p0, Lcom/android/tools/r8/internal/wa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 18
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object p3, p0, Lcom/android/tools/r8/internal/wa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-static {p3, v0, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    const/4 v1, 0x2

    .line 20
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(IILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/tZ;

    invoke-direct {v0, p3, p2}, Lcom/android/tools/r8/internal/tZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    .line 22
    iget-object p2, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/on0;->g()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/wa;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wa;->c:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final p()Lcom/android/tools/r8/internal/wa;
    .locals 0

    return-object p0
.end method

.method public final x()Lcom/android/tools/r8/internal/Eb;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
