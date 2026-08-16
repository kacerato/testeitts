.class public final Lcom/android/tools/r8/synthesis/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/synthesis/d;

.field public b:Ljava/util/IdentityHashMap;

.field public c:Ljava/util/IdentityHashMap;

.field public d:Lcom/android/tools/r8/internal/IC;

.field public e:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/c;->b:Ljava/util/IdentityHashMap;

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/c;->c:Ljava/util/IdentityHashMap;

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/c;->e:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/c;->a:Lcom/android/tools/r8/synthesis/d;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 0

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/android/tools/r8/graph/M2;

    invoke-static {p0}, Lcom/android/tools/r8/internal/Al0;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/O;)Lcom/android/tools/r8/synthesis/c;
    .locals 3

    .line 14
    new-instance v0, Lcom/android/tools/r8/synthesis/P;

    .line 15
    iget-object v1, p1, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 16
    iget-object v2, p1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 17
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/synthesis/P;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/A2;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/synthesis/c;->a(Lcom/android/tools/r8/synthesis/P;)Lcom/android/tools/r8/synthesis/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/synthesis/P;)Lcom/android/tools/r8/synthesis/c;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->c:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/c;->c:Ljava/util/IdentityHashMap;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->c:Ljava/util/IdentityHashMap;

    .line 22
    iget-object v1, p1, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    .line 23
    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 24
    new-instance v2, Lcom/android/tools/r8/synthesis/T0;

    invoke-direct {v2}, Lcom/android/tools/r8/synthesis/T0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/synthesis/X;)Lcom/android/tools/r8/synthesis/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/synthesis/Y;

    .line 2
    iget-object v1, p1, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 3
    iget-object v2, p1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/synthesis/Y;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/M2;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/synthesis/c;->a(Lcom/android/tools/r8/synthesis/Y;)Lcom/android/tools/r8/synthesis/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/synthesis/Y;)Lcom/android/tools/r8/synthesis/c;
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->b:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/c;->b:Ljava/util/IdentityHashMap;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->b:Ljava/util/IdentityHashMap;

    .line 11
    iget-object v1, p1, Lcom/android/tools/r8/synthesis/o;->d:Lcom/android/tools/r8/graph/M2;

    .line 12
    new-instance v2, Lcom/android/tools/r8/synthesis/S0;

    invoke-direct {v2}, Lcom/android/tools/r8/synthesis/S0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/synthesis/d;
    .locals 8

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->b:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/c;->c:Ljava/util/IdentityHashMap;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/c;->e:Ljava/util/IdentityHashMap;

    if-nez v1, :cond_2

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/synthesis/c;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->a:Lcom/android/tools/r8/synthesis/d;

    return-object v0

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/c;->a:Lcom/android/tools/r8/synthesis/d;

    iget-object v1, v1, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    .line 35
    invoke-static {v0, v1}, Lcom/android/tools/r8/synthesis/d;->a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/nC;)Lcom/android/tools/r8/internal/nC;

    move-result-object v5

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->c:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/c;->a:Lcom/android/tools/r8/synthesis/d;

    iget-object v1, v1, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 37
    invoke-static {v0, v1}, Lcom/android/tools/r8/synthesis/d;->a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/nC;)Lcom/android/tools/r8/internal/nC;

    move-result-object v4

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->a:Lcom/android/tools/r8/synthesis/d;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    goto :goto_1

    .line 39
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->e:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_4

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->a:Lcom/android/tools/r8/synthesis/d;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/d;->d:Lcom/android/tools/r8/internal/nC;

    :goto_3
    move-object v6, v0

    goto :goto_4

    .line 41
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/c;->a:Lcom/android/tools/r8/synthesis/d;

    iget-object v1, v1, Lcom/android/tools/r8/synthesis/d;->d:Lcom/android/tools/r8/internal/nC;

    invoke-static {v0, v1}, Lcom/android/tools/r8/synthesis/d;->b(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/nC;)Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    goto :goto_3

    .line 42
    :goto_4
    new-instance v0, Lcom/android/tools/r8/synthesis/d;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/c;->a:Lcom/android/tools/r8/synthesis/d;

    iget-object v3, v1, Lcom/android/tools/r8/synthesis/d;->a:Lcom/android/tools/r8/synthesis/S;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/synthesis/d;-><init>(Lcom/android/tools/r8/synthesis/S;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->e:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/synthesis/R0;

    invoke-direct {v1}, Lcom/android/tools/r8/synthesis/R0;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 30
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/A;)V
    .locals 1

    .line 25
    invoke-interface {p1}, Lcom/android/tools/r8/synthesis/A;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/c;->e:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/c;->e:Ljava/util/IdentityHashMap;

    .line 28
    :cond_0
    new-instance v0, Lcom/android/tools/r8/synthesis/Q0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/synthesis/Q0;-><init>(Lcom/android/tools/r8/synthesis/c;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/synthesis/A;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/t;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/t;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/t;->c()Lcom/android/tools/r8/synthesis/Z;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/synthesis/U0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/synthesis/U0;-><init>(Lcom/android/tools/r8/synthesis/c;)V

    new-instance v1, Lcom/android/tools/r8/synthesis/V0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/synthesis/V0;-><init>(Lcom/android/tools/r8/synthesis/c;)V

    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/synthesis/Z;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
