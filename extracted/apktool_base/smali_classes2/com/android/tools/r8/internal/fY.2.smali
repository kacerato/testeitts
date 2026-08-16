.class public final Lcom/android/tools/r8/internal/fY;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/eY;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/fB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/eY;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eY;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/fY;->b:Lcom/android/tools/r8/internal/eY;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fY;->a:Lcom/android/tools/r8/internal/fB;

    return-void
.end method

.method public static a(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashSet;)Lcom/android/tools/r8/internal/fv;
    .locals 3

    .line 77
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 78
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fv;

    .line 80
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 81
    new-instance v2, Lcom/android/tools/r8/internal/Ma1;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/Ma1;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 82
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;Ljava/util/HashSet;Ljava/util/HashMap;)V
    .locals 7

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    .line 46
    sget-boolean v0, Lcom/android/tools/r8/internal/fY;->c:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 47
    invoke-static {p0}, Lcom/android/tools/r8/internal/fY;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 48
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/fY;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    goto :goto_1

    .line 51
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    .line 55
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v1

    if-nez v1, :cond_c

    .line 56
    sget-boolean v1, Lcom/android/tools/r8/internal/fY;->c:Z

    if-nez v1, :cond_6

    invoke-static {p0}, Lcom/android/tools/r8/internal/fY;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 57
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_7
    :goto_4
    if-ge v2, v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 58
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 59
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v4

    .line 60
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v5

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v6

    .line 62
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/ix;->a(Lcom/android/tools/r8/internal/ix;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/ix;->a(Lcom/android/tools/r8/internal/ix;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 63
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 64
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v4

    .line 65
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v5

    .line 66
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->c()Lcom/android/tools/r8/internal/ix;

    move-result-object v6

    .line 67
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/ix;->a(Lcom/android/tools/r8/internal/ix;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/ix;->a(Lcom/android/tools/r8/internal/ix;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 68
    :cond_9
    :goto_5
    sget-object v4, Lcom/android/tools/r8/internal/fY;->b:Lcom/android/tools/r8/internal/eY;

    .line 69
    new-instance v5, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v5, v4, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 70
    new-instance v3, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    invoke-static {v3}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 71
    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 72
    :cond_a
    sget-object v1, Lcom/android/tools/r8/internal/fY;->b:Lcom/android/tools/r8/internal/eY;

    .line 73
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p0}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 74
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 75
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    goto/16 :goto_2

    :cond_c
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    instance-of p0, p0, Lcom/android/tools/r8/internal/ix;

    return p0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    instance-of v0, p0, Lcom/android/tools/r8/internal/ej;

    if-nez v0, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    instance-of v0, v0, Lcom/android/tools/r8/internal/ix;

    if-eqz v0, :cond_3

    .line 97
    sget-boolean v0, Lcom/android/tools/r8/internal/fY;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    instance-of p0, p0, Lcom/android/tools/r8/internal/ix;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/internal/zE;)Z
    .locals 2

    .line 84
    sget-object v0, Lcom/android/tools/r8/internal/fY;->b:Lcom/android/tools/r8/internal/eY;

    .line 85
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 86
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/W5;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/fY;->a:Lcom/android/tools/r8/internal/fB;

    new-instance v1, Lcom/android/tools/r8/internal/La1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/La1;-><init>(Lcom/android/tools/r8/internal/fY;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 4
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_1

    .line 6
    invoke-static {v3}, Lcom/android/tools/r8/internal/fY;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    sget-object v4, Lcom/android/tools/r8/internal/fY;->b:Lcom/android/tools/r8/internal/eY;

    .line 8
    new-instance v5, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v5, v4, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    goto :goto_3

    .line 12
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 14
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_4

    .line 15
    invoke-static {v5}, Lcom/android/tools/r8/internal/fY;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 16
    sget-object v6, Lcom/android/tools/r8/internal/fY;->b:Lcom/android/tools/r8/internal/eY;

    .line 17
    new-instance v7, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v7, v6, v5}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 19
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_3
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 21
    :goto_3
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 22
    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 24
    invoke-static {v6, v2, v3}, Lcom/android/tools/r8/internal/fY;->a(Lcom/android/tools/r8/internal/W5;Ljava/util/HashSet;Ljava/util/HashMap;)V

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_6

    .line 26
    :cond_7
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 27
    :goto_5
    invoke-static {v2, v3, v5}, Lcom/android/tools/r8/internal/fY;->a(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashSet;)Lcom/android/tools/r8/internal/fv;

    move-result-object v6

    if-nez v6, :cond_d

    move-object v2, v5

    .line 28
    :goto_6
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 30
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    .line 31
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    .line 32
    :cond_9
    :goto_7
    invoke-interface {v5}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 33
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 34
    invoke-static {v7}, Lcom/android/tools/r8/internal/fY;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 35
    sget-object v8, Lcom/android/tools/r8/internal/fY;->b:Lcom/android/tools/r8/internal/eY;

    .line 36
    new-instance v9, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v9, v8, v7}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 37
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 38
    invoke-virtual {v6, v7}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 39
    invoke-interface {v5}, Lcom/android/tools/r8/internal/EE;->s()V

    goto :goto_7

    .line 40
    :cond_a
    sget-boolean v5, Lcom/android/tools/r8/internal/fY;->c:Z

    if-nez v5, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v5, v7, :cond_b

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_c
    :goto_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 43
    invoke-interface {v3, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_9

    .line 44
    :cond_d
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_e
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 2

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Ka1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ka1;-><init>()V

    .line 89
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
