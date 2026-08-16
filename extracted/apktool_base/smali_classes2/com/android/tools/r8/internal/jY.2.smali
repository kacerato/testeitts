.class public abstract Lcom/android/tools/r8/internal/jY;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->i()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p1, p3, p4}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/IA$a;

    return-void

    .line 26
    :cond_0
    invoke-virtual {p2, p3, p4}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/IA$a;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    new-instance p0, Lcom/android/tools/r8/internal/Gf1;

    invoke-direct {p0, p1, p3}, Lcom/android/tools/r8/internal/Gf1;-><init>(Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;)V

    invoke-interface {p4, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->h()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/Hf1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/tools/r8/internal/Hf1;-><init>(Ljava/util/Map;Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Lcom/android/tools/r8/internal/IA$a;)V

    invoke-interface {p4, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->b()Ljava/util/Map;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->b()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Lf1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Lf1;-><init>(Ljava/util/Map;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V

    .line 9
    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/L4;)V
    .locals 0

    .line 10
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_0

    .line 11
    iget-object p0, p1, Lcom/android/tools/r8/internal/IA$a;->t:Ljava/util/IdentityHashMap;

    .line 12
    invoke-virtual {p0, p3, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 13
    :cond_0
    iget-object p0, p2, Lcom/android/tools/r8/internal/IA$a;->t:Ljava/util/IdentityHashMap;

    .line 14
    invoke-virtual {p0, p3, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 1

    .line 1
    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-boolean p2, Lcom/android/tools/r8/internal/jY;->a:Z

    if-nez p2, :cond_1

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/tools/r8/internal/IA$a;->r:Ljava/util/IdentityHashMap;

    .line 4
    invoke-virtual {p0, p3, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_2
    iget-object p0, p2, Lcom/android/tools/r8/internal/IA$a;->r:Ljava/util/IdentityHashMap;

    .line 6
    invoke-virtual {p0, p3, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-interface {p0, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p1, p2, p4, p5}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    invoke-virtual {p3, p2, p4, p5}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/Bf1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Bf1;-><init>(Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 31
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_0

    .line 32
    invoke-interface {p1, p3, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_0
    invoke-interface {p2, p3, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/internal/JA;)V
    .locals 0

    .line 28
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/JA;

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/JA;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    invoke-interface {p1, p3, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 30
    :cond_0
    invoke-interface {p2, p3, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/util/Set;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/android/tools/r8/internal/Ff1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Ff1;-><init>(Ljava/util/Set;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/n1;)V
    .locals 0

    .line 35
    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 37
    :cond_0
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/jY;->d(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/jY;->c(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->e()Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->e()Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/If1;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/If1;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/If1;

    invoke-direct {v3, p3}, Lcom/android/tools/r8/internal/If1;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/jY;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->g()Ljava/util/Map;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->g()Ljava/util/Map;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/Jf1;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/Jf1;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 11
    new-instance v3, Lcom/android/tools/r8/internal/Jf1;

    invoke-direct {v3, p3}, Lcom/android/tools/r8/internal/Jf1;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 12
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/jY;->b(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA;->i:Lcom/android/tools/r8/internal/nC;

    .line 14
    iget-object v1, p1, Lcom/android/tools/r8/internal/IA;->i:Lcom/android/tools/r8/internal/nC;

    .line 15
    new-instance v2, Lcom/android/tools/r8/internal/Kf1;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/Kf1;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 16
    new-instance v3, Lcom/android/tools/r8/internal/Kf1;

    invoke-direct {v3, p3}, Lcom/android/tools/r8/internal/Kf1;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 17
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/jY;->b(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->f()Ljava/util/Map;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->f()Ljava/util/Map;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/android/tools/r8/internal/LJ0;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/LJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 21
    new-instance v3, Lcom/android/tools/r8/internal/LJ0;

    invoke-direct {v3, p3}, Lcom/android/tools/r8/internal/LJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/jY;->b(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->c()Ljava/util/Map;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->c()Ljava/util/Map;

    move-result-object v1

    .line 25
    new-instance v2, Lcom/android/tools/r8/internal/MJ0;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/MJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 26
    new-instance v3, Lcom/android/tools/r8/internal/MJ0;

    invoke-direct {v3, p3}, Lcom/android/tools/r8/internal/MJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 27
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/jY;->b(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->d()Ljava/util/Set;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->d()Ljava/util/Set;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/android/tools/r8/internal/NJ0;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/NJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 31
    new-instance v3, Lcom/android/tools/r8/internal/NJ0;

    invoke-direct {v3, p3}, Lcom/android/tools/r8/internal/NJ0;-><init>(Lcom/android/tools/r8/internal/IA$a;)V

    .line 32
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/jY;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 33
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/jY;->e(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V

    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/jY;->a(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V

    return-void
.end method

.method public static b(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/tools/r8/internal/Df1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Df1;-><init>(Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static c(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->h()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Ef1;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/tools/r8/internal/Ef1;-><init>(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static d(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->i()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Cf1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Cf1;-><init>(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static e(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->j()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IA;->j()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Mf1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Mf1;-><init>(Ljava/util/Map;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/internal/IA$a;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
