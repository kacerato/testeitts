.class public abstract Lcom/android/tools/r8/internal/nD;
.super Lcom/android/tools/r8/internal/JC;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/JC;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/hC;->a(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/nD;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/hC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/mD;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/mD;-><init>(Lcom/android/tools/r8/internal/nD;)V

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-instance v1, Lcom/android/tools/r8/internal/sm1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/sm1;-><init>(Lcom/android/tools/r8/internal/nD;)V

    const/4 v2, 0x0

    const/16 v3, 0x511

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/Se;->a(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Lcom/android/tools/r8/internal/Oe;

    move-result-object v0

    return-object v0
.end method
