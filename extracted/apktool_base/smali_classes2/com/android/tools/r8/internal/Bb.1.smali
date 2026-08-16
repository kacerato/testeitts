.class public Lcom/android/tools/r8/internal/Bb;
.super Lcom/android/tools/r8/internal/ja;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/Bb$a;
    }
.end annotation


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/Bb$a;

.field public final d:Lcom/android/tools/r8/internal/ka;

.field public final e:[I

.field public final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Bb$a;Lcom/android/tools/r8/internal/ka;[ILjava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ja;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bb;->c:Lcom/android/tools/r8/internal/Bb$a;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Bb;->d:Lcom/android/tools/r8/internal/ka;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Bb;->e:[I

    iput-object p4, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    sget-boolean p2, Lcom/android/tools/r8/internal/Bb;->g:Z

    if-nez p2, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/Bb$a;->b:Lcom/android/tools/r8/internal/Bb$a;

    if-ne p1, v0, :cond_1

    array-length v0, p3

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ne v0, p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    sget-object p2, Lcom/android/tools/r8/internal/Bb$a;->c:Lcom/android/tools/r8/internal/Bb$a;

    if-ne p1, p2, :cond_3

    array-length p1, p3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/O;Lcom/android/tools/r8/internal/Pq0;)V
    .locals 2

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/TA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/TA0;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/UA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UA0;-><init>()V

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->d(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/VA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/VA0;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Jq0;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Bb;)[I
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/tools/r8/internal/Bb;->e:[I

    return-object p0
.end method


# virtual methods
.method public final B()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bb;->c:Lcom/android/tools/r8/internal/Bb$a;

    sget-object v1, Lcom/android/tools/r8/internal/Bb$a;->b:Lcom/android/tools/r8/internal/Bb$a;

    if-ne v0, v1, :cond_0

    const/16 v0, 0xab

    return v0

    :cond_0
    const/16 v0, 0xaa

    return v0
.end method

.method public final R()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final W()Lcom/android/tools/r8/internal/ka;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bb;->d:Lcom/android/tools/r8/internal/ka;

    return-object v0
.end method

.method public X()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/CH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bb;->e:[I

    array-length v2, v1

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    iget-object v3, v0, Lcom/android/tools/r8/internal/CH;->b:[I

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, v0, Lcom/android/tools/r8/internal/CH;->c:I

    return-object v0
.end method

.method public Y()Lcom/android/tools/r8/internal/Bb$a;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bb;->c:Lcom/android/tools/r8/internal/Bb$a;

    return-object v0
.end method

.method public final Z()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 2

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/Bb;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bb;->c:Lcom/android/tools/r8/internal/Bb$a;

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/Bb;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Bb;->c:Lcom/android/tools/r8/internal/Bb$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    check-cast p1, Lcom/android/tools/r8/internal/Bb;

    new-instance v0, Lcom/android/tools/r8/internal/SA0;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/SA0;-><init>(Lcom/android/tools/r8/graph/O;)V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    invoke-static {p3, p2, p1}, Lcom/android/tools/r8/internal/at0;->a(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p2

    new-instance p3, Lcom/android/tools/r8/internal/RA0;

    invoke-direct {p3, p0, p1}, Lcom/android/tools/r8/internal/RA0;-><init>(Lcom/android/tools/r8/internal/Bb;Ljava/util/function/BiFunction;)V

    .line 2
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/Zs0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Ys0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bb;->d:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/tools/r8/internal/XQ;

    const/4 p2, 0x0

    move p3, p2

    .line 19
    :goto_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 20
    iget-object p4, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object p4

    aput-object p4, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 21
    :cond_0
    sget-object p3, Lcom/android/tools/r8/internal/Ab;->a:[I

    iget-object p4, p0, Lcom/android/tools/r8/internal/Bb;->c:Lcom/android/tools/r8/internal/Bb$a;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_2

    const/4 p5, 0x2

    if-eq p3, p5, :cond_1

    return-void

    .line 22
    :cond_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/Bb;->e:[I

    aget p2, p3, p2

    .line 23
    iget-object p3, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, p2

    sub-int/2addr p3, p4

    .line 24
    iget-object p4, p0, Lcom/android/tools/r8/internal/Bb;->d:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object p4

    invoke-virtual {p9, p2, p3, p4, p1}, Lcom/android/tools/r8/internal/EX;->a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V

    return-void

    .line 25
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Bb;->d:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/Bb;->e:[I

    invoke-virtual {p9, p2, p3, p1}, Lcom/android/tools/r8/internal/EX;->a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 26
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/Bb;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/ka;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 31
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bb;->e:[I

    iget-object v2, p0, Lcom/android/tools/r8/internal/Bb;->d:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/ka;)I

    move-result p3

    invoke-virtual {p1, p2, v1, p3, v0}, Lcom/android/tools/r8/internal/aB;->a(I[II[I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bb;->e:[I

    array-length v0, v0

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 13
    iget-object v1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 14
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Bb;->e:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 16
    aget v1, v1, v0

    .line 17
    iget-object v2, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/nA;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y()I
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/Ab;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bb;->c:Lcom/android/tools/r8/internal/Bb$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bb;->e:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Bb;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x10

    return v2

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bb;->e:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    return v0
.end method
