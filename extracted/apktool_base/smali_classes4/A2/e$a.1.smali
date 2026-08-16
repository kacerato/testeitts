.class public LA2/e$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/e;->k()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LA2/e;


# direct methods
.method public constructor <init>(LA2/e;)V
    .locals 0

    iput-object p1, p0, LA2/e$a;->b:LA2/e;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/e3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/e$a;->b:LA2/e;

    invoke-static {v0}, LA2/e;->m(LA2/e;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LA2/e$a;->b:LA2/e;

    iget-object v0, v0, LA2/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, LA2/e$a;->b:LA2/e;

    iget-object v1, v1, LA2/e;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/D1;->f(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LA2/e$a;->b:LA2/e;

    iget-object v0, v0, LA2/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, LA2/e$a;->b:LA2/e;

    iget-object v1, v1, LA2/e;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/D2;->N(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/D2$m;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->f0(Ljava/util/Iterator;)Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, LA2/e$a;->b:LA2/e;

    iget-object v0, v0, LA2/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LA2/e$a;->b:LA2/e;

    iget-object v0, v0, LA2/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, LA2/e$a;->a()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, LA2/e$a;->b:LA2/e;

    iget-object v0, v0, LA2/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, LA2/e$a;->b:LA2/e;

    iget-object v1, v1, LA2/e;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, LA2/e$a;->b:LA2/e;

    invoke-static {v2}, LA2/e;->m(LA2/e;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, LE2/f;->t(II)I

    move-result v0

    return v0
.end method
