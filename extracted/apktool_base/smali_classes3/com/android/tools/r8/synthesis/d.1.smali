.class public final Lcom/android/tools/r8/synthesis/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/synthesis/S;

.field public final b:Lcom/android/tools/r8/internal/nC;

.field public final c:Lcom/android/tools/r8/internal/nC;

.field public final d:Lcom/android/tools/r8/internal/nC;

.field public final e:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/S;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/d;->a:Lcom/android/tools/r8/synthesis/S;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    iput-object p4, p0, Lcom/android/tools/r8/synthesis/d;->d:Lcom/android/tools/r8/internal/nC;

    iput-object p5, p0, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    sget-boolean p1, Lcom/android/tools/r8/synthesis/d;->f:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/d;->a()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/nC;)Lcom/android/tools/r8/internal/nC;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lcom/android/tools/r8/synthesis/b1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/synthesis/b1;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;Ljava/util/Collection;)V
    .locals 2

    .line 33
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 34
    sget-boolean v1, Lcom/android/tools/r8/synthesis/d;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/x0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing synthetic: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/synthesis/a1;

    invoke-direct {v0}, Lcom/android/tools/r8/synthesis/a1;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/synthesis/d1;

    invoke-direct {v0}, Lcom/android/tools/r8/synthesis/d1;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/synthesis/d;->f:Z

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to be a synthetic"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/util/List;)V
    .locals 0

    .line 24
    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static b(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/nC;)Lcom/android/tools/r8/internal/nC;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/android/tools/r8/synthesis/Z0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/synthesis/Z0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3
    invoke-static {p0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/Consumer;Ljava/util/List;)V
    .locals 0

    .line 5
    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Ux;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    .line 16
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    check-cast v0, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 19
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    .line 20
    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    const/4 p1, 0x2

    .line 21
    new-array p1, p1, [Ljava/lang/Iterable;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/IC;)Lcom/android/tools/r8/internal/nC;
    .locals 5

    .line 25
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/synthesis/k;

    .line 27
    invoke-interface {v1, p2}, Lcom/android/tools/r8/synthesis/k;->a(Lcom/android/tools/r8/internal/R00;)Lcom/android/tools/r8/synthesis/k;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 28
    invoke-interface {v2}, Lcom/android/tools/r8/synthesis/k;->getHolder()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/synthesis/W0;

    invoke-direct {v4}, Lcom/android/tools/r8/synthesis/W0;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 29
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v3, p0, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v1}, Lcom/android/tools/r8/synthesis/k;->getHolder()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-interface {v2}, Lcom/android/tools/r8/synthesis/k;->getHolder()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 5
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    new-instance v2, Lcom/android/tools/r8/synthesis/c1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/synthesis/c1;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/synthesis/X0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/synthesis/X0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/synthesis/Y0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/synthesis/Y0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
