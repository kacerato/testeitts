.class public final Lcom/android/tools/r8/internal/SK;
.super Lcom/android/tools/r8/internal/VB;
.source "SourceFile"


# instance fields
.field public final transient f:Lcom/android/tools/r8/internal/hC;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;

.field public transient i:Lcom/android/tools/r8/internal/SK;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/VB;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/SK;->f:Lcom/android/tools/r8/internal/hC;

    iput-object p2, p0, Lcom/android/tools/r8/internal/SK;->g:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/tools/r8/internal/SK;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static a(I[Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/SK;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v4, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/tools/r8/internal/bf0;->a(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qC;

    move-result-object v3

    aput-object v3, p1, v2

    iget-object v4, v3, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    iget-object v5, v3, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "="

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    iget-object v6, v3, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v2

    const-string v0, "value"

    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/nC;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v3, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v2

    const-string v0, "key"

    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/nC;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/SK;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/tools/r8/internal/SK;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object p1
.end method


# virtual methods
.method public final e()Lcom/android/tools/r8/internal/QC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/rC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/SK;->f:Lcom/android/tools/r8/internal/hC;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/rC;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/hC;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/SK;->g:Ljava/util/HashMap;

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

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r()Lcom/android/tools/r8/internal/VB;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/SK;->i:Lcom/android/tools/r8/internal/SK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/SK;

    new-instance v1, Lcom/android/tools/r8/internal/RK;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/RK;-><init>(Lcom/android/tools/r8/internal/SK;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/SK;->h:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/tools/r8/internal/SK;->g:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/SK;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/SK;->i:Lcom/android/tools/r8/internal/SK;

    iput-object p0, v0, Lcom/android/tools/r8/internal/SK;->i:Lcom/android/tools/r8/internal/SK;

    :cond_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/SK;->f:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
