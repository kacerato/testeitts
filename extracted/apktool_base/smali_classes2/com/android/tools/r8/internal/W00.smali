.class public final Lcom/android/tools/r8/internal/W00;
.super Lcom/android/tools/r8/internal/UD;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/TreeMap;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/UD;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/W00;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/UZ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/UZ0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/W00;->a:Ljava/util/TreeMap;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)V
    .locals 0

    .line 13
    invoke-interface {p0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 14
    invoke-interface {p1, p0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_0
    sget-boolean p0, Lcom/android/tools/r8/internal/W00;->b:Z

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/TD;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)V
    .locals 0

    .line 19
    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/SD;->a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/SD;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/TD;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)Lcom/android/tools/r8/internal/TD;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/TD;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)V
    .locals 1

    .line 21
    invoke-virtual {p1, p2, p4}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 22
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-interface {p5, p3, p4, p1, p2}, Lcom/android/tools/r8/internal/SD;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;

    move-result-object p1

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/TD;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)Lcom/android/tools/r8/internal/TD;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/SD;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/W00;->a:Ljava/util/TreeMap;

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    sget-object v1, Lcom/android/tools/r8/internal/rv0;->a:Lcom/android/tools/r8/internal/rv0;

    .line 18
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/SD;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/UD;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/TD;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/TD;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/W00;->a:Ljava/util/TreeMap;

    new-instance v2, Lcom/android/tools/r8/internal/TZ0;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/internal/TZ0;-><init>(Lcom/android/tools/r8/internal/TD;Lcom/android/tools/r8/graph/proto/c;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4
    iget-object p1, v0, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/Qt;->a:Lcom/android/tools/r8/internal/Qt;

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/W00;

    iget-object v0, v0, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/W00;-><init>(Ljava/util/TreeMap;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/UD;
    .locals 3

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/TD;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/TD;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/W00;->a:Ljava/util/TreeMap;

    new-instance v2, Lcom/android/tools/r8/internal/VZ0;

    invoke-direct {v2, v0, p2, p3, p1}, Lcom/android/tools/r8/internal/VZ0;-><init>(Lcom/android/tools/r8/internal/TD;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 9
    iget-object p1, v0, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    sget-object p1, Lcom/android/tools/r8/internal/Qt;->a:Lcom/android/tools/r8/internal/Qt;

    return-object p1

    .line 11
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/W00;

    iget-object p2, v0, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/W00;-><init>(Ljava/util/TreeMap;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/W00;->a:Ljava/util/TreeMap;

    new-instance v1, Lcom/android/tools/r8/internal/RZ0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/RZ0;-><init>(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/W00;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/W00;->a:Ljava/util/TreeMap;

    new-instance v2, Lcom/android/tools/r8/internal/SZ0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/SZ0;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "; "

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NonTrivialInstanceFieldInitializationInfoCollection("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
