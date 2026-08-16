.class public Lcom/android/tools/r8/dex/w;
.super Lcom/android/tools/r8/dex/Y;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/dex/J;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/J;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/dex/Y;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/naming/b;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_4

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 43
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    iget-object v2, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 45
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 46
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 47
    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-static {v5, p1}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;Lcom/android/tools/r8/naming/b;)Ljava/lang/String;

    move-result-object v5

    .line 49
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v2, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;Lcom/android/tools/r8/naming/b;)Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v4, Lcom/android/tools/r8/naming/V$b;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v2, v3}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    iget-object v0, p1, Lcom/android/tools/r8/naming/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/V$c;

    if-eqz v0, :cond_1

    move-object v4, v0

    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/naming/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_1
    check-cast v4, Lcom/android/tools/r8/naming/V$b;

    .line 56
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/naming/b;->b(Ljava/lang/String;)Lcom/android/tools/r8/naming/k;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 57
    :cond_2
    invoke-interface {v0, v4}, Lcom/android/tools/r8/naming/h;->a(Lcom/android/tools/r8/naming/V$c;)Lcom/android/tools/r8/naming/V;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v4

    .line 59
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {p1}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/naming/V$b;

    move-result-object v4

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    .line 62
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Yd0;)Ljava/util/ArrayList;
    .locals 6

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/h80;->k()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Lcom/android/tools/r8/dex/v;

    iget-object v3, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/dex/v;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 7
    check-cast p1, Lcom/android/tools/r8/internal/bd0;

    .line 8
    new-instance v3, Lcom/android/tools/r8/internal/ad0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/ad0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    .line 9
    :goto_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ed0;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, v3, Lcom/android/tools/r8/internal/ad0;->g:Lcom/android/tools/r8/internal/gd0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/gd0;->c:[Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ed0;->b()I

    move-result v4

    aget-object p1, p1, v4

    .line 11
    check-cast p1, Lcom/android/tools/r8/graph/H2;

    .line 12
    new-instance v4, Lu/P0;

    invoke-direct {v4}, Lu/P0;-><init>()V

    new-instance v5, Lu/J1;

    invoke-direct {v5, p0, v2, v1, v0}, Lu/J1;-><init>(Lcom/android/tools/r8/dex/w;Lcom/android/tools/r8/dex/v;Ljava/util/List;Lcom/android/tools/r8/internal/h80;)V

    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lu/K1;

    invoke-direct {p1, v0}, Lu/K1;-><init>(Lcom/android/tools/r8/internal/h80;)V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v3, Lcom/android/tools/r8/internal/C2;->G:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Lu/L1;

    invoke-direct {v0, v2}, Lu/L1;-><init>(Lcom/android/tools/r8/dex/v;)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v1

    .line 18
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v1
.end method

.method public a()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->h:Lcom/android/tools/r8/internal/k20;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/dex/v;Ljava/util/List;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 19
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->R0()Lcom/android/tools/r8/graph/f3;

    move-result-object v0

    .line 20
    sget-boolean v1, Lcom/android/tools/r8/dex/w;->d:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->v1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-object v2, Lcom/android/tools/r8/internal/C2;->G:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    sget-boolean v1, Lcom/android/tools/r8/dex/v;->c:Z

    if-nez v1, :cond_3

    .line 24
    iget-object v1, p1, Lcom/android/tools/r8/dex/v;->b:Lcom/android/tools/r8/graph/y;

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_3
    :goto_1
    iget-object v1, p1, Lcom/android/tools/r8/dex/v;->a:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Lcom/android/tools/r8/dex/v;->a:Ljava/util/HashMap;

    .line 30
    :cond_4
    iget-object v1, p1, Lcom/android/tools/r8/dex/v;->b:Lcom/android/tools/r8/graph/y;

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/e3;

    move-result-object v0

    .line 32
    iget-object v1, p1, Lcom/android/tools/r8/dex/v;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/dex/v;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 34
    :cond_5
    iget-object p1, p1, Lcom/android/tools/r8/dex/v;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_6
    :goto_2
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/android/tools/r8/dex/w;->b:Lcom/android/tools/r8/graph/y;

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/tools/r8/dex/w;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/naming/b;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    sget-object p2, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 40
    new-instance v0, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v0, p2, p4}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 41
    iget-object p2, p3, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public b()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->e:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->f:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->g:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/w;->a(Lcom/android/tools/r8/internal/Yd0;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->j:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->d:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/w;->c:Lcom/android/tools/r8/dex/J;

    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->c:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method
