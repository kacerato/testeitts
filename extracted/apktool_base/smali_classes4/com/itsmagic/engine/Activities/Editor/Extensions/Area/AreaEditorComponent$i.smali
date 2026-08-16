.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->updateMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$i;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$i;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$000(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    move-result-object v4

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;->EditMode:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setSuppressRender(Z)V

    :cond_2
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$i;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$000(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    move-result-object v3

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;->BakePreview:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    if-ne v3, v4, :cond_5

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$i;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$100(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->setSuppressRender(Z)V

    goto :goto_2

    :cond_3
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$i;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$100(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->setSuppressRender(Z)V

    goto :goto_2

    :cond_4
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    if-eqz v3, :cond_8

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$i;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$100(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->setSuppressRender(Z)V

    goto :goto_2

    :cond_5
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    if-eqz v3, :cond_6

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->setSuppressRender(Z)V

    goto :goto_2

    :cond_6
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    if-eqz v3, :cond_7

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->setSuppressRender(Z)V

    goto :goto_2

    :cond_7
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    if-eqz v3, :cond_8

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->setSuppressRender(Z)V

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "gameObject"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$i;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
