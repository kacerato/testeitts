.class public LN8/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x1f40

.field public static final d:I = 0x1f40

.field public static final e:I = 0x3

.field public static final f:I = 0x186a0

.field public static final g:I = 0x186a0

.field public static final h:I = 0x3


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final b:LN8/i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN8/e;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    new-instance p1, LN8/i;

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/16 v1, 0x1f40

    const/16 v2, 0x1f40

    const v3, 0x186a0

    const v4, 0x186a0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, LN8/i;-><init>(IIIIII)V

    iput-object p1, p0, LN8/e;->b:LN8/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->billboard:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, LN8/e;->b:LN8/i;

    invoke-virtual {v0, p1}, LN8/i;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LN8/e;->b:LN8/i;

    invoke-virtual {v0}, LN8/i;->b()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, LN8/e;->b:LN8/i;

    invoke-virtual {v0}, LN8/i;->e()V

    return-void
.end method

.method public d(I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LN8/e;->b:LN8/i;

    invoke-virtual {v0, p1}, LN8/i;->f(I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, LN8/e;->b:LN8/i;

    invoke-virtual {v0}, LN8/i;->g()Z

    move-result v0

    return v0
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
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

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, LN8/e;->b:LN8/i;

    invoke-virtual {v0, p1}, LN8/i;->h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    iget-object v0, p0, LN8/e;->b:LN8/i;

    invoke-virtual {v0, p1}, LN8/i;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, LN8/e;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LN8/e;->b:LN8/i;

    invoke-virtual {v0, p1}, LN8/i;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public h(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requireTBN"
        }
    .end annotation

    iget-object v0, p0, LN8/e;->b:LN8/i;

    invoke-virtual {v0, p1}, LN8/i;->j(Z)V

    return-void
.end method
