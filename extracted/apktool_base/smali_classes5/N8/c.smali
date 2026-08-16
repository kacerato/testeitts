.class public LN8/c;
.super LIc/m;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LN8/f;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;

.field public d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final e:I

.field public final g:I

.field public i:I

.field public j:I

.field public k:Z

.field public final l:[F

.field public m:Z

.field public n:Z

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LN8/f;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            "LN8/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxVertices",
            "maxTriangles"
        }
    .end annotation

    invoke-direct {p0}, LIc/m;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LN8/c;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, LN8/c;->k:Z

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, LN8/c;->l:[F

    iput-boolean v0, p0, LN8/c;->m:Z

    iput-boolean v0, p0, LN8/c;->n:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LN8/c;->o:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN8/c;->p:Ljava/util/Map;

    iput p1, p0, LN8/c;->e:I

    iput p2, p0, LN8/c;->g:I

    return-void
.end method


# virtual methods
.method public e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, LN8/c;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, p0, LN8/c;->i:I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, LN8/c;->e:I

    const-string v4, "Theres not enough space to alloc this model renderer"

    if-gt v2, v3, :cond_2

    iget v2, p0, LN8/c;->j:I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, LN8/c;->g:I

    if-gt v2, v3, :cond_1

    iget-object v2, p0, LN8/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LN8/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN8/f;

    invoke-virtual {v1}, LN8/f;->a()V

    goto :goto_0

    :cond_0
    new-instance v1, LN8/f;

    invoke-direct {v1}, LN8/f;-><init>()V

    :goto_0
    iput-object p1, v1, LN8/f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iput-object v0, v1, LN8/f;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    iput-object v2, v1, LN8/f;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v2

    iput-object v2, v1, LN8/f;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v2

    iput v2, v1, LN8/f;->j:I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v2

    iput v2, v1, LN8/f;->i:I

    const/4 v2, 0x1

    iput-boolean v2, v1, LN8/f;->n:Z

    iget v3, p0, LN8/c;->i:I

    iput v3, v1, LN8/f;->q:I

    iget v4, p0, LN8/c;->j:I

    iput v4, v1, LN8/f;->p:I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, LN8/c;->i:I

    iget v3, p0, LN8/c;->j:I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p0, LN8/c;->j:I

    iget-object v0, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LN8/c;->p:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, LN8/c;->k:Z

    return v2

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/LimitReachedBatcherException;

    invoke-direct {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/LimitReachedBatcherException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/LimitReachedBatcherException;

    invoke-direct {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/LimitReachedBatcherException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer should have a vertex with triangles"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer should have a vertex with vertices"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer should have a vertex"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return v1

    :cond_7
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer can\'t be null"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, LN8/c;->i:I

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, LN8/c;->e:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, LN8/c;->j:I

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, LN8/c;->g:I

    if-le v0, p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer should have a vertex with triangles"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer should have a vertex with vertices"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer should have a vertex"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer can\'t be null"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LN8/c;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object v0, p0, LN8/c;->c:Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;

    return-void
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LN8/c;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer can\'t be null"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LN8/c;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public k(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN8/f;

    iget-object p1, p1, LN8/f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    return-object p1
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, LN8/c;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN8/f;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v0, LN8/f;->o:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LN8/c;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer can\'t be null"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, LN8/c;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN8/f;

    if-eqz v0, :cond_2

    iget-object v1, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, LN8/c;->p:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, LN8/c;->k:Z

    invoke-virtual {v0}, LN8/f;->a()V

    iget-object v1, p0, LN8/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, LN8/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-boolean p1, p0, LN8/c;->m:Z

    iget-object v0, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, LN8/c;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object v0, p0, LN8/c;->c:Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;

    iput-boolean p1, p0, LN8/c;->n:Z

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer can\'t be null"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requireTBN"
        }
    .end annotation

    iget-object v0, p0, LN8/c;->c:Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->e()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, LN8/c;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z()V

    :cond_0
    iput-object v1, p0, LN8/c;->c:Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;

    :cond_1
    iget-boolean v0, p0, LN8/c;->n:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, LN8/c;->n:Z

    invoke-static {}, Lp6/d;->E1()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Update offsets"

    invoke-static {v3}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    iget-boolean v4, p0, LN8/c;->m:Z

    if-eqz v4, :cond_3

    iput-boolean v2, p0, LN8/c;->m:Z

    invoke-virtual {p0}, LN8/c;->p()V

    :cond_3
    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    iget-boolean v3, p0, LN8/c;->k:Z

    const/4 v4, 0x1

    if-nez v3, :cond_9

    iget-object v3, p0, LN8/c;->c:Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Lp6/d;->E1()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "update models (update mode)"

    invoke-static {v3}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v1

    :goto_1
    move v5, v2

    move v6, v5

    :goto_2
    iget-object v7, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    iget-object v7, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LN8/f;

    iget-boolean v8, v7, LN8/f;->n:Z

    if-eqz v8, :cond_6

    iput-boolean v4, p0, LN8/c;->k:Z

    goto :goto_3

    :cond_6
    iget-boolean v8, v7, LN8/f;->o:Z

    if-eqz v8, :cond_7

    iget-object v6, p0, LN8/c;->c:Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->r(LN8/f;)V

    move v6, v4

    :cond_7
    :goto_3
    iput-boolean v2, v7, LN8/f;->n:Z

    iput-boolean v2, v7, LN8/f;->o:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    goto :goto_7

    :cond_9
    :goto_4
    iput-boolean v4, p0, LN8/c;->k:Z

    invoke-static {}, Lp6/d;->E1()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "update models (rebuild mode)"

    invoke-static {v3}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    goto :goto_5

    :cond_a
    move-object v3, v1

    :goto_5
    move v5, v2

    :goto_6
    iget-object v6, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    iget-object v6, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LN8/f;

    iput-boolean v2, v6, LN8/f;->n:Z

    iput-boolean v2, v6, LN8/f;->o:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    move v6, v2

    :goto_7
    invoke-static {}, Lp6/d;->E1()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "build bake"

    invoke-static {v3}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    goto :goto_8

    :cond_c
    move-object v3, v1

    :goto_8
    iget-boolean v5, p0, LN8/c;->k:Z

    if-eqz v5, :cond_e

    iget-object v0, p0, LN8/c;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z()V

    :cond_d
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;

    iget-object v5, p0, LN8/c;->o:Ljava/util/List;

    invoke-direct {v0, v5, p1}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;-><init>(Ljava/util/List;Z)V

    iput-object v0, p0, LN8/c;->c:Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, LN8/c;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-boolean v2, p0, LN8/c;->k:Z

    move v0, v4

    :cond_e
    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "build aabb"

    invoke-static {p1}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v1

    :cond_f
    if-eqz v6, :cond_10

    iget-object p1, p0, LN8/c;->c:Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->m()V

    :cond_10
    invoke-static {v1}, Lp6/d;->J1(Lp6/g;)V

    return v0
.end method

.method public final p()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, LN8/c;->j:I

    iput v0, p0, LN8/c;->i:I

    :goto_0
    iget-object v1, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LN8/c;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN8/f;

    iget v2, p0, LN8/c;->i:I

    iput v2, v1, LN8/f;->q:I

    iget v3, p0, LN8/c;->j:I

    iput v3, v1, LN8/f;->p:I

    iget v4, v1, LN8/f;->j:I

    add-int/2addr v2, v4

    iput v2, p0, LN8/c;->i:I

    iget v1, v1, LN8/f;->i:I

    add-int/2addr v3, v1

    iput v3, p0, LN8/c;->j:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
