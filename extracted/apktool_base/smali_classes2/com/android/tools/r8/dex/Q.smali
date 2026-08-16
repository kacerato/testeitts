.class public final Lcom/android/tools/r8/dex/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/Comparator;

.field public static final synthetic k:Z = true


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lcom/android/tools/r8/dex/t0;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/BitSet;

.field public final f:Ljava/util/Set;

.field public final g:Lcom/android/tools/r8/graph/y;

.field public final h:Lcom/android/tools/r8/internal/IH;

.field public final i:Lcom/android/tools/r8/dex/P;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu/a0;

    invoke-direct {v0}, Lu/a0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/dex/Q;->j:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/t0;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/Set;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/Q;->e:Ljava/util/BitSet;

    iput-object p1, p0, Lcom/android/tools/r8/dex/Q;->b:Lcom/android/tools/r8/dex/t0;

    iput-object p2, p0, Lcom/android/tools/r8/dex/Q;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/tools/r8/dex/Q;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/dex/Q;->f:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/dex/Q;->h:Lcom/android/tools/r8/internal/IH;

    iput-object p6, p0, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    iput-object p7, p0, Lcom/android/tools/r8/dex/Q;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/android/tools/r8/dex/P;

    invoke-direct {p1, p6, p4}, Lcom/android/tools/r8/dex/P;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/Q;->i:Lcom/android/tools/r8/dex/P;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/HashSet;)Lcom/android/tools/r8/graph/H2;
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 129
    :goto_0
    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 130
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/dex/Q;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/HashSet;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    .line 132
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 133
    iget-object v4, p0, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    check-cast v3, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p0, v3, p2}, Lcom/android/tools/r8/dex/Q;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/HashSet;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public final a(Ljava/util/HashSet;Lcom/android/tools/r8/dex/r0;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 10

    .line 20
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/dex/Q;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/HashSet;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 24
    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_0
    sget-boolean v2, Lcom/android/tools/r8/dex/Q;->k:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 29
    new-instance v3, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result p1

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    const/4 v4, 0x0

    if-ltz p1, :cond_5

    .line 31
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 32
    iget-object v6, p0, Lcom/android/tools/r8/dex/Q;->i:Lcom/android/tools/r8/dex/P;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/dex/P;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/Collection;

    move-result-object v6

    .line 33
    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7}, Ljava/util/BitSet;-><init>()V

    .line 34
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    .line 35
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 36
    :cond_3
    invoke-virtual {v7, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v4, :cond_4

    .line 39
    new-instance v6, Lcom/android/tools/r8/dex/O;

    invoke-direct {v6, p0}, Lcom/android/tools/r8/dex/O;-><init>(Lcom/android/tools/r8/dex/Q;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/dex/O;

    iget-object v4, v4, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 41
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/dex/Q;->a(Ljava/util/AbstractList;)V

    .line 42
    sget-boolean p1, Lcom/android/tools/r8/dex/Q;->k:Z

    if-nez p1, :cond_8

    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v4

    move v3, v1

    :goto_4
    if-ge v1, p1, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Lcom/android/tools/r8/dex/O;

    .line 44
    iget-object v5, v5, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_4

    :cond_6
    if-ne v0, v3, :cond_7

    goto :goto_5

    .line 45
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_8
    :goto_5
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    iget-object p3, p0, Lcom/android/tools/r8/dex/Q;->b:Lcom/android/tools/r8/dex/t0;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v1, v4

    :cond_9
    if-ge v1, p3, :cond_d

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/tools/r8/dex/O;

    .line 51
    iget-object v5, p2, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    .line 52
    invoke-static {v5}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;

    move-result-object v5

    iput-object v5, p2, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/r0;->a()V

    .line 54
    new-instance v5, Lu/W;

    invoke-direct {v5, p0, v0}, Lu/W;-><init>(Lcom/android/tools/r8/dex/Q;Ljava/util/Set;)V

    .line 55
    invoke-virtual {p2, v5}, Lcom/android/tools/r8/dex/r0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/dex/t0;

    move-result-object v5

    .line 56
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v3, v3, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    sget-object v3, Lcom/android/tools/r8/dex/Q;->j:Ljava/util/Comparator;

    invoke-static {v6, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v7, v4

    :goto_6
    if-ge v7, v3, :cond_9

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    .line 62
    :goto_7
    invoke-virtual {v5, v8}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    const/high16 v9, 0x10000

    .line 63
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 64
    invoke-virtual {v5}, Lcom/android/tools/r8/dex/t0;->a()V

    .line 65
    iget-object v9, v5, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v9, v9, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    const v9, 0xff9c

    .line 66
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 67
    iget-object v9, p0, Lcom/android/tools/r8/dex/Q;->e:Ljava/util/BitSet;

    invoke-virtual {v5}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/util/BitSet;->set(I)V

    .line 68
    :cond_a
    new-instance v5, Lu/X;

    invoke-direct {v5, p0, v0}, Lu/X;-><init>(Lcom/android/tools/r8/dex/Q;Ljava/util/Set;)V

    .line 69
    invoke-virtual {p2, v5}, Lcom/android/tools/r8/dex/r0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/dex/t0;

    move-result-object v5

    .line 70
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 72
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/If;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/H2;->j0()Ljava/lang/String;

    move-result-object p2

    .line 73
    iget-object p3, v8, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 74
    invoke-virtual {p3}, Lcom/android/tools/r8/origin/Origin;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' from "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is too big to fit in a dex."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_c
    iget-object v8, v5, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v8}, Lcom/android/tools/r8/dex/n0;->a()V

    goto :goto_6

    :cond_d
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/O;Lcom/android/tools/r8/dex/r0;Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    .line 5
    invoke-static {v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;

    move-result-object v0

    iput-object v0, p2, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/r0;->a()V

    .line 7
    iget v0, p1, Lcom/android/tools/r8/dex/O;->c:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2

    iget v0, p1, Lcom/android/tools/r8/dex/O;->d:I

    if-ge v0, v1, :cond_2

    .line 8
    :cond_1
    new-instance v0, Lu/Y;

    invoke-direct {v0, p0, p3}, Lu/Y;-><init>(Lcom/android/tools/r8/dex/Q;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/dex/r0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/dex/t0;

    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/dex/Q;->a(Ljava/util/Set;Lcom/android/tools/r8/dex/t0;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    new-instance v0, Lu/Z;

    invoke-direct {v0, p0, p3}, Lu/Z;-><init>(Lcom/android/tools/r8/dex/Q;Ljava/util/List;)V

    .line 12
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/dex/r0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/dex/t0;

    move-result-object v0

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/Q;->b(Ljava/util/Set;Lcom/android/tools/r8/dex/t0;)Ljava/util/HashSet;

    move-result-object p1

    .line 14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/tools/r8/dex/Q;->a(Ljava/util/HashSet;Lcom/android/tools/r8/dex/r0;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a(Ljava/util/AbstractList;)V
    .locals 4

    .line 76
    new-instance v0, Lcom/android/tools/r8/internal/xr0;

    iget-object v1, p0, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    .line 77
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/dex/Q;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 78
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/xr0;-><init>(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;I)V

    .line 79
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/dex/O;

    .line 80
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu/b0;

    invoke-direct {v2, v1}, Lu/b0;-><init>(Lcom/android/tools/r8/dex/O;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 81
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 82
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 83
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 84
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 85
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 87
    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public final a(Ljava/util/HashSet;Lcom/android/tools/r8/dex/O;Lcom/android/tools/r8/graph/H2;)V
    .locals 6

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 88
    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-boolean p1, p2, Lcom/android/tools/r8/dex/O;->e:Z

    if-nez p1, :cond_5

    .line 90
    iget-object p1, p0, Lcom/android/tools/r8/dex/Q;->b:Lcom/android/tools/r8/dex/t0;

    .line 91
    iget-object p1, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 92
    iget-object p1, p1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 93
    invoke-interface {p1, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/tools/r8/dex/O;->e:Z

    return-void

    .line 94
    :cond_1
    iget-object v0, p2, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    iget-object v1, p3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    iget-object v2, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_2

    move-object v0, p3

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 98
    :goto_0
    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 99
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/dex/Q;->a(Ljava/util/HashSet;Lcom/android/tools/r8/dex/O;Lcom/android/tools/r8/graph/H2;)V

    .line 100
    iget-object v0, p3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 101
    iget-object v4, p0, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    iget-object v5, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v5, :cond_3

    move-object v3, p3

    goto :goto_2

    :cond_3
    invoke-interface {v4, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    .line 104
    :goto_2
    invoke-static {v3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 105
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/tools/r8/dex/Q;->a(Ljava/util/HashSet;Lcom/android/tools/r8/dex/O;Lcom/android/tools/r8/graph/H2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/dex/Q;->i:Lcom/android/tools/r8/dex/P;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/dex/P;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 107
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/dex/Q;->a(Ljava/util/HashSet;Lcom/android/tools/r8/dex/O;Lcom/android/tools/r8/graph/H2;)V

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/dex/t0;)Z
    .locals 0

    .line 18
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/dex/Q;->e:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/dex/t0;)Z
    .locals 5

    .line 108
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 109
    iget-object v1, p2, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 110
    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 111
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 112
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 113
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    add-int/lit8 v3, v3, 0x1

    const/high16 v4, 0x10000

    .line 114
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->a()V

    const p1, 0xff9c

    .line 116
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/android/tools/r8/dex/Q;->e:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 118
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/dex/Q;->k:Z

    if-nez p1, :cond_3

    .line 119
    iget-object p1, p2, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object p1, p1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 120
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return v2

    .line 121
    :cond_4
    iget-object p1, p2, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {p1}, Lcom/android/tools/r8/dex/n0;->a()V

    .line 122
    sget-boolean p1, Lcom/android/tools/r8/dex/Q;->k:Z

    if-nez p1, :cond_6

    if-ne v0, v3, :cond_5

    add-int/2addr v1, v3

    .line 123
    iget-object p1, p2, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object p1, p1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 124
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne v1, p1, :cond_5

    goto :goto_1

    .line 125
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/util/Set;Lcom/android/tools/r8/dex/t0;)Ljava/util/HashSet;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 6
    iget-object v3, v1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 7
    iget-object v3, v3, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 8
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    .line 9
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    if-eqz v7, :cond_a

    .line 10
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 11
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 12
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    sget-object v11, Lcom/android/tools/r8/dex/Q;->j:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 14
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v11, :cond_9

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    check-cast v14, Lcom/android/tools/r8/graph/H2;

    if-nez v13, :cond_1

    .line 15
    iget-object v15, v0, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    iget-object v5, v14, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 16
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v6, v14, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v5, v6, :cond_0

    move-object v5, v14

    goto :goto_2

    :cond_0
    invoke-interface {v15, v5}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    .line 18
    :goto_2
    invoke-static {v5}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    .line 19
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move/from16 v18, v7

    goto/16 :goto_6

    .line 20
    :cond_2
    iget-object v5, v14, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v6, v5

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v6, :cond_5

    move/from16 v16, v6

    aget-object v6, v5, v15

    move-object/from16 v17, v5

    .line 21
    iget-object v5, v0, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v7

    .line 23
    iget-object v7, v14, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v6, v7, :cond_3

    move-object v5, v14

    goto :goto_4

    :cond_3
    invoke-interface {v5, v6}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    .line 24
    :goto_4
    invoke-static {v5}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    .line 25
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_6

    :cond_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v16

    move-object/from16 v5, v17

    move/from16 v7, v18

    goto :goto_3

    :cond_5
    move/from16 v18, v7

    .line 26
    invoke-virtual {v1, v14}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    const/high16 v5, 0x10000

    .line 27
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/dex/t0;->a()V

    .line 29
    iget-object v5, v1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v5, v5, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 30
    invoke-virtual {v9, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const v5, 0xff9c

    .line 31
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 32
    iget-object v5, v0, Lcom/android/tools/r8/dex/Q;->e:Ljava/util/BitSet;

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    const/4 v7, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 33
    :cond_7
    new-instance v1, Lcom/android/tools/r8/internal/If;

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/H2;->j0()Ljava/lang/String;

    move-result-object v2

    .line 34
    iget-object v3, v14, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 35
    invoke-virtual {v3}, Lcom/android/tools/r8/origin/Origin;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' from "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is too big to fit in a dex."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 36
    iget-object v5, v1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v5}, Lcom/android/tools/r8/dex/n0;->a()V

    :goto_5
    move/from16 v7, v18

    goto/16 :goto_1

    .line 37
    :goto_6
    invoke-virtual {v9, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move/from16 v18, v7

    move-object v4, v9

    goto/16 :goto_0

    .line 38
    :cond_a
    sget-boolean v5, Lcom/android/tools/r8/dex/Q;->k:Z

    if-nez v5, :cond_c

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    add-int/2addr v5, v8

    if-ne v2, v5, :cond_b

    add-int/2addr v3, v8

    .line 39
    iget-object v1, v1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 40
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v3, v1, :cond_b

    goto :goto_7

    .line 41
    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_c
    :goto_7
    return-object v4
.end method

.method public final b(Ljava/util/List;Lcom/android/tools/r8/dex/t0;)Z
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/dex/Q;->e:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/util/Set;Lcom/android/tools/r8/dex/t0;)Z
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/dex/Q;->e:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Ljava/util/Set;Lcom/android/tools/r8/dex/t0;)Z
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/dex/Q;->e:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
