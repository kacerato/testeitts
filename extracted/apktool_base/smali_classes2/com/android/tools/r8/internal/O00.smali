.class public final Lcom/android/tools/r8/internal/O00;
.super Lcom/android/tools/r8/internal/v50;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/QF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/QF;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/v50;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/O00;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/QF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Should use bottom() instead"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 19
    sget-object p0, Lcom/android/tools/r8/internal/uv0;->a:Lcom/android/tools/r8/internal/uv0;

    return-object p0
.end method

.method public static synthetic a(ILjava/util/function/BiFunction;ILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/u50;
    .locals 0

    if-ne p2, p0, :cond_0

    .line 44
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/u50;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/u50;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method

.method public static a([IILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/u50;
    .locals 3

    .line 28
    sget-boolean v0, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 29
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    .line 30
    new-instance p0, Lcom/android/tools/r8/internal/ZO0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ZO0;-><init>()V

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/u50;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/u50;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static a(Lcom/android/tools/r8/internal/FF;ILcom/android/tools/r8/internal/u50;)V
    .locals 2

    .line 65
    sget-object v0, Lcom/android/tools/r8/internal/u7;->a:Lcom/android/tools/r8/internal/u7;

    .line 66
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/DF;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 67
    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/u50;

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    instance-of v1, p2, Lcom/android/tools/r8/internal/vv0;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/android/tools/r8/internal/vv0;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/u50;->a()Lcom/android/tools/r8/internal/N00;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u50;->a()Lcom/android/tools/r8/internal/N00;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/N00;->a(Lcom/android/tools/r8/internal/N00;)Lcom/android/tools/r8/internal/u50;

    move-result-object p2

    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    sget-object p2, Lcom/android/tools/r8/internal/vv0;->a:Lcom/android/tools/r8/internal/vv0;

    .line 72
    :goto_1
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/DF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 2
    sget-object p0, Lcom/android/tools/r8/internal/uv0;->a:Lcom/android/tools/r8/internal/uv0;

    return-object p0
.end method

.method public static synthetic b(ILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/u50;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/u50;->b()Lcom/android/tools/r8/internal/u50;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/QF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/QF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/XO0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/XO0;-><init>(Lcom/android/tools/r8/internal/FF;)V

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/QF;->b()Lcom/android/tools/r8/internal/I30;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/NF;

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/JF;

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    .line 8
    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/JF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    .line 9
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OF;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/JF;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/EF;

    .line 10
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Lcom/android/tools/r8/internal/ZH;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/O00;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/O00;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/bI;)Lcom/android/tools/r8/internal/O00;
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QF;->b()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/NF;

    .line 46
    new-instance v1, Lcom/android/tools/r8/internal/JF;

    .line 47
    iget-object v0, v0, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    .line 48
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/JF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    const/4 v0, 0x0

    .line 49
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/OF;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/JF;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/EF;

    .line 50
    invoke-interface {v2}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v3

    .line 51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/u50;

    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/u50;

    invoke-interface {p1, v3, v2}, Lcom/android/tools/r8/internal/bI;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/u50;

    if-eq v2, v4, :cond_3

    if-nez v0, :cond_2

    .line 53
    new-instance v0, Lcom/android/tools/r8/internal/QF;

    const/16 v4, 0x10

    .line 54
    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/QF;-><init>(I)V

    .line 55
    iget-object v4, p0, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/QF;->b()Lcom/android/tools/r8/internal/I30;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/NF;

    .line 56
    new-instance v5, Lcom/android/tools/r8/internal/JF;

    .line 57
    iget-object v4, v4, Lcom/android/tools/r8/internal/NF;->b:Lcom/android/tools/r8/internal/QF;

    .line 58
    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/JF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    .line 59
    :goto_1
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/OF;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/JF;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/EF;

    .line 60
    invoke-interface {v4}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result v6

    if-ne v6, v3, :cond_1

    goto :goto_2

    .line 61
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/u50;

    invoke-virtual {v0, v6, v4}, Lcom/android/tools/r8/internal/QF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 62
    :cond_2
    :goto_2
    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/QF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/QF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 64
    new-instance p1, Lcom/android/tools/r8/internal/O00;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/O00;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-object p1

    :cond_5
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/O00;
    .locals 1

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/WO0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/WO0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/O00;
    .locals 2

    .line 38
    sget-object v0, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    sget-object v1, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 40
    sget-boolean v0, Lcom/android/tools/r8/internal/O00;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p1

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p1

    .line 43
    new-instance v0, Lcom/android/tools/r8/internal/VO0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/VO0;-><init>(ILjava/util/function/BiFunction;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/bI;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/O00;
    .locals 4

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 33
    sget-object v2, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    sget-object v3, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 35
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/O00;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/O00;
    .locals 5

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v3

    const/4 v4, 0x1

    .line 25
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v3

    .line 26
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/YO0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/YO0;-><init>([I)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/bI;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/u50;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/android/tools/r8/internal/vv0;->a:Lcom/android/tools/r8/internal/vv0;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/u50;

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/v50;
    .locals 2

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/QF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/QF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/QF;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    sget-object p1, Lcom/android/tools/r8/internal/v7;->b:Lcom/android/tools/r8/internal/v7;

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/O00;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/O00;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-object p1
.end method

.method public final d()Lcom/android/tools/r8/internal/O00;
    .locals 0

    return-object p0
.end method

.method public final e()Lcom/android/tools/r8/internal/v50;
    .locals 7

    new-instance v0, Lcom/android/tools/r8/internal/UO0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UO0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/bI;)Lcom/android/tools/r8/internal/O00;

    move-result-object v0

    iget-object v1, v0, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/QF;->values()Lcom/android/tools/r8/internal/w30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/IF;

    new-instance v2, Lcom/android/tools/r8/internal/PF;

    iget-object v1, v1, Lcom/android/tools/r8/internal/IF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/PF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    const/4 v1, 0x1

    move v3, v1

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OF;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/tools/r8/internal/PF;->h:Lcom/android/tools/r8/internal/QF;

    iget-object v4, v4, Lcom/android/tools/r8/internal/QF;->c:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OF;->a()I

    move-result v5

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/tools/r8/internal/u50;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Lcom/android/tools/r8/internal/u7;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    move v1, v6

    :cond_1
    instance-of v4, v4, Lcom/android/tools/r8/internal/vv0;

    if-nez v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/v7;->b:Lcom/android/tools/r8/internal/v7;

    return-object v0

    :cond_3
    if-eqz v3, :cond_4

    sget-object v0, Lcom/android/tools/r8/internal/wv0;->b:Lcom/android/tools/r8/internal/wv0;

    :cond_4
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/O00;

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/O00;

    iget-object v0, p0, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    iget-object p1, p1, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/N;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O00;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QF;->hashCode()I

    move-result v0

    return v0
.end method
