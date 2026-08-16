.class public final Lcom/android/tools/r8/internal/tC;
.super Lcom/android/tools/r8/internal/nD;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/internal/nC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nD;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tC;->e:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tC;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/tC;->e:Lcom/android/tools/r8/internal/nC;

    new-instance v1, Lcom/android/tools/r8/internal/Ht1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Ht1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tC;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/tC;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->m()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/tC;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->m()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tC;->e:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tC;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->o()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
