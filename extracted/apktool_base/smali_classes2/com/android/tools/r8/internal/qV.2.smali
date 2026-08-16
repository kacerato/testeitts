.class public abstract Lcom/android/tools/r8/internal/qV;
.super Lcom/android/tools/r8/internal/Jl0;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(Ljava/util/AbstractMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jl0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/qV;->b:Ljava/util/AbstractMap;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qV;->b:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qV;->b:Ljava/util/AbstractMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/qV;->b:Ljava/util/AbstractMap;

    new-instance v1, Lcom/android/tools/r8/internal/Vq1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Vq1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qV;->b:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qV;->b:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
