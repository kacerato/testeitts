.class public abstract Lcom/android/tools/r8/graph/t5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/q5;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/IdentityHashMap;

.field public f:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/t5;->c:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 40
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 41
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/kR;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 42
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 43
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 64
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/t5;
    .locals 3

    .line 12
    new-instance v0, Lcom/android/tools/r8/graph/s5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/s5;-><init>(ZLcom/android/tools/r8/shaking/S0;)V

    .line 13
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/t5;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/s5;

    move-result-object p2

    .line 14
    sget-boolean p3, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez p3, :cond_1

    iget-object v0, p2, Lcom/android/tools/r8/graph/s5;->h:Lcom/android/tools/r8/graph/r5;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;)V

    :cond_2
    if-nez p3, :cond_3

    .line 17
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/s5;->b(Lcom/android/tools/r8/graph/d1;)V

    .line 18
    :cond_3
    iput-object v2, p2, Lcom/android/tools/r8/graph/s5;->h:Lcom/android/tools/r8/graph/r5;

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/v0;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/t5;
    .locals 1

    .line 38
    new-instance v0, Lcom/android/tools/r8/graph/dg;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/graph/dg;-><init>(Lcom/android/tools/r8/graph/t5;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    const-string p1, "Rewrite ObjectAllocationInfoCollectionImpl"

    invoke-virtual {p4, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/t5;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 2
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/graph/lg;

    invoke-direct {v1, p4, v0}, Lcom/android/tools/r8/graph/lg;-><init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {p1, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    if-nez p4, :cond_2

    .line 5
    iget-object p4, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {p4, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Iterable;

    invoke-virtual {v0, p4}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 6
    iget-object p4, p0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p4, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/kR;

    .line 7
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/Zs0;

    .line 8
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 10
    :cond_2
    invoke-virtual {v0, p4}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    :goto_0
    new-instance p1, Lcom/android/tools/r8/graph/mg;

    invoke-direct {p1, p0, p2, v0, p3}, Lcom/android/tools/r8/graph/mg;-><init>(Lcom/android/tools/r8/graph/t5;Ljava/util/function/Function;Lcom/android/tools/r8/internal/Yx0;Ljava/util/function/Function;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Yx0;Ljava/util/function/Function;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 47
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t5;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    iget-object v0, p4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 55
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 56
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 57
    iget-object p1, p0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    iget-object p2, p4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    sget-object p4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/kR;

    .line 58
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Zs0;

    .line 59
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 60
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 61
    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/h;)V
    .locals 1

    .line 39
    new-instance v0, Lcom/android/tools/r8/graph/eg;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/graph/eg;-><init>(Ljava/util/function/Consumer;)V

    new-instance p2, Lcom/android/tools/r8/graph/fg;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/graph/fg;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1, v0, p2, p4}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;)V
    .locals 2

    .line 24
    iget-object p1, p1, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 25
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    .line 27
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/gg;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/gg;-><init>(Ljava/util/Set;)V

    .line 28
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/graph/hg;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/hg;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->c:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/graph/ig;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/ig;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/graph/jg;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/jg;-><init>(Ljava/util/Set;)V

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 33
    sget-boolean v1, Lcom/android/tools/r8/graph/t5;->g:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected removal of an interface marking an unknown hierarchy."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 34
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/kg;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/kg;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 63
    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract a(Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/i;)V
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    .line 22
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t5;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/graph/t5;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 7
    new-instance v3, Lcom/android/tools/r8/graph/cg;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/graph/cg;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 8
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/graph/t5;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t5;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
