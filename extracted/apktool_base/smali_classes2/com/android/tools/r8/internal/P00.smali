.class public final Lcom/android/tools/r8/internal/P00;
.super Lcom/android/tools/r8/internal/qo0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/qo0;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/P00;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/FQ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/FQ0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/android/tools/r8/internal/P00;->a:Ljava/util/Set;

    sget-boolean v0, Lcom/android/tools/r8/internal/TU;->a:Z

    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lcom/android/tools/r8/internal/P00;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/to0;Lcom/android/tools/r8/internal/qo0$a;)V
    .locals 1

    .line 30
    iget-object v0, p1, Lcom/android/tools/r8/internal/to0;->b:Lcom/android/tools/r8/graph/M2;

    .line 31
    iget-object p0, p0, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 32
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 33
    iget-object p0, p2, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/to0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/vo0;Lcom/android/tools/r8/internal/qo0$a;)V
    .locals 1

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vo0;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/O5;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 58
    iget-object p0, p2, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vo0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/to0;Lcom/android/tools/r8/internal/qo0$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/so0;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/to0;->b:Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/to0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/to0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 7
    iget-object p0, p2, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/to0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/vo0;Lcom/android/tools/r8/internal/qo0$a;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/uo0;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vo0;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    .line 13
    new-instance p1, Lcom/android/tools/r8/internal/vo0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/vo0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 14
    iget-object p0, p2, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vo0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/l1;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/P00;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 40
    new-instance v1, Lcom/android/tools/r8/internal/qo0$a;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/qo0$a;-><init>(I)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/qo0;
    .locals 2

    .line 53
    const-string v0, "Prune NonEmptyStartupProfile"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 54
    new-instance v0, Lcom/android/tools/r8/internal/IQ0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/IQ0;-><init>(Lcom/android/tools/r8/graph/O5;)V

    new-instance v1, Lcom/android/tools/r8/internal/JQ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/JQ0;-><init>(Lcom/android/tools/r8/graph/O5;)V

    .line 55
    invoke-interface {p0, v0, v1}, Lcom/android/tools/r8/internal/m1;->a(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/m1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/qo0;

    .line 56
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qo0;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/P00;->b(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qo0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/qo0;
    .locals 1

    .line 38
    new-instance v0, Lcom/android/tools/r8/internal/CQ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/CQ0;-><init>(Lcom/android/tools/r8/internal/P00;Lcom/android/tools/r8/internal/Hz;)V

    const-string p1, "Rewrite NonEmptyStartupProfile"

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/qo0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/to0;Lcom/android/tools/r8/internal/qo0$a;)V
    .locals 2

    .line 19
    iget-object v0, p2, Lcom/android/tools/r8/internal/to0;->b:Lcom/android/tools/r8/graph/M2;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz p1, :cond_1

    .line 25
    instance-of v1, p1, Lcom/android/tools/r8/internal/pb0;

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pb0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    :goto_0
    iget-object p1, p3, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    .line 28
    iget-object p3, p2, Lcom/android/tools/r8/internal/to0;->b:Lcom/android/tools/r8/graph/M2;

    .line 29
    invoke-virtual {p1, p3, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/vo0;Lcom/android/tools/r8/internal/qo0$a;)V
    .locals 3

    .line 41
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/vo0;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->m0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/v2;->b(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz p1, :cond_1

    .line 48
    instance-of v1, p1, Lcom/android/tools/r8/internal/pb0;

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/pb0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    :goto_0
    iget-object p1, p3, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/vo0;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 52
    invoke-virtual {p1, p3, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Wr0;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p1}, Lcom/android/tools/r8/internal/P00;->a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/internal/P00;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/yo0;

    .line 36
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/yo0;->a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/P00;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/P00;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/q1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/P00;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/vo0;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/qo0;
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/m1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/qo0;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qo0;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/GQ0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/GQ0;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    new-instance v1, Lcom/android/tools/r8/internal/HQ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/HQ0;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    invoke-interface {p0, v0, v1}, Lcom/android/tools/r8/internal/m1;->a(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/m1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/qo0;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/P00;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/qo0;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/DQ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/DQ0;-><init>(Lcom/android/tools/r8/internal/P00;Lcom/android/tools/r8/graph/h;)V

    new-instance v1, Lcom/android/tools/r8/internal/EQ0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/EQ0;-><init>(Lcom/android/tools/r8/internal/P00;Lcom/android/tools/r8/graph/h;)V

    invoke-interface {p0, v0, v1}, Lcom/android/tools/r8/internal/m1;->a(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/m1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/qo0;

    return-object p1
.end method

.method public final c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
