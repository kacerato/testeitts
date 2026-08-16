.class public Lcom/android/tools/r8/internal/fB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jB;
.implements Lcom/android/tools/r8/internal/zw0;


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:Lcom/android/tools/r8/internal/EW$a;

.field public final c:Lcom/android/tools/r8/internal/B60;

.field public d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/android/tools/r8/internal/z10;

.field public final f:Lcom/android/tools/r8/internal/z10;

.field public g:I

.field public h:I

.field public final i:Lcom/android/tools/r8/internal/mB;

.field public final j:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Ljava/util/LinkedList;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/EW$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/nJ;",
            "Lcom/android/tools/r8/graph/H5;",
            "Lcom/android/tools/r8/internal/B60;",
            "Ljava/util/LinkedList<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;",
            "Lcom/android/tools/r8/internal/z10;",
            "Lcom/android/tools/r8/internal/z10;",
            "Lcom/android/tools/r8/internal/mB;",
            "Lcom/android/tools/r8/internal/EW$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/fB;->g:I

    iput v0, p0, Lcom/android/tools/r8/internal/fB;->h:I

    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/z10;->b()I

    move-result v2

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/internal/fB;->j:Lcom/android/tools/r8/internal/nJ;

    iput-object p8, p0, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fB;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/fB;->c:Lcom/android/tools/r8/internal/B60;

    iput-object p4, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    iput-object p5, p0, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    iput-object p6, p0, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    iput-object p7, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .line 57
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/W5;)Ljava/util/Collection;
    .locals 0

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)Ljava/util/Iterator;
    .locals 1

    .line 184
    iget-object p0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    new-instance v0, Lcom/android/tools/r8/internal/Y5;

    iget-object p0, p0, Lcom/android/tools/r8/internal/CE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V
    .locals 0

    .line 107
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/f60;)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->y()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    .line 106
    iput-object p0, p1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    return-void
.end method

.method public static synthetic a(ILcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 156
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 183
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-gt v1, p0, :cond_2

    return p0

    :cond_2
    return v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/dW;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)Z
    .locals 0

    .line 49
    sget-boolean p2, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/dW;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    .line 87
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->u()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    instance-of v1, v1, Lcom/android/tools/r8/internal/z7;

    if-nez v1, :cond_4

    goto :goto_2

    .line 91
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 92
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    instance-of v0, p0, Lcom/android/tools/r8/internal/YC;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/tools/r8/internal/YC;

    .line 93
    invoke-interface {p0}, Lcom/android/tools/r8/internal/YC;->f()Lcom/android/tools/r8/internal/YV;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/YV;->a()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    .line 94
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 95
    instance-of v0, p1, Lcom/android/tools/r8/internal/lo0;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/android/tools/r8/internal/lo0;

    .line 97
    iget-object p1, p1, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 98
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    .line 99
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/function/Function;Lcom/android/tools/r8/internal/W5;)Ljava/util/Collection;
    .locals 0

    .line 150
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 151
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    .line 153
    iget-object p0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 154
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->a()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    instance-of p0, p0, Lcom/android/tools/r8/internal/C4;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic c(Ljava/util/function/Function;Lcom/android/tools/r8/internal/W5;)Ljava/util/Collection;
    .locals 0

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Aa1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Aa1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Ba1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ba1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 14
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of p0, p0, Lcom/android/tools/r8/internal/C4;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic d(Ljava/util/function/Function;Lcom/android/tools/r8/internal/W5;)Ljava/util/Collection;
    .locals 0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static f(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/pa1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pa1;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/tools/r8/internal/zE;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final B()Lcom/android/tools/r8/internal/hC;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v3, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/tools/r8/internal/dB;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/tools/r8/internal/dB;

    iget-object v3, v3, Lcom/android/tools/r8/internal/dB;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/dB;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/dB;-><init>(Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_2
    if-ltz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-ge v6, v5, :cond_3

    array-length v6, v1

    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :cond_3
    aput-object v4, v1, v3

    add-int/lit8 v2, v2, -0x1

    move v3, v5

    goto :goto_2

    :cond_4
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->n0:Z

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    iget-object v4, v3, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v4, Lcom/android/tools/r8/internal/bY;

    if-nez v4, :cond_5

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    iget-object v3, v2, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v3, Lcom/android/tools/r8/internal/bY;

    if-eqz v3, :cond_7

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public final C()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/W5;->c(I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/sL;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    :goto_1
    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/W5;->c(I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/sL;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-static {v5, v6, v7, v3}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/sL;->a(Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/W5;->c(I)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fB;->a(I)V

    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/tools/r8/internal/fB;->g:I

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    return-void
.end method

.method public final D()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/da1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/da1;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/fB;->f(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fB;->e(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final E()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ga1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ga1;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/fB;->f(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fB;->e(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final F()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ca1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ca1;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/fB;->f(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fB;->e(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 4

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->L()I

    move-result v0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_1

    .line 6
    iget-object v2, p1, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 8
    iget-object v3, v3, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 9
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-interface {p2, v2, v3, v1}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Zs0;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/W5;->a(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 13
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/zE;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/tools/r8/internal/Zs0;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    :cond_1
    return-object v0
.end method

.method public final a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;
    .locals 3

    int-to-long v0, p1

    .line 103
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

    .line 104
    new-instance v2, Lcom/android/tools/r8/internal/qh;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    return-object v2
.end method

.method public final a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;
    .locals 2

    .line 102
    new-instance v0, Lcom/android/tools/r8/internal/qh;

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-direct {v0, p3, p1, p2}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;
    .locals 2

    .line 101
    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/internal/zE;)Ljava/lang/Iterable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/zE;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/internal/zE;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 129
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    .line 130
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v4

    .line 131
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result v5

    .line 132
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v6, v5}, Lcom/android/tools/r8/internal/fB;->a(Ljava/util/ArrayDeque;I)V

    .line 133
    iget-object v6, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 134
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 135
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/fB;->a(I)V

    .line 137
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 138
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    .line 140
    new-array v5, v2, [Ljava/lang/Iterable;

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    invoke-static {v5}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v3

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    goto :goto_1

    :cond_3
    return-object v3

    .line 142
    :cond_4
    new-instance v5, Lcom/android/tools/r8/internal/ea1;

    invoke-direct {v5, v3, p1}, Lcom/android/tools/r8/internal/ea1;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    .line 143
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 144
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    .line 145
    new-array v4, v2, [Ljava/lang/Iterable;

    aput-object v5, v4, v1

    aput-object v3, v4, v0

    invoke-static {v4}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v5

    goto :goto_2

    :cond_5
    return-object v5
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 1

    .line 100
    new-instance v0, Lcom/android/tools/r8/internal/na1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/na1;-><init>(Lcom/android/tools/r8/internal/fB;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public final a(I)V
    .locals 5

    .line 120
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_1

    .line 121
    iget v0, p0, Lcom/android/tools/r8/internal/fB;->g:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    sget-boolean v2, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 126
    :cond_4
    :goto_2
    iget v3, v1, Lcom/android/tools/r8/internal/W5;->n:I

    not-int v4, p1

    and-int/2addr v3, v4

    iput v3, v1, Lcom/android/tools/r8/internal/W5;->n:I

    if-nez v2, :cond_2

    .line 127
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 128
    :cond_6
    iget v0, p0, Lcom/android/tools/r8/internal/fB;->g:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/fB;->g:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 5

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->c()Lcom/android/tools/r8/internal/dW;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 42
    iget-object v2, v1, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, v1, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v2

    .line 44
    sget-boolean v3, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/dW;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 45
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected reference to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to be rewritten at instruction "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_1
    if-nez v3, :cond_0

    .line 46
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/qa1;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/qa1;-><init>(Lcom/android/tools/r8/internal/dW;)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/BiPredicate;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;I)V
    .locals 3

    .line 169
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_1

    .line 170
    iget v0, p0, Lcom/android/tools/r8/internal/fB;->g:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 172
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 173
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 176
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/W5;->c(I)V

    .line 178
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 179
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 180
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/cB;)V
    .locals 5

    .line 33
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    .line 35
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 36
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    const/4 v2, 0x0

    move-object v3, v2

    .line 37
    :goto_1
    iget-object v4, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 38
    iget-object v4, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 39
    :goto_2
    invoke-interface {p1, v1, v3, v4}, Lcom/android/tools/r8/internal/cB;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    if-nez v4, :cond_3

    return-void

    :cond_3
    move-object v3, v1

    move-object v1, v4

    goto :goto_1
.end method

.method public final a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/xw0;)V
    .locals 4

    .line 51
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v1

    .line 53
    invoke-virtual {p1, v1, p2}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    if-nez v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->h:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_3

    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 55
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple value definitions with number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V
    .locals 4

    .line 146
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 148
    invoke-static {v1}, Lcom/android/tools/r8/internal/Xj;->a(Ljava/lang/Object;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/fB;->a(Ljava/util/ArrayDeque;I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    .line 150
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 152
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    new-instance v3, Lcom/android/tools/r8/internal/oa1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/oa1;-><init>(I)V

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 154
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fB;->a(I)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 5

    .line 59
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/z10;->b()I

    move-result p2

    if-gt p1, p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Ljava/util/ArrayDeque;I)V
    .locals 3

    .line 157
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_1

    .line 158
    iget v0, p0, Lcom/android/tools/r8/internal/fB;->g:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 160
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 162
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 163
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 164
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/W5;->c(I)V

    .line 166
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 167
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 168
    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a(Z)V
    .locals 11

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 63
    sget-boolean v4, Lcom/android/tools/r8/internal/fB;->k:Z

    const/4 v5, 0x0

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/android/tools/r8/internal/fB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v4, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v1

    .line 67
    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    .line 68
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v6

    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 69
    sget-boolean v8, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v8, :cond_3

    invoke-virtual {v7, v4}, Lcom/android/tools/r8/internal/zE;->a(Z)V

    :cond_3
    if-nez v8, :cond_5

    .line 70
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    if-ne v9, v3, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_4
    if-nez v8, :cond_7

    .line 71
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_5
    if-nez v8, :cond_9

    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    instance-of v9, v7, Lcom/android/tools/r8/internal/cj;

    if-eqz v9, :cond_9

    .line 74
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_6

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_6
    if-nez v8, :cond_b

    .line 75
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->I1()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 76
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->W()Lcom/android/tools/r8/internal/sD;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/sD;Z)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_7

    .line 77
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 78
    :cond_b
    :goto_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    instance-of v9, v7, Lcom/android/tools/r8/internal/bY;

    if-eqz v9, :cond_10

    if-nez v8, :cond_d

    .line 80
    iget-object v8, v3, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    if-ne v7, v8, :cond_c

    goto :goto_8

    .line 81
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 82
    :cond_d
    :goto_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/W5;

    .line 83
    sget-boolean v10, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v10, :cond_e

    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 84
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->G()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->g()Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    if-ne v9, v3, :cond_f

    goto :goto_9

    .line 85
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 86
    :cond_10
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    goto/16 :goto_3

    :cond_11
    move v2, v5

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Vw0;Lcom/android/tools/r8/internal/W5;)Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Vw0;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z
    .locals 10

    .line 108
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/f60;

    .line 111
    new-instance v7, Lcom/android/tools/r8/internal/Yx0;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 112
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 113
    :goto_1
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 114
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/f60;

    .line 115
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    .line 116
    :cond_1
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 117
    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v7

    sget-object v8, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v6, p1, p2, v7, v8}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    move-result v6

    or-int/2addr v2, v6

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object v2

    new-instance v6, Lcom/android/tools/r8/internal/fa1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/fa1;-><init>()V

    invoke-interface {v2, v6}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final a(Ljava/util/function/Consumer;)Z
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    .line 21
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v1

    .line 23
    iget-object v3, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 25
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->l2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->Q0()Lcom/android/tools/r8/internal/ar0;

    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 32
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/W5;->b(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 1

    .line 158
    new-instance v0, Lcom/android/tools/r8/internal/ya1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/ya1;-><init>(Lcom/android/tools/r8/internal/fB;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public final b()Ljava/util/Iterator;
    .locals 1

    .line 159
    new-instance v0, Lcom/android/tools/r8/internal/bB;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/bB;-><init>(Lcom/android/tools/r8/internal/fB;)V

    return-object v0
.end method

.method public b(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_1

    .line 9
    iget v1, p0, Lcom/android/tools/r8/internal/fB;->g:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->g()V

    :cond_2
    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->i()V

    :cond_3
    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 14
    sget-boolean v2, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->c()V

    goto :goto_1

    .line 15
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fB;->a(Z)V

    :cond_6
    if-nez v0, :cond_45

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->h1()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an add"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 21
    :cond_9
    instance-of v1, v0, Lcom/android/tools/r8/internal/t2;

    if-eqz v1, :cond_b

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/4 v1, 0x4

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an and"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 25
    :cond_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0xa

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    .line 28
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a check-cast"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 29
    :cond_d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0xf

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_2

    .line 32
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a const-number"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 33
    :cond_f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 34
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x10

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_2

    .line 36
    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a const-string"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 37
    :cond_11
    instance-of v1, v0, Lcom/android/tools/r8/internal/hj;

    if-eqz v1, :cond_13

    .line 38
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x13

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_2

    .line 40
    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a debug position"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 41
    :cond_13
    instance-of v1, v0, Lcom/android/tools/r8/internal/uq;

    if-eqz v1, :cond_15

    .line 42
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x14

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_2

    .line 44
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a dex-item-based-const-string"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 45
    :cond_15
    instance-of v1, v0, Lcom/android/tools/r8/internal/Ws;

    if-eqz v1, :cond_17

    .line 46
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x15

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_2

    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a div"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 49
    :cond_17
    instance-of v1, v0, Lcom/android/tools/r8/internal/bE;

    if-eqz v1, :cond_19

    .line 50
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x1c

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_2

    .line 52
    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an instance-get"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 53
    :cond_19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 54
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x1e

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_2

    .line 56
    :cond_1a
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an instance-put"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 57
    :cond_1b
    instance-of v1, v0, Lcom/android/tools/r8/internal/mE;

    if-eqz v1, :cond_1d

    .line 58
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x1d

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_2

    .line 60
    :cond_1c
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an instance-of"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 61
    :cond_1d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 62
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x1f

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_2

    .line 64
    :cond_1e
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an int-switch"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 65
    :cond_1f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 66
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x21

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_2

    .line 68
    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an invoke-direct"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 69
    :cond_21
    instance-of v1, v0, Lcom/android/tools/r8/internal/TJ;

    if-eqz v1, :cond_23

    .line 70
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x22

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_2

    .line 72
    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an invoke-interface"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 73
    :cond_23
    instance-of v1, v0, Lcom/android/tools/r8/internal/YJ;

    if-eqz v1, :cond_25

    .line 74
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x25

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_2

    .line 76
    :cond_24
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an invoke-polymorphic"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 77
    :cond_25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 78
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x26

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_2

    .line 80
    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an invoke-static"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 81
    :cond_27
    instance-of v1, v0, Lcom/android/tools/r8/internal/hK;

    if-eqz v1, :cond_29

    .line 82
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x27

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_28

    goto/16 :goto_2

    .line 84
    :cond_28
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an invoke-super"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 85
    :cond_29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 86
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x28

    .line 87
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto/16 :goto_2

    .line 88
    :cond_2a
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an invoke-virtual"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 89
    :cond_2b
    instance-of v1, v0, Lcom/android/tools/r8/internal/A40;

    if-eqz v1, :cond_2d

    .line 90
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x35

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 92
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto/16 :goto_2

    :cond_2c
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an or"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 93
    :cond_2d
    instance-of v1, v0, Lcom/android/tools/r8/internal/WX;

    if-eqz v1, :cond_2f

    .line 94
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x2a

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto/16 :goto_2

    .line 96
    :cond_2e
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a monitor instruction"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 97
    :cond_2f
    instance-of v1, v0, Lcom/android/tools/r8/internal/gY;

    if-eqz v1, :cond_31

    .line 98
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x2d

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 100
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_2

    :cond_30
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a mul"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 101
    :cond_31
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 102
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x31

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_32

    goto/16 :goto_2

    .line 104
    :cond_32
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a new-instance"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 105
    :cond_33
    instance-of v1, v0, Lcom/android/tools/r8/internal/if0;

    if-eqz v1, :cond_35

    .line 106
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x37

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 108
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_34

    goto/16 :goto_2

    :cond_34
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a rem"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 109
    :cond_35
    instance-of v1, v0, Lcom/android/tools/r8/internal/Ol0;

    if-eqz v1, :cond_37

    .line 110
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x39

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 112
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    goto/16 :goto_2

    :cond_36
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a shl"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 113
    :cond_37
    instance-of v1, v0, Lcom/android/tools/r8/internal/Sl0;

    if-eqz v1, :cond_39

    .line 114
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x3a

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 116
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_38

    goto/16 :goto_2

    :cond_38
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a shr"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 117
    :cond_39
    instance-of v1, v0, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v1, :cond_3b

    .line 118
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x3b

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_2

    .line 120
    :cond_3a
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a static-get"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 121
    :cond_3b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 122
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x3c

    .line 123
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto/16 :goto_2

    .line 124
    :cond_3c
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a static-put"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 125
    :cond_3d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->k2()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 126
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x3e

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto/16 :goto_2

    .line 128
    :cond_3e
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a string-switch"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 129
    :cond_3f
    instance-of v1, v0, Lcom/android/tools/r8/internal/Qq0;

    if-eqz v1, :cond_41

    .line 130
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x3f

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 132
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_2

    :cond_40
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has a sub"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 133
    :cond_41
    instance-of v1, v0, Lcom/android/tools/r8/internal/mw0;

    if-eqz v1, :cond_43

    .line 134
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x43

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 136
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_42

    goto/16 :goto_2

    :cond_42
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an ushr"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 137
    :cond_43
    instance-of v0, v0, Lcom/android/tools/r8/internal/fy0;

    if-eqz v0, :cond_7

    .line 138
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x44

    .line 139
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 140
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_2

    :cond_44
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "IR metadata should indicate that code has an xor"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 141
    :cond_45
    sget-boolean p1, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez p1, :cond_48

    .line 142
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_46
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 143
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 144
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v1

    if-nez v1, :cond_46

    .line 145
    instance-of v1, v0, Lcom/android/tools/r8/internal/uq;

    if-nez v1, :cond_46

    .line 146
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 147
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    sget-object v1, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    if-ne v0, v1, :cond_47

    goto :goto_3

    .line 149
    :cond_47
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_48
    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/y;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)Z"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->r()V

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->D()V

    :cond_0
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/W5;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/lang/Iterable;
    .locals 1

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/ra1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ra1;-><init>(Lcom/android/tools/r8/internal/fB;)V

    return-object v0
.end method

.method public final c(Ljava/util/function/Predicate;)Ljava/util/Iterator;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/wK;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/wK;-><init>(Ljava/util/Iterator;Ljava/util/function/Predicate;)V

    return-object v1
.end method

.method public c(Lcom/android/tools/r8/graph/y;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->s()V

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->D()V

    :cond_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fB;->e(Lcom/android/tools/r8/graph/y;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final d(Ljava/util/function/Predicate;)Ljava/util/Iterator;
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->o()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/wK;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/wK;-><init>(Ljava/util/Iterator;Ljava/util/function/Predicate;)V

    return-object v1
.end method

.method public d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/xw0;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v2, :cond_0

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v3

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 19
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v2

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/graph/y;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->Q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/v31;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/v31;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/VJ;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    .line 7
    iget-object v5, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    .line 8
    :goto_1
    sget-boolean v3, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v2

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    return v1
.end method

.method public final e()Ljava/util/IdentityHashMap;
    .locals 16

    .line 9
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hC;->i()Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_26

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 15
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v6

    .line 17
    new-instance v7, Ljava/util/ArrayDeque;

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    .line 18
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/N8;->a()Ljava/util/Set;

    move-result-object v8

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 20
    invoke-virtual {v0, v10}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/eB;

    if-eqz v11, :cond_6

    .line 21
    iget-object v12, v11, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    .line 22
    invoke-virtual {v5, v12}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v12, v11, Lcom/android/tools/r8/internal/eB;->b:Ljava/util/Set;

    invoke-interface {v6, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 25
    sget-boolean v12, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v12, :cond_6

    iget-object v11, v11, Lcom/android/tools/r8/internal/eB;->c:Ljava/util/ArrayDeque;

    invoke-interface {v11}, Ljava/util/Deque;->size()I

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_3
    sget-boolean v12, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v12, :cond_5

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_5
    :goto_0
    new-instance v7, Ljava/util/ArrayDeque;

    iget-object v11, v11, Lcom/android/tools/r8/internal/eB;->c:Ljava/util/ArrayDeque;

    invoke-direct {v7, v11}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 28
    :cond_6
    :goto_1
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 29
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/f60;

    .line 30
    iget-object v13, v12, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    .line 32
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 33
    invoke-interface {v7, v13}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 34
    :cond_8
    invoke-virtual {v5, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 36
    sget-boolean v14, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v14, :cond_a

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v12

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v14

    if-ne v12, v14, :cond_9

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_a
    :goto_3
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 38
    :cond_b
    sget-boolean v9, Lcom/android/tools/r8/internal/fB;->k:Z

    const/4 v10, 0x1

    if-nez v9, :cond_d

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 39
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    sub-int/2addr v9, v8

    if-ne v9, v10, :cond_c

    goto :goto_4

    .line 40
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_d
    :goto_4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v8

    .line 42
    :cond_e
    :goto_5
    invoke-interface {v8}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 43
    invoke-interface {v8}, Lcom/android/tools/r8/internal/AE;->previous()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    .line 44
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    if-eqz v11, :cond_16

    .line 45
    instance-of v12, v11, Lcom/android/tools/r8/internal/ko0;

    if-eqz v12, :cond_10

    .line 46
    invoke-interface {v7}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 47
    sget-boolean v13, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v13, :cond_16

    if-ne v12, v11, :cond_f

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_10
    instance-of v12, v11, Lcom/android/tools/r8/internal/lo0;

    if-eqz v12, :cond_13

    .line 49
    check-cast v11, Lcom/android/tools/r8/internal/lo0;

    .line 50
    iget-object v11, v11, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 51
    array-length v12, v11

    sub-int/2addr v12, v10

    :goto_6
    if-ltz v12, :cond_16

    .line 52
    invoke-interface {v7}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    .line 53
    sget-boolean v14, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v14, :cond_12

    aget-object v14, v11, v12

    if-ne v13, v14, :cond_11

    goto :goto_7

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :goto_7
    add-int/lit8 v12, v12, -0x1

    goto :goto_6

    .line 54
    :cond_13
    invoke-virtual {v5, v11}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 55
    sget-boolean v12, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v12, :cond_15

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v12

    if-nez v12, :cond_15

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    goto :goto_8

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_15
    :goto_8
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 57
    invoke-interface {v6, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 58
    :cond_16
    :goto_9
    iget-object v11, v9, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v4

    :cond_17
    :goto_a
    if-ge v13, v12, :cond_19

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/android/tools/r8/internal/xw0;

    .line 60
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 61
    invoke-virtual {v5, v14}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 62
    :cond_18
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result v15

    if-eqz v15, :cond_17

    .line 63
    invoke-interface {v7, v14}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_a

    .line 64
    :cond_19
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e

    .line 65
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 66
    new-instance v9, Lcom/android/tools/r8/internal/sa1;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/sa1;-><init>()V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 67
    sget-boolean v9, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v9, :cond_1b

    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v13, Lcom/android/tools/r8/internal/ta1;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/ta1;-><init>()V

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v12

    if-eqz v12, :cond_1a

    goto :goto_b

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1b
    :goto_b
    if-nez v9, :cond_1d

    .line 68
    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v12, Lcom/android/tools/r8/internal/ua1;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/ua1;-><init>()V

    invoke-interface {v9, v12}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    if-eqz v9, :cond_1c

    goto :goto_c

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_1d
    :goto_c
    invoke-virtual {v5, v11}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-interface {v6, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 71
    :cond_1e
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/f60;

    .line 72
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f60;->Q()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 73
    invoke-interface {v7, v8}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 74
    :cond_20
    invoke-virtual {v5, v8}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 75
    :goto_e
    sget-boolean v9, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v9, :cond_22

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v9

    if-nez v9, :cond_22

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    goto :goto_f

    :cond_21
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_22
    :goto_f
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 77
    invoke-interface {v6, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    .line 78
    :cond_23
    new-instance v4, Lcom/android/tools/r8/internal/eB;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/tools/r8/internal/eB;-><init>(Ljava/util/LinkedHashSet;Ljava/util/Set;Ljava/util/ArrayDeque;)V

    .line 79
    invoke-virtual {v0, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/eB;

    if-eqz v5, :cond_24

    .line 80
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/eB;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    :cond_24
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 83
    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 84
    :cond_26
    sget-boolean v1, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v1, :cond_28

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/eB;

    .line 85
    iget-object v3, v1, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v1, v1, Lcom/android/tools/r8/internal/eB;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    return-object v0

    .line 86
    :cond_27
    new-instance v1, Ljava/lang/AssertionError;

    .line 87
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/eB;

    iget-object v0, v0, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected values live at entry to first block: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_28
    return-object v0
.end method

.method public final e(Lcom/android/tools/r8/graph/y;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Vw0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Vw0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/tools/r8/internal/nu0;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/tools/r8/internal/nu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Vw0;)V

    invoke-virtual {v2, p0}, Lcom/android/tools/r8/internal/nu0;->a(Lcom/android/tools/r8/internal/fB;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/lu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    if-nez v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/za1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/internal/za1;-><init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Vw0;)V

    .line 7
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final e(Ljava/util/function/Predicate;)V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 89
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 90
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    sget-boolean v4, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 92
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    .line 93
    sget-boolean v3, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v3, :cond_4

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;"
        }
    .end annotation

    .line 2
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 6
    array-length v5, v0

    if-ge v5, v4, :cond_1

    .line 7
    array-length v5, v0

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 8
    :cond_1
    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ma1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ma1;-><init>()V

    invoke-static {}, Ljava/util/stream/Collectors;->counting()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/va1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/va1;-><init>(Lcom/android/tools/r8/internal/fB;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final h()V
    .locals 11

    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/f60;

    sget-boolean v6, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/f60;->d0()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected trivial phi in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_0
    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    invoke-virtual {p0, v0, v5}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0, v0, v7}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean v8, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v8, :cond_8

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_3
    if-nez v8, :cond_a

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v10

    if-ne v9, v10, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_4
    if-nez v8, :cond_6

    invoke-interface {v7}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v7, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    iget-object v7, v7, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    if-eqz v7, :cond_b

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    sget-boolean v5, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v5, :cond_f

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    if-ne v6, v2, :cond_e

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_5
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {p0, v0, v6}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/xw0;)V

    if-nez v5, :cond_11

    iget-object v5, v6, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-ne v5, v4, :cond_10

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    :goto_6
    iget-object v5, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_12
    :goto_7
    if-ge v7, v6, :cond_14

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0, v0, v8}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean v9, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v9, :cond_12

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_7

    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0, v0, v6}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean v7, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v7, :cond_15

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->g()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_8

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dH;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VG;

    new-instance v1, Lcom/android/tools/r8/internal/cH;

    iget-object v0, v0, Lcom/android/tools/r8/internal/VG;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/cH;-><init>(Lcom/android/tools/r8/internal/dH;)V

    :cond_18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/android/tools/r8/internal/cH;->h:Lcom/android/tools/r8/internal/dH;

    iget-object v0, v0, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/bH;->a()I

    move-result v2

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    sget-boolean v2, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v2, :cond_1c

    if-nez v2, :cond_1c

    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v3

    if-nez v2, :cond_1c

    iget-object v4, v3, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_9

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1a
    iget-object v3, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    if-nez v2, :cond_1c

    if-eq v3, v0, :cond_1c

    instance-of v4, v0, Lcom/android/tools/r8/internal/ko0;

    if-eqz v4, :cond_1b

    check-cast v3, Lcom/android/tools/r8/internal/lo0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_9

    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1c
    :goto_9
    if-nez v2, :cond_18

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    sget-boolean v4, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v4, :cond_1d

    iget-object v3, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_a

    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    sget-boolean v4, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v4, :cond_22

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_c

    :cond_21
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_22
    :goto_c
    if-nez v4, :cond_20

    iget-object v4, v3, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_b

    :cond_23
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->g()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    sget-boolean v4, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v4, :cond_25

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_d

    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_27
    return-void
.end method

.method public final i()V
    .locals 11

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/IdentityHashMap;

    iget-object v2, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    new-instance v2, Ljava/util/IdentityHashMap;

    iget-object v3, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    new-instance v3, Lcom/android/tools/r8/internal/ha1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ha1;-><init>()V

    iget-object v4, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    new-instance v6, Lcom/android/tools/r8/internal/ia1;

    invoke-direct {v6, v3}, Lcom/android/tools/r8/internal/ia1;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    new-instance v7, Lcom/android/tools/r8/internal/ja1;

    invoke-direct {v7, v3}, Lcom/android/tools/r8/internal/ja1;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    sget-boolean v8, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v8, :cond_2

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    if-nez v8, :cond_4

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    if-nez v8, :cond_6

    invoke-interface {v0, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_2
    if-nez v8, :cond_8

    invoke-interface {v0, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    new-instance v9, Lcom/android/tools/r8/internal/ka1;

    invoke-direct {v9, v3}, Lcom/android/tools/r8/internal/ka1;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    sget-boolean v9, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v9, :cond_9

    invoke-interface {v8, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    new-instance v8, Lcom/android/tools/r8/internal/la1;

    invoke-direct {v8, v3}, Lcom/android/tools/r8/internal/la1;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    sget-boolean v8, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v8, :cond_c

    invoke-interface {v7, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    return-void
.end method

.method public j()Lcom/android/tools/r8/graph/H5;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->a:Lcom/android/tools/r8/graph/H5;

    return-object v0
.end method

.method public k()Lcom/android/tools/r8/internal/W5;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public final l()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final m()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    sget-boolean v1, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final n()Ljava/util/Set;
    .locals 5

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Xj;->a(Ljava/lang/Object;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/internal/fB;->a(Ljava/util/ArrayDeque;I)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fB;->a(I)V

    return-object v0
.end method

.method public o()Lcom/android/tools/r8/internal/AE;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/gB;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/gB;-><init>(Lcom/android/tools/r8/internal/fB;)V

    return-object v0
.end method

.method public p()Lcom/android/tools/r8/internal/hB;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/hB;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/hB;-><init>(Lcom/android/tools/r8/internal/fB;)V

    return-object v0
.end method

.method public q()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/internal/zE;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/Ca1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ca1;-><init>(Lcom/android/tools/r8/internal/fB;)V

    return-object v0
.end method

.method public final r()V
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->s()V

    :cond_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    sget-boolean v2, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->D()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    return-void
.end method

.method public final s()V
    .locals 7

    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fB;->b(Z)V

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/fB;->a(Z)V

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->h()V

    :cond_2
    const/4 v2, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/N8;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    sget-boolean v6, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_7

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    move v4, v2

    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v6

    if-eqz v6, :cond_c

    sget-boolean v5, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v5, :cond_b

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_3
    move v4, v1

    goto :goto_2

    :cond_c
    sget-boolean v6, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v6, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->i1()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_2

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v1, :cond_10

    goto :goto_4

    :cond_10
    iget-object v3, v3, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    instance-of v3, v3, Lcom/android/tools/r8/internal/bY;

    if-eqz v3, :cond_12

    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    move v3, v2

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_f

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    iget-object v6, v5, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v1, :cond_13

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v5

    if-eqz v5, :cond_13

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-eqz v0, :cond_14

    :goto_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->F()V

    :cond_16
    return-void
.end method

.method public final t()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/bB;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/bB;-><init>(Lcom/android/tools/r8/internal/fB;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "blocks:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/android/tools/r8/internal/Z5;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Z5;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Z5;-><init>(Lcom/android/tools/r8/internal/fB;)V

    return-object v0
.end method

.method public v()Lcom/android/tools/r8/graph/j1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    return-object v0
.end method

.method public final w()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v7

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->i1()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v7, :cond_4

    if-ne v2, v0, :cond_4

    :cond_3
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v3, p0, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_1

    move v4, v6

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-static {v3}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v6, v4}, Lcom/android/tools/r8/internal/W5;->a(IZLcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ba1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ba1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_3
    return-void
.end method

.method public x()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    sget-boolean v3, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->D()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->y()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->y()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_3
    if-nez v3, :cond_8

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->y()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->y()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/wa1;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/internal/wa1;-><init>(Lcom/android/tools/r8/internal/W5;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/xa1;

    invoke-direct {v5, v2, v3}, Lcom/android/tools/r8/internal/xa1;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final y()I
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    iget v3, p0, Lcom/android/tools/r8/internal/fB;->g:I

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_1

    if-gt v0, v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/internal/fB;->g:I

    and-int v3, v0, v2

    if-ne v3, v2, :cond_4

    sget-boolean v0, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v0, :cond_3

    if-gt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_2
    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/fB;->g:I

    sget-boolean v1, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v1, :cond_6

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_3
    if-nez v1, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    sget-boolean v3, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v3, :cond_7

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    return v2
.end method

.method public final z()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v4, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v4, Lcom/android/tools/r8/internal/bY;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    iget-object v7, v6, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v5, :cond_4

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-static {v7, v8, v9, v2}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v2, v7}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
