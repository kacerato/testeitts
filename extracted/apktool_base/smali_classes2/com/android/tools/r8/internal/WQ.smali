.class public final Lcom/android/tools/r8/internal/WQ;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput v1, p0, Lcom/android/tools/r8/internal/WQ;->b:I

    iput v1, p0, Lcom/android/tools/r8/internal/WQ;->c:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/VQ;

    iget v0, p0, Lcom/android/tools/r8/internal/WQ;->c:I

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/VQ;-><init>(I)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/internal/wI;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/w01;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/w01;-><init>(Lcom/android/tools/r8/internal/WQ;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget v0, p0, Lcom/android/tools/r8/internal/WQ;->b:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
