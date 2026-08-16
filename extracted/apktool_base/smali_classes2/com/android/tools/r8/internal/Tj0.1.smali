.class public final Lcom/android/tools/r8/internal/Tj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceFrameResult;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/JW;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/android/tools/r8/internal/wk0;

.field public final d:Lcom/android/tools/r8/internal/Zj0;

.field public e:Lcom/android/tools/r8/internal/t40;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/JW;Lcom/android/tools/r8/internal/wk0;Lcom/android/tools/r8/internal/Zj0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tj0;->e:Lcom/android/tools/r8/internal/t40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Tj0;->a:Lcom/android/tools/r8/internal/JW;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tj0;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Tj0;->c:Lcom/android/tools/r8/internal/wk0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Tj0;->d:Lcom/android/tools/r8/internal/Zj0;

    sget-boolean p2, Lcom/android/tools/r8/internal/Tj0;->f:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/k$b;)Ljava/util/OptionalInt;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-nez v0, :cond_1

    .line 102
    iget-object p0, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/tools/r8/naming/M0;->a:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 103
    :cond_1
    iget p0, v0, Lcom/android/tools/r8/naming/M0;->a:I

    :goto_0
    if-lez p0, :cond_2

    .line 104
    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    .line 105
    :cond_2
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k$b;Ljava/util/OptionalInt;)Ljava/util/OptionalInt;
    .locals 0

    .line 100
    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/k$b;->a(I)I

    move-result p0

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k$b;Ljava/util/List;)V
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/android/tools/r8/internal/Sj0;->a(Lcom/android/tools/r8/naming/k$b;)Lcom/android/tools/r8/internal/Sj0;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/naming/k$b;I)V
    .locals 3

    if-nez p2, :cond_1

    .line 66
    iget-object p2, p1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    iget p2, p2, Lcom/android/tools/r8/naming/M0;->a:I

    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    iget v0, v0, Lcom/android/tools/r8/naming/M0;->b:I

    if-gt p2, v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/android/tools/r8/internal/Sj0;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/Sj0;-><init>(Lcom/android/tools/r8/naming/k$b;Ljava/util/OptionalInt;)V

    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 72
    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/KX0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/KX0;-><init>(Lcom/android/tools/r8/naming/k$b;)V

    invoke-interface {p0, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/naming/k$b;)Lcom/android/tools/r8/internal/Sj0;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Sj0;->a(Lcom/android/tools/r8/naming/k$b;)Lcom/android/tools/r8/internal/Sj0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Optional;Lcom/android/tools/r8/internal/Mj0;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Rj0;
    .locals 11

    const/4 v0, 0x0

    .line 76
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Sj0;

    .line 77
    iget-object v1, v0, Lcom/android/tools/r8/internal/Sj0;->a:Lcom/android/tools/r8/naming/k$b;

    .line 78
    iget-object v2, p3, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    .line 79
    iget-object v2, v2, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 80
    sget-object v3, Lcom/android/tools/r8/internal/kk0;->a:Ljava/util/HashSet;

    .line 81
    iget-object v1, v1, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/kk0;->a(Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object v1

    .line 82
    new-instance v10, Lcom/android/tools/r8/internal/Rj0;

    .line 83
    invoke-virtual {p0, v1, v0, p4}, Lcom/android/tools/r8/internal/Tj0;->a(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/internal/Sj0;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/pk0;

    move-result-object v5

    iget-object v9, p0, Lcom/android/tools/r8/internal/Tj0;->c:Lcom/android/tools/r8/internal/wk0;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/tools/r8/internal/Rj0;-><init>(Lcom/android/tools/r8/internal/Tj0;Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/internal/rk0;Ljava/util/List;Ljava/util/Optional;Ljava/util/OptionalInt;Lcom/android/tools/r8/internal/wk0;)V

    return-object v10
.end method

.method public final a(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/internal/Sj0;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/pk0;
    .locals 3

    .line 84
    iget-object v0, p2, Lcom/android/tools/r8/internal/Sj0;->a:Lcom/android/tools/r8/naming/k$b;

    .line 85
    iget-object p2, p2, Lcom/android/tools/r8/internal/Sj0;->b:Ljava/util/OptionalInt;

    .line 86
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Tj0;->isAmbiguous()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 87
    invoke-virtual {p3, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 88
    :cond_0
    new-instance p3, Lcom/android/tools/r8/internal/HX0;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/HX0;-><init>(Lcom/android/tools/r8/naming/k$b;)V

    .line 89
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/OptionalInt;

    .line 90
    :goto_0
    sget-object p3, Lcom/android/tools/r8/internal/rk0;->c:Ljava/util/Comparator;

    .line 91
    new-instance p3, Lcom/android/tools/r8/internal/pk0;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/pk0;-><init>(Lcom/android/tools/r8/references/MethodReference;Ljava/util/OptionalInt;)V

    return-object p3

    .line 92
    :cond_2
    invoke-static {p3}, Lcom/android/tools/r8/internal/DX0;->a(Ljava/util/OptionalInt;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v1, :cond_5

    .line 93
    invoke-virtual {p3}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/naming/M0;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 94
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/IX0;

    invoke-direct {v1, v0, p3}, Lcom/android/tools/r8/internal/IX0;-><init>(Lcom/android/tools/r8/naming/k$b;Ljava/util/OptionalInt;)V

    .line 95
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/OptionalInt;

    .line 96
    :goto_1
    sget-object p3, Lcom/android/tools/r8/internal/rk0;->c:Ljava/util/Comparator;

    .line 97
    new-instance p3, Lcom/android/tools/r8/internal/pk0;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/pk0;-><init>(Lcom/android/tools/r8/references/MethodReference;Ljava/util/OptionalInt;)V

    return-object p3

    .line 98
    :cond_5
    :goto_2
    sget-object p3, Lcom/android/tools/r8/internal/rk0;->c:Ljava/util/Comparator;

    .line 99
    new-instance p3, Lcom/android/tools/r8/internal/pk0;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/pk0;-><init>(Lcom/android/tools/r8/references/MethodReference;Ljava/util/OptionalInt;)V

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/Qj0;)Ljava/util/stream/Stream;
    .locals 13

    .line 1
    iget-object v6, p1, Lcom/android/tools/r8/internal/Qj0;->a:Lcom/android/tools/r8/internal/Mj0;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qj0;->b:Ljava/util/List;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qj0;->c:Ljava/util/OptionalInt;

    if-eqz v0, :cond_8

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/JV;

    .line 7
    iget-object v1, v0, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v9

    .line 9
    iget-object v10, v0, Lcom/android/tools/r8/internal/JV;->b:Lcom/android/tools/r8/naming/V;

    .line 10
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/Tj0;->f:Z

    if-nez v0, :cond_2

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/tools/r8/naming/k$b;

    .line 13
    invoke-virtual {v10}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v1

    .line 14
    invoke-virtual {v10}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/android/tools/r8/naming/k$b;-><init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Lcom/android/tools/r8/internal/Sj0;->a(Lcom/android/tools/r8/naming/k$b;)Lcom/android/tools/r8/internal/Sj0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-static {v10}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 17
    invoke-virtual {p0, v0, v1, v6, p1}, Lcom/android/tools/r8/internal/Tj0;->a(Ljava/util/List;Ljava/util/Optional;Lcom/android/tools/r8/internal/Mj0;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Rj0;

    move-result-object v0

    .line 18
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 19
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/k$b;

    .line 20
    iget-object v1, v0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 21
    filled-new-array {v0}, [Lcom/android/tools/r8/naming/k$b;

    move-result-object v0

    const/4 v2, 0x1

    .line 22
    invoke-static {v2}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v3

    .line 23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move v11, v2

    move-object v3, v4

    .line 25
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_6

    .line 26
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/tools/r8/naming/k$b;

    if-eqz v1, :cond_4

    .line 27
    iget-object v0, v12, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 28
    :cond_4
    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    move-object v0, p0

    move-object v1, v6

    move-object v4, v7

    move-object v5, p1

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Tj0;->a(Lcom/android/tools/r8/internal/Mj0;Ljava/util/Optional;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/OptionalInt;)V

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v0, v12, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    move-object v1, v0

    .line 32
    :cond_5
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 33
    :cond_6
    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    move-object v0, p0

    move-object v1, v6

    move-object v4, v7

    move-object v5, p1

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Tj0;->a(Lcom/android/tools/r8/internal/Mj0;Ljava/util/Optional;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/OptionalInt;)V

    goto/16 :goto_0

    .line 35
    :cond_7
    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 36
    :cond_8
    :goto_3
    new-instance v8, Lcom/android/tools/r8/internal/Rj0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tj0;->a:Lcom/android/tools/r8/internal/JW;

    .line 37
    iget-object v1, v6, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    .line 38
    iget-object v1, v1, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/JW;->a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/JW;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/android/tools/r8/internal/rk0;->c:Ljava/util/Comparator;

    .line 41
    instance-of v1, v0, Lcom/android/tools/r8/internal/IW;

    if-eqz v1, :cond_9

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/JW;->a()Lcom/android/tools/r8/internal/IW;

    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    .line 44
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/android/tools/r8/internal/pk0;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/pk0;-><init>(Lcom/android/tools/r8/references/MethodReference;Ljava/util/OptionalInt;)V

    move-object v3, v2

    goto :goto_4

    .line 46
    :cond_9
    new-instance v1, Lcom/android/tools/r8/internal/qk0;

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/qk0;-><init>(Lcom/android/tools/r8/internal/JW;Ljava/util/OptionalInt;)V

    move-object v3, v1

    .line 47
    :goto_4
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 48
    sget-object v4, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 49
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    iget-object v7, p0, Lcom/android/tools/r8/internal/Tj0;->c:Lcom/android/tools/r8/internal/wk0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/Rj0;-><init>(Lcom/android/tools/r8/internal/Tj0;Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/internal/rk0;Ljava/util/List;Ljava/util/Optional;Ljava/util/OptionalInt;Lcom/android/tools/r8/internal/wk0;)V

    .line 50
    invoke-static {v8}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Mj0;Ljava/util/Optional;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/OptionalInt;)V
    .locals 8

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Tj0;->isAmbiguous()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k$b;

    .line 52
    iget-object v2, v1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto/16 :goto_2

    .line 53
    :cond_0
    iget-object v2, v1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v2

    iget-object v1, v1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v1

    if-eq v2, v1, :cond_6

    .line 55
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/Tj0;->f:Z

    if-nez v1, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    .line 56
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k$b;

    iget-object v1, v1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v1, :cond_4

    .line 57
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k$b;

    iget-object v1, v1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    iget v1, v1, Lcom/android/tools/r8/naming/M0;->b:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/k$b;

    iget-object v0, v0, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    iget v0, v0, Lcom/android/tools/r8/naming/M0;->a:I

    if-le v1, v0, :cond_4

    goto :goto_1

    .line 58
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 59
    :cond_5
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v1, Lcom/android/tools/r8/internal/EX0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/EX0;-><init>(Ljava/util/List;)V

    invoke-static {p3, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Lcom/android/tools/r8/internal/zT;)V

    .line 61
    new-instance p3, Lcom/android/tools/r8/internal/FX0;

    move-object v2, p3

    move-object v3, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/FX0;-><init>(Lcom/android/tools/r8/internal/Tj0;Ljava/util/List;Ljava/util/Optional;Lcom/android/tools/r8/internal/Mj0;Ljava/util/OptionalInt;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 62
    :cond_6
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/GX0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GX0;-><init>()V

    .line 63
    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p3

    .line 64
    invoke-virtual {p0, p3, p2, p1, p5}, Lcom/android/tools/r8/internal/Tj0;->a(Ljava/util/List;Ljava/util/Optional;Lcom/android/tools/r8/internal/Mj0;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Rj0;

    move-result-object p1

    .line 65
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Ljava/util/List;Ljava/util/Optional;Lcom/android/tools/r8/internal/Mj0;Ljava/util/OptionalInt;Ljava/util/List;)V
    .locals 0

    .line 74
    invoke-virtual {p0, p5, p2, p3, p4}, Lcom/android/tools/r8/internal/Tj0;->a(Ljava/util/List;Ljava/util/Optional;Lcom/android/tools/r8/internal/Mj0;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Rj0;

    move-result-object p2

    .line 75
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isAmbiguous()Z
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tj0;->e:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tj0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tj0;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Qj0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Qj0;->b:Ljava/util/List;

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    sget-boolean v3, Lcom/android/tools/r8/internal/Qj0;->d:Z

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/tools/r8/internal/Qj0;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Qj0;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/JV;

    iget-object v0, v0, Lcom/android/tools/r8/internal/JV;->a:Lcom/android/tools/r8/naming/k$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/k$b;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$b;

    iget-object v5, v4, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v5

    if-ne v5, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v5, v4, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v5

    iget-object v6, v4, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v6}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v6

    if-eq v5, v6, :cond_7

    goto :goto_3

    :cond_7
    :goto_1
    if-eq v4, v3, :cond_5

    iget-object v4, v4, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v4, :cond_9

    iget-object v5, v3, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v2

    :cond_9
    :goto_3
    invoke-static {v1}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tj0;->e:Lcom/android/tools/r8/internal/t40;

    sget-boolean v1, Lcom/android/tools/r8/internal/Tj0;->f:Z

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tj0;->e:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tj0;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Qj0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Qj0;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tj0;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/JX0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/JX0;-><init>(Lcom/android/tools/r8/internal/Tj0;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
