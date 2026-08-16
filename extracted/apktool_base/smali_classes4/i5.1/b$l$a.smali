.class public Li5/b$l$a;
.super Lorg/ITsMagic/Atlas/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li5/b$l;


# direct methods
.method public constructor <init>(Li5/b$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Li5/b$l$a;->a:Li5/b$l;

    invoke-direct {p0}, Lorg/ITsMagic/Atlas/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputVertex",
            "atlasTexture"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Li5/b$l$a$a;

    invoke-direct {p1, p0}, Li5/b$l$a$a;-><init>(Li5/b$l$a;)V

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v2, v2, Li5/b$l;->d:Li5/b;

    invoke-static {v2}, Li5/b;->K(Li5/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_uvpaint.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v3, v3, Li5/b$l;->d:Li5/b;

    invoke-static {v3}, Li5/b;->K(Li5/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_uvpaint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v3, v3, Li5/b$l;->d:Li5/b;

    invoke-static {v3}, Li5/b;->K(Li5/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v2, v2, Li5/b$l;->d:Li5/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v5, v5, Li5/b$l;->d:Li5/b;

    invoke-static {v5}, Li5/b;->K(Li5/b;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mesh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Li5/b;->L(Li5/b;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v2, v2, Li5/b$l;->d:Li5/b;

    invoke-static {v2, p1}, Li5/b;->M(Li5/b;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-boolean v3, v2, Li5/b$l;->c:Z

    if-eqz v3, :cond_2

    iget-object v2, v2, Li5/b$l;->d:Li5/b;

    invoke-static {v2, v1, p2}, Li5/b;->N(Li5/b;Ljava/lang/String;Lub/p;)V

    iget-object p2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object p2, p2, Li5/b$l;->d:Li5/b;

    invoke-static {p2, v1}, Li5/b;->O(Li5/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object p2, p2, Li5/b$l;->d:Li5/b;

    invoke-static {v1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v1

    invoke-static {p2, v1}, Li5/b;->Q(Li5/b;Lub/g;)Lub/g;

    goto :goto_0

    :cond_2
    iget-object p2, v2, Li5/b$l;->d:Li5/b;

    invoke-static {p2}, Li5/b;->R(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v2, "albedo"

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Li5/b;->O(Li5/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object p2, p2, Li5/b$l;->d:Li5/b;

    invoke-static {p2}, Li5/b;->R(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->v(Ljava/lang/String;)Lub/p;

    move-result-object v1

    check-cast v1, Lub/g;

    invoke-static {p2, v1}, Li5/b;->Q(Li5/b;Lub/g;)Lub/g;

    :goto_0
    iget-object p2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object p2, p2, Li5/b$l;->d:Li5/b;

    invoke-static {p2}, Li5/b;->P(Li5/b;)Lub/g;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object p2, p2, Li5/b$l;->d:Li5/b;

    invoke-static {p2}, Li5/b;->P(Li5/b;)Lub/g;

    move-result-object p2

    invoke-virtual {p2}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    iget-object v0, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object v0, v0, Li5/b$l;->d:Li5/b;

    new-instance v2, Lub/g;

    invoke-direct {v2, p2, v1}, Lub/g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    invoke-static {v0, v2}, Li5/b;->Q(Li5/b;Lub/g;)Lub/g;

    :cond_3
    iget-object p2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object p2, p2, Li5/b$l;->d:Li5/b;

    invoke-static {p2}, Li5/b;->P(Li5/b;)Lub/g;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, LBb/b;->z(Lub/p;F)LBb/b;

    move-result-object v0

    invoke-static {p2, v0}, Li5/b;->c0(Li5/b;LBb/b;)LBb/b;

    iget-object p2, p0, Li5/b$l$a;->a:Li5/b$l;

    iget-object p2, p2, Li5/b$l;->d:Li5/b;

    invoke-static {p2}, Li5/b;->R(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getRenderMatrix()[F

    move-result-object v0

    invoke-static {p1, v0}, LIb/c;->d(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)LIb/c;

    move-result-object v0

    invoke-static {p2, v0}, Li5/b;->a0(Li5/b;LIb/c;)LIb/c;

    new-instance p2, Li5/b$l$a$b;

    invoke-direct {p2, p0, p1}, Li5/b$l$a$b;-><init>(Li5/b$l$a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-static {p2}, LK8/a;->I(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
