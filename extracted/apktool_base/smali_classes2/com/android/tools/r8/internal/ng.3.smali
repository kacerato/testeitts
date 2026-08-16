.class public final Lcom/android/tools/r8/internal/ng;
.super Lcom/android/tools/r8/internal/mg;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/og;
.implements Lcom/android/tools/r8/internal/pg;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public b:Z

.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/mg;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/ng;->d:Z

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/tools/r8/internal/uK;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/uK;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/vn1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/vn1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/tools/r8/internal/ng;->b:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/ng;->a(Ljava/util/List;Z)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Must use UnknownMethodState instead"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Iw0;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of p0, p0, Lcom/android/tools/r8/internal/wg;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/List;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/xn1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/xn1;-><init>()V

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/pg;
    .locals 3

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Iw0;

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Iw0;->o()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/ng;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/ng;->b:Z

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/ng;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/ng;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/pg;
    .locals 6

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 25
    iget-object v1, p3, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 27
    sget-boolean p1, Lcom/android/tools/r8/internal/ng;->d:Z

    if-eqz p1, :cond_0

    .line 28
    sget-object p1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    return-object p1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_1
    iget-boolean v0, p3, Lcom/android/tools/r8/internal/ng;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 31
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/ng;->b:Z

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 33
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_5

    .line 35
    sget-boolean v0, Lcom/android/tools/r8/internal/ng;->d:Z

    if-nez v0, :cond_4

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 37
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result v2

    add-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw0;

    .line 40
    iget-object v2, p3, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Iw0;

    .line 41
    iget-object v4, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    const/4 v5, 0x0

    .line 42
    invoke-virtual {v0, p1, v2, v5, p4}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    .line 43
    invoke-interface {v4, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move v1, v3

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw0;

    .line 46
    iget-object v2, p3, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Iw0;

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 48
    iget-object v4, v4, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    .line 49
    iget-object v4, v4, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v4, v4, v3

    .line 50
    iget-object v5, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 51
    invoke-virtual {v0, p1, v2, v4, p4}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    .line 52
    invoke-interface {v5, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-boolean v0, Lcom/android/tools/r8/internal/ng;->d:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    instance-of v0, v0, Lcom/android/tools/r8/internal/wg;

    if-nez v0, :cond_6

    goto :goto_2

    .line 56
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 57
    :cond_8
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/ng;->b:Z

    iget-object p2, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/ng;->a(Ljava/util/List;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 58
    sget-object p1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    return-object p1

    :cond_9
    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/wX;
    .locals 3

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Iw0;

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Iw0;->o()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/ng;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/ng;->b:Z

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/ng;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public final a(ILcom/android/tools/r8/internal/Iw0;)V
    .locals 1

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/ng;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    instance-of v0, v0, Lcom/android/tools/r8/internal/wg;

    if-nez v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/ng;
    .locals 0

    return-object p0
.end method

.method public final h()Lcom/android/tools/r8/internal/og;
    .locals 0

    return-object p0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/internal/wn1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/wn1;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    return v0
.end method
