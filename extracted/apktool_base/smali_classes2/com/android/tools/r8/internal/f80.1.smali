.class public final Lcom/android/tools/r8/internal/f80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/f80;

.field public static final synthetic d:Z = true


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/f80;

    sget-object v1, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/tools/r8/internal/f80;->c:Lcom/android/tools/r8/internal/f80;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/f80;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/f80;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static b()Lcom/android/tools/r8/internal/f80;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/f80;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/V60;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/F5;

    .line 3
    sget-boolean v1, Lcom/android/tools/r8/internal/f80;->d:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
