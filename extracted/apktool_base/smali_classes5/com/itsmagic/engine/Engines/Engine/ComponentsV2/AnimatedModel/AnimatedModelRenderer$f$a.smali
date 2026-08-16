.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMeshFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;->materialFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMaterialFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->destroyComponent()V

    :cond_0
    return-void
.end method
