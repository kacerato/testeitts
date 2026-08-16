.class public final Lcom/android/tools/r8/graph/W4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/graph/Z4;

.field public b:Ljava/util/ArrayList;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/graph/W4;->a:Lcom/android/tools/r8/graph/Z4;

    iput-object v0, p0, Lcom/android/tools/r8/graph/W4;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/graph/W4;->c:Z

    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/util/Collection;)Lcom/android/tools/r8/graph/Z4$b;
    .locals 1

    .line 53
    invoke-static {p1}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/android/tools/r8/graph/Kb;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/Kb;-><init>(Ljava/util/Set;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 55
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 56
    sget-object p0, Lcom/android/tools/r8/graph/Z4$b;->c:Lcom/android/tools/r8/graph/Z4$b;

    return-object p0

    .line 57
    :cond_0
    new-instance p0, Lcom/android/tools/r8/graph/i5;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/graph/i5;-><init>(Ljava/util/Set;)V

    return-object p0
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/k5;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/tools/r8/graph/Ib;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/Ib;-><init>(Lcom/android/tools/r8/graph/k5;)V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/graph/Z4$b;)V
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/tools/r8/graph/W4;->d:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/graph/Z4$b;->c:Lcom/android/tools/r8/graph/Z4$b;

    if-eq p1, v0, :cond_1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    instance-of v0, p1, Lcom/android/tools/r8/graph/i5;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 62
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/Z4$a;->b:Ljava/util/Collection;

    if-eqz p1, :cond_2

    .line 63
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/List;Lcom/android/tools/r8/graph/Z4$a;)V
    .locals 1

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->l()Lcom/android/tools/r8/graph/Z4$b;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    new-instance p0, Lcom/android/tools/r8/graph/Jb;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/graph/Jb;-><init>(Lcom/android/tools/r8/graph/Z4$a;)V

    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 52
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/Z4$a;Lcom/android/tools/r8/graph/Z4$a;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/k5;Lcom/android/tools/r8/graph/k5;)Z
    .locals 0

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/Z4$a;Ljava/util/Collection;)Lcom/android/tools/r8/graph/Z4;
    .locals 11

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/W4;->a:Lcom/android/tools/r8/graph/Z4;

    if-nez v0, :cond_0

    return-object p1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/W4;->b:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    return-object v0

    .line 10
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    .line 14
    iget-object v9, p0, Lcom/android/tools/r8/graph/W4;->b:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/tools/r8/graph/Hb;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/graph/Hb;-><init>(Lcom/android/tools/r8/graph/W4;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 15
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    sget-object p2, Lcom/android/tools/r8/graph/Z4$b;->c:Lcom/android/tools/r8/graph/Z4$b;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_3
    :goto_0
    invoke-static {v8, p2}, Lcom/android/tools/r8/graph/W4;->a(Ljava/util/Set;Ljava/util/Collection;)Lcom/android/tools/r8/graph/Z4$b;

    move-result-object p2

    .line 19
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_7

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/Z4;

    return-object p1

    .line 23
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 24
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/Z4;

    return-object p1

    .line 25
    :cond_6
    new-instance p1, Lcom/android/tools/r8/graph/e5;

    invoke-direct {p1, v0, v7}, Lcom/android/tools/r8/graph/e5;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1

    .line 26
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 27
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v2, :cond_8

    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/Z4;

    return-object p1

    .line 30
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v2, :cond_c

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/Z4$c;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    instance-of p2, p1, Lcom/android/tools/r8/graph/l5;

    if-eqz p2, :cond_9

    .line 34
    new-instance p2, Lcom/android/tools/r8/graph/h5;

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->n()Lcom/android/tools/r8/graph/l5;

    move-result-object p1

    invoke-direct {p2, p1, v0, v7}, Lcom/android/tools/r8/graph/h5;-><init>(Lcom/android/tools/r8/graph/l5;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p2

    .line 36
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->m()Lcom/android/tools/r8/graph/j5;

    move-result-object p1

    .line 37
    sget-boolean p2, Lcom/android/tools/r8/graph/W4;->d:Z

    if-nez p2, :cond_b

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_b
    :goto_2
    new-instance p2, Lcom/android/tools/r8/graph/d5;

    invoke-direct {p2, p1, v0, v7}, Lcom/android/tools/r8/graph/d5;-><init>(Lcom/android/tools/r8/graph/j5;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p2

    .line 39
    :cond_c
    new-instance p2, Lcom/android/tools/r8/graph/f5;

    invoke-direct {p2, p1, v0, v7}, Lcom/android/tools/r8/graph/f5;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/Z4;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/W4;->a:Lcom/android/tools/r8/graph/Z4;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/graph/W4;->a:Lcom/android/tools/r8/graph/Z4;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/W4;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/W4;->b:Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/graph/W4;->a:Lcom/android/tools/r8/graph/Z4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/W4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/Z4$c;)V
    .locals 1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/W4;->c:Z

    if-nez v0, :cond_1

    .line 44
    sget-boolean v0, Lcom/android/tools/r8/graph/W4;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Unexpected multiple results between program and classpath"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 45
    :cond_1
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/List;Lcom/android/tools/r8/graph/Z4;)V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/tools/r8/graph/Lb;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/Lb;-><init>(Lcom/android/tools/r8/graph/W4;Ljava/util/List;)V

    new-instance p1, Lcom/android/tools/r8/graph/Mb;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/graph/Mb;-><init>(Ljava/util/List;)V

    .line 41
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/graph/Nb;

    invoke-direct {v1, p3, p4}, Lcom/android/tools/r8/graph/Nb;-><init>(Ljava/util/Set;Ljava/util/List;)V

    .line 42
    invoke-virtual {p5, v0, p1, p2, v1}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method
