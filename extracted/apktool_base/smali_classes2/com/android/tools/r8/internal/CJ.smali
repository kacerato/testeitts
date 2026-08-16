.class public Lcom/android/tools/r8/internal/CJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Block:",
        "Ljava/lang/Object;",
        "Instruction::",
        "Lcom/android/tools/r8/internal/I;",
        "StateType:",
        "Lcom/android/tools/r8/internal/D1<",
        "TStateType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/D1;

.field public final c:Lcom/android/tools/r8/internal/hi;

.field public final d:Lcom/android/tools/r8/internal/E1;

.field public final e:Ljava/util/IdentityHashMap;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Lcom/android/tools/r8/internal/DJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;Lcom/android/tools/r8/internal/hi;Lcom/android/tools/r8/internal/E1;Lcom/android/tools/r8/internal/DJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/CJ;->e:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/CJ;->f:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/CJ;->g:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/CJ;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/CJ;->b:Lcom/android/tools/r8/internal/D1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    iput-object p4, p0, Lcom/android/tools/r8/internal/CJ;->d:Lcom/android/tools/r8/internal/E1;

    iput-object p5, p0, Lcom/android/tools/r8/internal/CJ;->h:Lcom/android/tools/r8/internal/DJ;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/hi;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->d:Lcom/android/tools/r8/internal/E1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CJ;->b:Lcom/android/tools/r8/internal/D1;

    .line 60
    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/internal/E1;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/CJ;->a:Lcom/android/tools/r8/graph/y;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CJ;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/tools/r8/internal/CJ;->e:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Lcom/android/tools/r8/internal/CJ;->b:Lcom/android/tools/r8/internal/D1;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/D1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/D1;->clone()Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CJ;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    .line 64
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/D1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/hi;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->g:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CJ;->b:Lcom/android/tools/r8/internal/D1;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/D1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/D1;->clone()Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    return-object p1

    .line 67
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CJ;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->e:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CJ;->b:Lcom/android/tools/r8/internal/D1;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/D1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/D1;->clone()Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    return-object p1

    .line 69
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CJ;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Yi;
    .locals 7

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/mB0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/mB0;-><init>(Lcom/android/tools/r8/internal/CJ;Ljava/lang/Object;)V

    .line 5
    const-string v2, "Compute block entry state"

    invoke-virtual {p2, v2, v1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/D1;

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/CJ;->d:Lcom/android/tools/r8/internal/E1;

    invoke-interface {v2, v0, v1}, Lcom/android/tools/r8/internal/E1;->b(Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Os0;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Lcom/android/tools/r8/internal/Os0;->a()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/CJ;->d:Lcom/android/tools/r8/internal/E1;

    invoke-interface {p1, v4, v1}, Lcom/android/tools/r8/internal/E1;->a(Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/Os0;)Lcom/android/tools/r8/internal/Xi;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-interface {v2}, Lcom/android/tools/r8/internal/Os0;->c()Lcom/android/tools/r8/internal/D1;

    move-result-object v1

    .line 10
    const-string v2, "Compute transfers"

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-object v2, v4

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v3, v0}, Lcom/android/tools/r8/internal/hi;->f(Ljava/lang/Object;)Z

    move-result v3

    .line 12
    iget-object v5, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    new-instance v6, Lcom/android/tools/r8/internal/nB0;

    invoke-direct {v6, p0, v3, v0}, Lcom/android/tools/r8/internal/nB0;-><init>(Lcom/android/tools/r8/internal/CJ;ZLjava/lang/Object;)V

    .line 13
    invoke-interface {v5, v0, v6, v1}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->a()Lcom/android/tools/r8/internal/Ws0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ws0;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Yi;

    return-object p1

    .line 17
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/D1;

    .line 18
    iget-object v3, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v3, v0}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v3, v0}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    iget-object v5, p0, Lcom/android/tools/r8/internal/CJ;->h:Lcom/android/tools/r8/internal/DJ;

    .line 20
    iget-boolean v5, v5, Lcom/android/tools/r8/internal/DJ;->a:Z

    if-eqz v5, :cond_3

    .line 21
    iget-object v5, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 22
    invoke-interface {v5, v3}, Lcom/android/tools/r8/internal/hi;->c(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 23
    invoke-interface {v5, v3}, Lcom/android/tools/r8/internal/hi;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 24
    iget-object v5, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 25
    invoke-interface {v5}, Lcom/android/tools/r8/internal/hi;->a()Ljava/lang/Object;

    move-result-object v5

    if-eq v3, v5, :cond_3

    iget-object v5, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 26
    invoke-interface {v5, v3}, Lcom/android/tools/r8/internal/hi;->e(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 27
    iget-object v3, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v3, v0}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v2, v0

    move-object v0, v4

    :goto_1
    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 29
    sget-boolean v0, Lcom/android/tools/r8/internal/CJ;->i:Z

    if-nez v0, :cond_5

    .line 30
    iget-object v3, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/android/tools/r8/internal/CJ;->h:Lcom/android/tools/r8/internal/DJ;

    .line 32
    iget-boolean v4, v4, Lcom/android/tools/r8/internal/DJ;->a:Z

    if-eqz v4, :cond_5

    .line 33
    iget-object v4, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 34
    invoke-interface {v4, v3}, Lcom/android/tools/r8/internal/hi;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 35
    invoke-interface {v4, v3}, Lcom/android/tools/r8/internal/hi;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    iget-object v4, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 37
    invoke-interface {v4}, Lcom/android/tools/r8/internal/hi;->a()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 38
    invoke-interface {v4, v3}, Lcom/android/tools/r8/internal/hi;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 39
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/CJ;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/D1;

    if-nez v0, :cond_7

    if-eqz v3, :cond_7

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/internal/D1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_7
    :goto_3
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/D1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    new-instance v3, Lcom/android/tools/r8/internal/oB0;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/oB0;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {v0, v3, v2}, Lcom/android/tools/r8/internal/hi;->c(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 44
    :cond_8
    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/internal/CJ;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)V

    goto/16 :goto_0

    .line 45
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Yi$a;

    iget-object p2, p0, Lcom/android/tools/r8/internal/CJ;->f:Ljava/util/IdentityHashMap;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Yi$a;-><init>(Ljava/util/IdentityHashMap;)V

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->d:Lcom/android/tools/r8/internal/E1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CJ;->f:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Lcom/android/tools/r8/internal/CJ;->b:Lcom/android/tools/r8/internal/D1;

    .line 71
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/D1;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/D1;->clone()Lcom/android/tools/r8/internal/D1;

    move-result-object v1

    .line 72
    invoke-interface {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/E1;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/android/tools/r8/internal/CJ;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/D1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final a(ZLjava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 46
    invoke-interface {p3}, Lcom/android/tools/r8/internal/I;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/CJ;->d:Lcom/android/tools/r8/internal/E1;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/tools/r8/internal/CJ;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;)V

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/CJ;->d:Lcom/android/tools/r8/internal/E1;

    .line 50
    invoke-interface {p1, p3, p4}, Lcom/android/tools/r8/internal/E1;->a(Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Os0;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Os0;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 52
    iget-object p2, p0, Lcom/android/tools/r8/internal/CJ;->d:Lcom/android/tools/r8/internal/E1;

    .line 53
    invoke-interface {p2, p3, p1}, Lcom/android/tools/r8/internal/E1;->a(Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/Os0;)Lcom/android/tools/r8/internal/Xi;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 55
    :cond_1
    sget-boolean p2, Lcom/android/tools/r8/internal/CJ;->i:Z

    if-nez p2, :cond_3

    invoke-interface {p1}, Lcom/android/tools/r8/internal/Os0;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Os0;->c()Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    new-instance v1, Lcom/android/tools/r8/internal/rB0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/rB0;-><init>(Lcom/android/tools/r8/internal/CJ;Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)V

    invoke-interface {v0, v1, p1}, Lcom/android/tools/r8/internal/hi;->b(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;Ljava/lang/Object;)V
    .locals 2

    .line 76
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/CJ;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->d:Lcom/android/tools/r8/internal/E1;

    invoke-interface {v0, p3, p1, p2}, Lcom/android/tools/r8/internal/E1;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/android/tools/r8/internal/CJ;->e:Ljava/util/IdentityHashMap;

    .line 79
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->b:Lcom/android/tools/r8/internal/D1;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/D1;

    .line 80
    iget-object v1, p0, Lcom/android/tools/r8/internal/CJ;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/D1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    new-instance v1, Lcom/android/tools/r8/internal/pB0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/pB0;-><init>(Lcom/android/tools/r8/internal/CJ;Ljava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;)V

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->d:Lcom/android/tools/r8/internal/E1;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p5

    .line 83
    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/E1;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/android/tools/r8/internal/CJ;->g:Ljava/util/IdentityHashMap;

    .line 85
    iget-object p3, p0, Lcom/android/tools/r8/internal/CJ;->b:Lcom/android/tools/r8/internal/D1;

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/D1;

    .line 86
    iget-object p5, p0, Lcom/android/tools/r8/internal/CJ;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, p5, p1}, Lcom/android/tools/r8/internal/D1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/hi;->d(Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    new-instance v1, Lcom/android/tools/r8/internal/qB0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/qB0;-><init>(Lcom/android/tools/r8/internal/CJ;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/CJ;->b:Lcom/android/tools/r8/internal/D1;

    invoke-interface {v0, p1, v2, v1}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/D1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/D1;->clone()Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CJ;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Lcom/android/tools/r8/internal/Yi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBlock;)",
            "Lcom/android/tools/r8/internal/Yi;"
        }
    .end annotation

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/CJ;->a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Yi;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/sB0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/sB0;-><init>(Lcom/android/tools/r8/internal/CJ;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/at0;->a(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
