.class public final Lcom/android/tools/r8/internal/TK;
.super Lcom/android/tools/r8/internal/nC;
.source "SourceFile"


# instance fields
.field public final transient f:Ljava/util/HashMap;

.field public final transient g:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nC;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/TK;->f:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/TK;->g:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static a(I[Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/TK;
    .locals 5

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 3
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/tools/r8/internal/bf0;->a(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qC;

    move-result-object v2

    .line 5
    aput-object v2, p1, v1

    .line 6
    iget-object v3, v2, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    aget-object p0, p1, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key"

    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/nC;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 10
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/TK;

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/internal/TK;-><init>(Ljava/util/HashMap;Lcom/android/tools/r8/internal/hC;)V

    return-object v1
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Ljava/util/Map$Entry;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()Lcom/android/tools/r8/internal/QC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/rC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TK;->g:Lcom/android/tools/r8/internal/hC;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/rC;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/hC;)V

    return-object v0
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/TK;->g:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/internal/eX0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/eX0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TK;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lcom/android/tools/r8/internal/QC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/tC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tC;-><init>(Lcom/android/tools/r8/internal/nC;)V

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/wC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/wC;-><init>(Lcom/android/tools/r8/internal/nC;)V

    return-object v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TK;->g:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
