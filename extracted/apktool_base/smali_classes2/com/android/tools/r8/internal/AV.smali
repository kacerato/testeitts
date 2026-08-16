.class public final Lcom/android/tools/r8/internal/AV;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/AV;


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/s2;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/AV;

    sget-object v1, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/AV;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V

    sput-object v0, Lcom/android/tools/r8/internal/AV;->c:Lcom/android/tools/r8/internal/AV;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AV;->a:Lcom/android/tools/r8/shaking/s2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/AV;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/zV;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/zV;->b:Lcom/android/tools/r8/shaking/s2;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/O5;)V

    .line 3
    iget-object p0, p1, Lcom/android/tools/r8/internal/zV;->b:Lcom/android/tools/r8/shaking/s2;

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/e3;
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/AV;->a:Lcom/android/tools/r8/shaking/s2;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/AV;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/d3;->a:Lcom/android/tools/r8/internal/d3;

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/f3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/AV;->a:Lcom/android/tools/r8/shaking/s2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/AV;->b:Ljava/util/List;

    new-instance v3, Lcom/android/tools/r8/internal/Qy0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Qy0;-><init>()V

    .line 12
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/f3;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/AV;->a:Lcom/android/tools/r8/shaking/s2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/O5;)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/AV;->b:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/internal/Ry0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Ry0;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method
