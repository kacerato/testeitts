.class public final Lcom/android/tools/r8/shaking/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/shaking/f1;

.field public b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/f1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    sget-boolean v0, Lcom/android/tools/r8/shaking/d1;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/f1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/f1;)Lcom/android/tools/r8/shaking/f1;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    .line 45
    :cond_0
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/shaking/f1;->a(Lcom/android/tools/r8/shaking/f1;)Lcom/android/tools/r8/shaking/f1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/g1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/f1;)Lcom/android/tools/r8/shaking/f1;
    .locals 1

    .line 66
    new-instance v0, Lcom/android/tools/r8/shaking/f1;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/shaking/f1;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/g1;)V

    if-nez p2, :cond_0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/f1;->a(Lcom/android/tools/r8/shaking/f1;)Lcom/android/tools/r8/shaking/f1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/i1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f1;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/shaking/d1;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/shaking/h1;->a:Lcom/android/tools/r8/shaking/h1;

    return-object v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/android/tools/r8/shaking/c1;->a:Lcom/android/tools/r8/shaking/c1;

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lcom/android/tools/r8/shaking/e1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/e1;-><init>(Lcom/android/tools/r8/shaking/f1;Ljava/util/IdentityHashMap;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/f1;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/Yb;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/shaking/Yb;-><init>(Lcom/android/tools/r8/shaking/f1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/g1;)V
    .locals 2

    .line 61
    sget-boolean v0, Lcom/android/tools/r8/shaking/d1;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_3

    .line 64
    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/Wb;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/shaking/Wb;-><init>(Lcom/android/tools/r8/shaking/g1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/d1;)V
    .locals 3

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f1;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 14
    sget-object p1, Lcom/android/tools/r8/shaking/f1;->d:Lcom/android/tools/r8/shaking/f1;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 15
    iput-object v1, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/shaking/d1;->c:Z

    if-nez v0, :cond_7

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f1;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 20
    iget-object v2, p1, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/f1;->a(Lcom/android/tools/r8/shaking/f1;)Lcom/android/tools/r8/shaking/f1;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/f1;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22
    sget-object p1, Lcom/android/tools/r8/shaking/f1;->d:Lcom/android/tools/r8/shaking/f1;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 23
    iput-object v1, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/shaking/d1;->c:Z

    if-nez v0, :cond_7

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f1;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_4
    iget-object v1, p1, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    if-eqz v1, :cond_6

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_5

    .line 29
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    invoke-direct {v0, p1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    goto :goto_0

    .line 30
    :cond_5
    new-instance p1, Lcom/android/tools/r8/shaking/Xb;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/shaking/Xb;-><init>(Lcom/android/tools/r8/shaking/d1;)V

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/d1;->b()V

    return-void

    .line 32
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    if-eq p1, v0, :cond_7

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/d1;->b()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/g1;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 50
    :cond_2
    sget-object p1, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    .line 51
    :goto_0
    sget-object v0, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    if-ne p1, v0, :cond_3

    .line 52
    sget-object p1, Lcom/android/tools/r8/shaking/f1;->d:Lcom/android/tools/r8/shaking/f1;

    goto :goto_2

    .line 53
    :cond_3
    sget-object v0, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    if-ne p1, v0, :cond_4

    .line 54
    sget-object p1, Lcom/android/tools/r8/shaking/f1;->e:Lcom/android/tools/r8/shaking/f1;

    goto :goto_2

    .line 55
    :cond_4
    sget-object v0, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    if-ne p1, v0, :cond_5

    .line 56
    sget-object p1, Lcom/android/tools/r8/shaking/f1;->f:Lcom/android/tools/r8/shaking/f1;

    goto :goto_2

    .line 57
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/shaking/f1;->g:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 58
    :cond_7
    :goto_1
    sget-object p1, Lcom/android/tools/r8/shaking/f1;->c:Lcom/android/tools/r8/shaking/f1;

    .line 59
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/d1;->b()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/i1;)Z
    .locals 4

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    instance-of v0, p1, Lcom/android/tools/r8/shaking/c1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 36
    iget-object p1, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 37
    iget-object p1, p1, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 39
    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/shaking/h1;

    if-eqz v0, :cond_2

    .line 40
    iget-object p1, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f1;->a()Z

    move-result p1

    return p1

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/i1;->a()Lcom/android/tools/r8/shaking/e1;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    iget-object v3, p1, Lcom/android/tools/r8/shaking/e1;->a:Lcom/android/tools/r8/shaking/f1;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/e1;->b:Ljava/util/IdentityHashMap;

    .line 43
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/shaking/d1;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/f1;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    iget-object v5, p0, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    iget-object v5, v5, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_5
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->size()I

    move-result v3

    if-ne v0, v3, :cond_7

    iput-object v1, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/kg;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/kg;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_8
    :goto_2
    return-void
.end method
