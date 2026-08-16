.class public final LJAVARuntime/Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Editor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Editor$AnchorSide;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static dpToHeightPercentage(I)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Converts dp value to height percentage (0.0f - 1.0f) based on screen size."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Converte o valor em dp para porcentagem de altura (0.0f - 1.0f) com base no tamanho da tela."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    invoke-static {p0}, LN7/c;->f(I)F

    move-result p0

    return p0
.end method

.method public static dpToWidthPercentage(I)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Converts dp value to width percentage (0.0f - 1.0f) based on screen size."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Converte o valor em dp para porcentagem de largura (0.0f - 1.0f) com base no tamanho da tela."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p0

    return p0
.end method

.method public static findViewByID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Finds a child view with the given ID inside the specified view hierarchy."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Procura uma view filha com o ID especificado dentro da hierarquia da view."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "view",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "@+id/"

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v4

    :cond_2
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, LJAVARuntime/Editor;->findViewByID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIdOf(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the ID of the view (without prefix)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o ID da view (sem o prefixo)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "@+id/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getSelectedObject()LJAVARuntime/SpatialObject;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the selected object in the editor."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o objeto selecionado no editor."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    sget-object v0, LW7/b;->i:La8/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, La8/a;->a:La8/b;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v0

    return-object v0
.end method

.method public static inflateAnchoredFloatingPanel(Landroid/view/View;LJAVARuntime/Editor$AnchorSide;LJAVARuntime/EditorPanel;)LJAVARuntime/FloatingPanelArea;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a floating panel anchored to the specified view."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um painel flutuante ancorado \u00e0 view especificada."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "editorPanel"
        }
    .end annotation

    .line 1
    invoke-static {}, LN7/c;->h0()V

    .line 2
    iget-object v0, p2, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    .line 3
    :cond_0
    iget-object p2, p2, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/a$e;->valueOf(Ljava/lang/String;)Lr4/a$e;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lr4/a;->f(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    .line 4
    new-instance p1, LJAVARuntime/FloatingPanelArea;

    invoke-direct {p1, p0}, LJAVARuntime/FloatingPanelArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-object p1
.end method

.method public static inflateAnchoredFloatingPanel(Landroid/view/View;LJAVARuntime/Editor$AnchorSide;LJAVARuntime/EditorPanel;FF)LJAVARuntime/FloatingPanelArea;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a floating panel anchored to the specified view, with the given width and height (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um painel flutuante ancorado \u00e0 view especificada, com a largura e altura (0.0f - 1.0f)."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "editorPanel",
            "w",
            "h"
        }
    .end annotation

    .line 5
    invoke-static {}, LN7/c;->h0()V

    .line 6
    iget-object v0, p2, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    .line 7
    :cond_0
    iget-object p2, p2, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/a$e;->valueOf(Ljava/lang/String;)Lr4/a$e;

    move-result-object p1

    invoke-static {p0, p2, p1, p3, p4}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    .line 8
    new-instance p1, LJAVARuntime/FloatingPanelArea;

    invoke-direct {p1, p0}, LJAVARuntime/FloatingPanelArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-object p1
.end method

.method public static inflateAnchoredFloatingPanelInDP(Landroid/view/View;LJAVARuntime/Editor$AnchorSide;LJAVARuntime/EditorPanel;II)LJAVARuntime/FloatingPanelArea;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a floating panel anchored to the specified view, with the given width and height in dp."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um painel flutuante ancorado \u00e0 view especificada, com a largura e altura em dp."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "editorPanel",
            "dpW",
            "dpH"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p2, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_0
    iget-object p2, p2, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/a$e;->valueOf(Ljava/lang/String;)Lr4/a$e;

    move-result-object p1

    invoke-static {p3}, LJAVARuntime/Editor;->dpToWidthPercentage(I)F

    move-result p3

    invoke-static {p4}, LJAVARuntime/Editor;->dpToHeightPercentage(I)F

    move-result p4

    invoke-static {p0, p2, p1, p3, p4}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    new-instance p1, LJAVARuntime/FloatingPanelArea;

    invoke-direct {p1, p0}, LJAVARuntime/FloatingPanelArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-object p1
.end method

.method public static inflateFloatingPanel(LJAVARuntime/EditorPanel;FF)LJAVARuntime/FloatingPanelArea;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a centered floating panel with the specified width and height (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um painel flutuante centralizado com a largura e altura (0.0f - 1.0f)."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorPanel",
            "w",
            "h"
        }
    .end annotation

    .line 5
    invoke-static {}, LN7/c;->h0()V

    .line 6
    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    .line 7
    :cond_0
    iget-object p0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-static {p0, p1, p2}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    .line 8
    new-instance p1, LJAVARuntime/FloatingPanelArea;

    invoke-direct {p1, p0}, LJAVARuntime/FloatingPanelArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-object p1
.end method

.method public static inflateFloatingPanel(LJAVARuntime/EditorPanel;FFFF)LJAVARuntime/FloatingPanelArea;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a floating panel at the specified position with given width and height (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um painel flutuante na posi\u00e7\u00e3o especificada com a largura e altura (0.0f - 1.0f)."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorPanel",
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    .line 1
    invoke-static {}, LN7/c;->h0()V

    .line 2
    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    .line 3
    :cond_0
    iget-object p0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-static {p0, p1, p2, p3, p4}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    .line 4
    new-instance p1, LJAVARuntime/FloatingPanelArea;

    invoke-direct {p1, p0}, LJAVARuntime/FloatingPanelArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-object p1
.end method

.method public static inflateFloatingPanelInDP(LJAVARuntime/EditorPanel;II)LJAVARuntime/FloatingPanelArea;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a centered floating panel with the specified width and height in dp."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um painel flutuante centralizado com a largura e altura em dp."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorPanel",
            "w",
            "h"
        }
    .end annotation

    .line 10
    invoke-static {}, LN7/c;->h0()V

    .line 11
    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    .line 12
    :cond_0
    iget-object p0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    .line 13
    invoke-static {p1}, LJAVARuntime/Editor;->dpToWidthPercentage(I)F

    move-result p1

    .line 14
    invoke-static {p2}, LJAVARuntime/Editor;->dpToHeightPercentage(I)F

    move-result p2

    .line 15
    invoke-static {p0, p1, p2}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    .line 16
    new-instance p1, LJAVARuntime/FloatingPanelArea;

    invoke-direct {p1, p0}, LJAVARuntime/FloatingPanelArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-object p1
.end method

.method public static inflateFloatingPanelInDP(LJAVARuntime/EditorPanel;IIII)LJAVARuntime/FloatingPanelArea;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a floating panel at the specified position with given width and height in dp."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um painel flutuante na posi\u00e7\u00e3o especificada com a largura e altura em dp."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorPanel",
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    .line 1
    invoke-static {}, LN7/c;->h0()V

    .line 2
    iget-object v0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    .line 3
    :cond_0
    iget-object p0, p0, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    .line 4
    invoke-static {p1}, LJAVARuntime/Editor;->dpToWidthPercentage(I)F

    move-result p1

    .line 5
    invoke-static {p2}, LJAVARuntime/Editor;->dpToHeightPercentage(I)F

    move-result p2

    .line 6
    invoke-static {p3}, LJAVARuntime/Editor;->dpToWidthPercentage(I)F

    move-result p3

    .line 7
    invoke-static {p4}, LJAVARuntime/Editor;->dpToHeightPercentage(I)F

    move-result p4

    .line 8
    invoke-static {p0, p1, p2, p3, p4}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    .line 9
    new-instance p1, LJAVARuntime/FloatingPanelArea;

    invoke-direct {p1, p0}, LJAVARuntime/FloatingPanelArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-object p1
.end method

.method public static isEditor()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Indicates whether it\'s in editor mode, useful for editor-only logic."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Indica se est\u00e1 no editor, \u00fatil para l\u00f3gica exclusiva do modo editor."
    .end annotation

    invoke-static {}, Lb8/f;->a()Z

    move-result v0

    return v0
.end method

.method public static pxToHeightPercentage(I)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Converts px value to height percentage (0.0f - 1.0f) based on screen size."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Converte o valor em px para porcentagem de altura (0.0f - 1.0f) com base no tamanho da tela."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "px"
        }
    .end annotation

    invoke-static {p0}, LN7/c;->i(I)F

    move-result p0

    return p0
.end method

.method public static pxToWidthPercentage(I)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Converts px value to width percentage (0.0f - 1.0f) based on screen size."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Converte o valor em px para porcentagem de largura (0.0f - 1.0f) com base no tamanho da tela."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "px"
        }
    .end annotation

    invoke-static {p0}, LN7/c;->j(I)F

    move-result p0

    return p0
.end method

.method public static requestJavaRecompile()V
    .locals 0

    invoke-static {}, Ld8/j;->v0()V

    return-void
.end method

.method public static setSelectedObject(LJAVARuntime/SpatialObject;)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the selected object in the editor."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o objeto selecionado no editor."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    sget-object v0, LW7/b;->i:La8/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, La8/a;->a:La8/b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, LJAVARuntime/SpatialObject;->validate()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, LW7/b;->h:Lb8/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_3
    sget-object v0, LW7/b;->h:Lb8/f;

    iget-object p0, p0, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p0}, Lb8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static toView(Ljava/lang/Object;)Landroid/view/View;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the given object casted as a View."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o objeto fornecido convertido como uma View."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    check-cast p0, Landroid/view/View;

    return-object p0
.end method
