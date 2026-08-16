.class public final Lcom/android/tools/r8/internal/R9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/R9;->c:I

    iput p2, p0, Lcom/android/tools/r8/internal/R9;->d:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/dV0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dV0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/eV0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eV0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0x84

    return v0
.end method

.method public final V()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/R9;->d:I

    return v0
.end method

.method public final W()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/R9;->c:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/R9;

    new-instance p3, Lcom/android/tools/r8/internal/cV0;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/cV0;-><init>()V

    invoke-virtual {p2, p0, p1, p3}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 6

    .line 7
    iget v3, p0, Lcom/android/tools/r8/internal/R9;->c:I

    .line 8
    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    new-instance v5, Lcom/android/tools/r8/internal/fV0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/fV0;-><init>()V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;ILcom/android/tools/r8/internal/Kw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 5
    iget p1, p0, Lcom/android/tools/r8/internal/R9;->c:I

    iget p2, p0, Lcom/android/tools/r8/internal/R9;->d:I

    invoke-virtual {p9, p1, p2}, Lcom/android/tools/r8/internal/EX;->a(II)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 6
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/R9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 1

    .line 10
    iget p3, p0, Lcom/android/tools/r8/internal/R9;->c:I

    .line 11
    iget-object p2, p2, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    .line 12
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/sb;->a(I)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 13
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    .line 14
    sget-object p3, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    iget v0, p0, Lcom/android/tools/r8/internal/R9;->d:I

    invoke-virtual {p1, p3, p2, p2, v0}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/T10;III)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/cV0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cV0;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final y()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/R9;->c:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/R9;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x6

    return v0
.end method
