.class public final Lcom/android/tools/r8/internal/wC;
.super Lcom/android/tools/r8/internal/XB;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/nC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/XB;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wC;->c:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/hC;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wC;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/vC;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/vC;-><init>(Lcom/android/tools/r8/internal/wC;Lcom/android/tools/r8/internal/hC;)V

    return-object v1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wC;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/wC;->c:Lcom/android/tools/r8/internal/nC;

    new-instance v1, Lcom/android/tools/r8/internal/Dx1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Dx1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/uC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/uC;-><init>(Lcom/android/tools/r8/internal/wC;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/uC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/uC;-><init>(Lcom/android/tools/r8/internal/wC;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wC;->c:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wC;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Cx1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Cx1;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Se;->a(Ljava/util/Spliterator;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Me;

    move-result-object v0

    return-object v0
.end method
