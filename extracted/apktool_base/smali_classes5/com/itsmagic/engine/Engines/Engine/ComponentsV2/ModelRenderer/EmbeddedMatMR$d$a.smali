.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->meshFile:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->access$600(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->setMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->destroyComponent()V

    :cond_0
    return-void
.end method
