.class public final Lcom/android/tools/r8/shaking/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Es0;
.implements Lcom/android/tools/r8/internal/oK;
.implements Lcom/android/tools/r8/internal/fx;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/shaking/N;

.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:Lcom/android/tools/r8/graph/L2;

.field public final e:Lcom/android/tools/r8/graph/L2;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/g0;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/g0;->g:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/g0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/g0;->b:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    const-string p2, "Lorg/mockito/Mockito;"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/g0;->c:Lcom/android/tools/r8/graph/M2;

    const-string p2, "mock"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/g0;->d:Lcom/android/tools/r8/graph/L2;

    const-string p2, "spy"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/g0;->e:Lcom/android/tools/r8/graph/L2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/H1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->q()Lcom/android/tools/r8/shaking/H1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/shaking/g0;->b:Lcom/android/tools/r8/shaking/N;

    .line 34
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 35
    new-instance v1, Lcom/android/tools/r8/shaking/lc;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/lc;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/shaking/g0;->b:Lcom/android/tools/r8/shaking/N;

    .line 37
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/shaking/mc;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/mc;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v0, Lcom/android/tools/r8/shaking/nc;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/nc;-><init>(Lcom/android/tools/r8/shaking/g0;)V

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/shaking/g0;->b:Lcom/android/tools/r8/shaking/N;

    .line 40
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 41
    new-instance v1, Lcom/android/tools/r8/shaking/oc;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/oc;-><init>()V

    .line 42
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 9

    .line 44
    iget-object v0, p1, Lcom/android/tools/r8/shaking/N;->i:Lcom/android/tools/r8/graph/Y5;

    .line 45
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 46
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/android/tools/r8/shaking/g0;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 49
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H5;

    .line 50
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/Y5;->b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 54
    iget-object v6, p0, Lcom/android/tools/r8/shaking/g0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v7

    .line 56
    iget-object v8, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v5, v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v6, v5}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v7

    .line 57
    :goto_2
    invoke-static {v7}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 58
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 59
    :cond_4
    iget-object v7, p0, Lcom/android/tools/r8/shaking/g0;->f:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/Y5;->b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/g0;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 62
    iget-object v2, p1, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 63
    iget-object v2, v2, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 64
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/g0;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/g0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/shaking/g0;->d:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/shaking/g0;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/g0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p2

    .line 10
    iget-object p2, p2, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    goto/16 :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NJ;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p2

    if-nez p2, :cond_3

    return v4

    .line 14
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    if-nez p2, :cond_4

    return v4

    .line 15
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v3

    if-ne v3, v4, :cond_e

    .line 17
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 19
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 20
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    if-nez p2, :cond_8

    return v4

    .line 21
    :cond_8
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/shaking/g0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 24
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p2, v2, :cond_9

    goto :goto_0

    :cond_9
    invoke-interface {v0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 25
    :goto_0
    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/shaking/g0;->g:Ljava/util/IdentityHashMap;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_1
    if-eqz p2, :cond_e

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/shaking/g0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 29
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p2, v2, :cond_b

    goto :goto_2

    :cond_b
    invoke-interface {v0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 30
    :goto_2
    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-nez p2, :cond_c

    goto :goto_3

    .line 31
    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/shaking/g0;->f:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    .line 32
    :cond_d
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    goto :goto_1

    :cond_e
    :goto_3
    return v4

    :cond_f
    return v2
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object p2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/g0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/g0;->d:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/g0;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/g0;->b:Lcom/android/tools/r8/shaking/N;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_1
    return-void
.end method
