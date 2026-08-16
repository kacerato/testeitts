.class public final Lcom/android/tools/r8/internal/ld;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/AA;

.field public c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ld;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ld;->b:Lcom/android/tools/r8/internal/AA;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/F2;)Lcom/android/tools/r8/internal/rx0;
    .locals 0

    .line 14
    new-instance p0, Lcom/android/tools/r8/internal/rx0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/rx0;-><init>()V

    return-object p0
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Xi1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Xi1;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-object p0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 9
    invoke-static {v0, v0}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/Wi1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Wi1;-><init>()V

    .line 11
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/rx0;

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/internal/rx0;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/tx0;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tx0;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tx0;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    xor-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/ld;->a:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ld;->b:Lcom/android/tools/r8/internal/AA;

    .line 17
    iget-object v1, v1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/ld;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    new-instance v3, Lcom/android/tools/r8/internal/Si1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/Si1;-><init>(Lcom/android/tools/r8/internal/ld;)V

    .line 20
    const-string v4, "$r8$classId"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/ld;->b:Lcom/android/tools/r8/internal/AA;

    .line 22
    iput-object v0, v1, Lcom/android/tools/r8/internal/AA;->c:Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Z
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/ld;->b:Lcom/android/tools/r8/internal/AA;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 25
    new-instance v1, Lcom/android/tools/r8/internal/Vi1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Vi1;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 26
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/util/LinkedHashMap;
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/ld;->b:Lcom/android/tools/r8/internal/AA;

    new-instance v2, Lcom/android/tools/r8/internal/Ui1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Ui1;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ld;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Ti1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ti1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/tools/r8/internal/ld;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ld;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ld;->a()V

    :cond_2
    return-void
.end method
