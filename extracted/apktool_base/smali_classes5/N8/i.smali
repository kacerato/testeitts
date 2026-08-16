.class public LN8/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN8/i$a;
    }
.end annotation


# instance fields
.field public final a:LN8/h;

.field public final b:LN8/h;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            "LN8/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxDynamicBatcherVertices",
            "maxDynamicBatcherTriangles",
            "maxStaticBatcherVertices",
            "maxStaticBatcherTriangles",
            "minDynamicBatchModels",
            "minStaticBatchModels"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN8/i;->c:Ljava/util/Map;

    iput p1, p0, LN8/i;->d:I

    iput p2, p0, LN8/i;->e:I

    iput p3, p0, LN8/i;->g:I

    iput p4, p0, LN8/i;->h:I

    iput p5, p0, LN8/i;->f:I

    iput p6, p0, LN8/i;->i:I

    new-instance v0, LN8/h;

    invoke-direct {v0, p1, p2, p5}, LN8/h;-><init>(III)V

    iput-object v0, p0, LN8/i;->a:LN8/h;

    new-instance p1, LN8/h;

    invoke-direct {p1, p3, p4, p6}, LN8/h;-><init>(III)V

    iput-object p1, p0, LN8/i;->b:LN8/h;

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->billboard:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN8/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, LN8/i;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LN8/i;->a:LN8/h;

    invoke-virtual {v0, p1}, LN8/h;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    iget-object v0, p0, LN8/i;->c:Ljava/util/Map;

    iget-object v1, p0, LN8/i;->a:LN8/h;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {p0, p1}, LN8/i;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LN8/i;->b:LN8/h;

    invoke-virtual {v0, p1}, LN8/h;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    iget-object v0, p0, LN8/i;->c:Ljava/util/Map;

    iget-object v1, p0, LN8/i;->b:LN8/h;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer can\'t be null"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, LN8/i;->a:LN8/h;

    invoke-virtual {v0}, LN8/h;->f()I

    move-result v0

    iget-object v1, p0, LN8/i;->b:LN8/h;

    invoke-virtual {v1}, LN8/h;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, LN8/i;->a:LN8/h;

    invoke-virtual {v0}, LN8/h;->h()V

    iget-object v0, p0, LN8/i;->b:LN8/h;

    invoke-virtual {v0}, LN8/h;->h()V

    return-void
.end method

.method public f(I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LN8/i;->a:LN8/h;

    invoke-virtual {v0}, LN8/h;->f()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, LN8/i;->a:LN8/h;

    invoke-virtual {v0, p1}, LN8/h;->i(I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, LN8/i;->b:LN8/h;

    iget-object v1, p0, LN8/i;->a:LN8/h;

    invoke-virtual {v1}, LN8/h;->f()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, LN8/h;->i(I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, LN8/i;->a:LN8/h;

    invoke-virtual {v0}, LN8/h;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LN8/i;->b:LN8/h;

    invoke-virtual {v0}, LN8/h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, LN8/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN8/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN8/h;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p1}, LN8/h;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, LN8/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed, batch should not be null at this point"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer can\'t be null"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, LN8/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN8/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN8/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, LN8/h;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    iget-object v0, p0, LN8/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed, batch should not be null at this point"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;

    const-string v0, "ModelRenderer can\'t be null"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Batching/Exceptions/NullPointerBatcherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requireTBN"
        }
    .end annotation

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "update dynamic"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, LN8/i;->a:LN8/h;

    invoke-virtual {v2, p1}, LN8/h;->o(Z)V

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "update static"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v1

    :cond_1
    iget-object v0, p0, LN8/i;->b:LN8/h;

    invoke-virtual {v0, p1}, LN8/h;->o(Z)V

    invoke-static {v1}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method
