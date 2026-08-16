.class public final Lcom/android/tools/r8/internal/ta;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Eb;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/ta;->c:Lcom/android/tools/r8/graph/M2;

    iput p1, p0, Lcom/android/tools/r8/internal/ta;->d:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Qt1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Qt1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Rt1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Rt1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0xc5

    return v0
.end method

.method public final U()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final V()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ta;->d:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/android/tools/r8/internal/ta;

    new-instance p3, Lcom/android/tools/r8/internal/Pt1;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/Pt1;-><init>()V

    invoke-virtual {p2, p0, p1, p3}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 3

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/ta;->d:I

    if-ge v1, v2, :cond_0

    .line 30
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, p3, v2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/ta;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/W9;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/ta;

    iget v1, p0, Lcom/android/tools/r8/internal/ta;->d:I

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/ta;-><init>(ILcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/ta;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->f(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/ta;->c:Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {p4, p5, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 4
    invoke-virtual {p7, p1}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/android/tools/r8/internal/ta;->d:I

    invoke-virtual {p9, p2, p1}, Lcom/android/tools/r8/internal/EX;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ta;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 8

    .line 11
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/ta;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget p3, p0, Lcom/android/tools/r8/internal/ta;->d:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-array v0, p3, [I

    add-int/lit8 v1, p3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object v2

    iget v2, v2, Lcom/android/tools/r8/internal/ob;->a:I

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/ta;->c:Lcom/android/tools/r8/graph/M2;

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v1, v4}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 18
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    .line 19
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 21
    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_3

    goto :goto_2

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_4
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p3, :cond_5

    .line 24
    aget v2, v0, v1

    .line 25
    sget-object v3, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 26
    :cond_5
    sget-object v3, Lcom/android/tools/r8/internal/kK;->j:Lcom/android/tools/r8/internal/kK;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Ljava/util/ArrayList;Z)V

    .line 27
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/aB;->c(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Pt1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Pt1;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ta;->c:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/internal/Eb;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
