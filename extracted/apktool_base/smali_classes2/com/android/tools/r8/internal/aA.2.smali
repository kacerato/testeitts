.class public final Lcom/android/tools/r8/internal/aA;
.super Lcom/android/tools/r8/internal/pV;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/f6;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/eA;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/eA;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pV;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eA;->clear()V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Xz;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Xz;-><init>(Lcom/android/tools/r8/internal/aA;)V

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/internal/f6;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    return-object v0
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    new-instance v1, Lcom/android/tools/r8/internal/H41;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/H41;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eA;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/eA;->b(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ZB;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Zz;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Zz;-><init>(Lcom/android/tools/r8/internal/aA;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/eA;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/eA;->b(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;)V

    iput-object v0, p1, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    iput-object v0, p1, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public final replaceAll(Ljava/util/function/BiFunction;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    iget-object v1, v0, Lcom/android/tools/r8/internal/eA;->d:Lcom/android/tools/r8/internal/Vz;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eA;->clear()V

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/eA;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    iget v0, v0, Lcom/android/tools/r8/internal/eA;->f:I

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/dA;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/dA;-><init>(Lcom/android/tools/r8/internal/eA;)V

    return-object v1
.end method
