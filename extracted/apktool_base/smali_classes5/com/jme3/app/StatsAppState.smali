.class public Lcom/jme3/app/StatsAppState;
.super Lcom/jme3/app/state/AbstractAppState;
.source "SourceFile"


# instance fields
.field private app:Lcom/jme3/app/Application;

.field private darkenBehind:Z

.field protected darkenFps:Lcom/jme3/scene/Geometry;

.field protected darkenStats:Lcom/jme3/scene/Geometry;

.field protected fpsText:Lcom/jme3/font/BitmapText;

.field protected frameCounter:I

.field protected guiFont:Lcom/jme3/font/BitmapFont;

.field protected guiNode:Lcom/jme3/scene/Node;

.field protected secondCounter:F

.field private showFps:Z

.field protected showSettings:Z

.field private showStats:Z

.field protected statsView:Lcom/jme3/app/StatsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showSettings:Z

    .line 3
    iput-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showFps:Z

    .line 4
    iput-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    .line 5
    iput-boolean v0, p0, Lcom/jme3/app/StatsAppState;->darkenBehind:Z

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/jme3/app/StatsAppState;->secondCounter:F

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/jme3/app/StatsAppState;->frameCounter:I

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Node;Lcom/jme3/font/BitmapFont;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showSettings:Z

    .line 10
    iput-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showFps:Z

    .line 11
    iput-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    .line 12
    iput-boolean v0, p0, Lcom/jme3/app/StatsAppState;->darkenBehind:Z

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/jme3/app/StatsAppState;->secondCounter:F

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/jme3/app/StatsAppState;->frameCounter:I

    .line 15
    iput-object p1, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    .line 16
    iput-object p2, p0, Lcom/jme3/app/StatsAppState;->guiFont:Lcom/jme3/font/BitmapFont;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->cleanup()V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->darkenFps:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->darkenStats:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public getFpsText()Lcom/jme3/font/BitmapText;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    return-object v0
.end method

.method public getSecondCounter()F
    .locals 1

    iget v0, p0, Lcom/jme3/app/StatsAppState;->secondCounter:F

    return v0
.end method

.method public getStatsView()Lcom/jme3/app/StatsView;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/app/state/AbstractAppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    iput-object p2, p0, Lcom/jme3/app/StatsAppState;->app:Lcom/jme3/app/Application;

    instance-of p1, p2, Lcom/jme3/app/SimpleApplication;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lcom/jme3/app/SimpleApplication;

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/jme3/app/SimpleApplication;->guiNode:Lcom/jme3/scene/Node;

    iput-object v0, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->guiFont:Lcom/jme3/font/BitmapFont;

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/jme3/app/SimpleApplication;->guiFont:Lcom/jme3/font/BitmapFont;

    iput-object p1, p0, Lcom/jme3/app/StatsAppState;->guiFont:Lcom/jme3/font/BitmapFont;

    :cond_1
    iget-object p1, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/app/StatsAppState;->guiFont:Lcom/jme3/font/BitmapFont;

    if-nez p1, :cond_2

    invoke-interface {p2}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    const-string p2, "Interface/Fonts/Default.fnt"

    invoke-interface {p1, p2}, Lcom/jme3/asset/AssetManager;->loadFont(Ljava/lang/String;)Lcom/jme3/font/BitmapFont;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/app/StatsAppState;->guiFont:Lcom/jme3/font/BitmapFont;

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/app/StatsAppState;->loadFpsText()V

    invoke-virtual {p0}, Lcom/jme3/app/StatsAppState;->loadStatsView()V

    invoke-virtual {p0}, Lcom/jme3/app/StatsAppState;->loadDarken()V

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/app/StatsAppState;->setEnabled(Z)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No guiNode specific and cannot be automatically determined."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDarkenBehind()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->darkenBehind:Z

    return v0
.end method

.method public loadDarken()V
    .locals 8

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->app:Lcom/jme3/app/Application;

    invoke-interface {v1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    new-instance v1, Lcom/jme3/math/ColorRGBA;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    const-string v2, "Color"

    invoke-virtual {v0, v2, v1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Lcom/jme3/scene/shape/Quad;

    iget-object v4, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v4}, Lcom/jme3/font/BitmapText;->getLineHeight()F

    move-result v4

    const/high16 v5, 0x43480000    # 200.0f

    invoke-direct {v2, v5, v4}, Lcom/jme3/scene/shape/Quad;-><init>(FF)V

    const-string v4, "StatsDarken"

    invoke-direct {v1, v4, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v1, p0, Lcom/jme3/app/StatsAppState;->darkenFps:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->darkenFps:Lcom/jme3/scene/Geometry;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v3, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->darkenFps:Lcom/jme3/scene/Geometry;

    iget-boolean v6, p0, Lcom/jme3/app/StatsAppState;->showFps:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/jme3/app/StatsAppState;->darkenBehind:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    invoke-virtual {v1, v6}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    iget-object v6, p0, Lcom/jme3/app/StatsAppState;->darkenFps:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1, v6}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v6, Lcom/jme3/scene/shape/Quad;

    iget-object v7, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    invoke-virtual {v7}, Lcom/jme3/app/StatsView;->getHeight()F

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/jme3/scene/shape/Quad;-><init>(FF)V

    invoke-direct {v1, v4, v6}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v1, p0, Lcom/jme3/app/StatsAppState;->darkenStats:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->darkenStats:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapText;->getHeight()F

    move-result v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->darkenStats:Lcom/jme3/scene/Geometry;

    iget-boolean v1, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jme3/app/StatsAppState;->darkenBehind:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->darkenStats:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public loadFpsText()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/font/BitmapText;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->guiFont:Lcom/jme3/font/BitmapFont;

    invoke-direct {v0, v1}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object v0, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0}, Lcom/jme3/font/BitmapText;->getLineHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    const-string v1, "Frames per second"

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    iget-boolean v1, p0, Lcom/jme3/app/StatsAppState;->showFps:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public loadStatsView()V
    .locals 4

    new-instance v0, Lcom/jme3/app/StatsView;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->app:Lcom/jme3/app/Application;

    invoke-interface {v1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/app/StatsAppState;->app:Lcom/jme3/app/Application;

    invoke-interface {v2}, Lcom/jme3/app/Application;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/jme3/renderer/Renderer;->getStatistics()Lcom/jme3/renderer/Statistics;

    move-result-object v2

    const-string v3, "Statistics View"

    invoke-direct {v0, v3, v1, v2}, Lcom/jme3/app/StatsView;-><init>(Ljava/lang/String;Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/Statistics;)V

    iput-object v0, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    invoke-virtual {v1}, Lcom/jme3/font/BitmapText;->getLineHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    iget-boolean v1, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    invoke-virtual {v0, v1}, Lcom/jme3/app/StatsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    iget-boolean v1, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->guiNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public setDarkenBehind(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/app/StatsAppState;->darkenBehind:Z

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/app/StatsAppState;->setEnabled(Z)V

    return-void
.end method

.method public setDisplayFps(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/app/StatsAppState;->showFps:Z

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p1, p0, Lcom/jme3/app/StatsAppState;->darkenFps:Lcom/jme3/scene/Geometry;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showFps:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->darkenBehind:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    :cond_2
    return-void
.end method

.method public setDisplayStatView(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/jme3/app/StatsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p1, p0, Lcom/jme3/app/StatsAppState;->darkenStats:Lcom/jme3/scene/Geometry;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->darkenBehind:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/jme3/app/StatsAppState;->showFps:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p1, p0, Lcom/jme3/app/StatsAppState;->darkenFps:Lcom/jme3/scene/Geometry;

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showFps:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->darkenBehind:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p1, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    invoke-virtual {p1, v0}, Lcom/jme3/app/StatsView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p1, p0, Lcom/jme3/app/StatsAppState;->darkenStats:Lcom/jme3/scene/Geometry;

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->darkenBehind:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_3
    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    goto :goto_4

    :cond_5
    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->darkenFps:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/app/StatsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->statsView:Lcom/jme3/app/StatsView;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->darkenStats:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    :goto_4
    return-void
.end method

.method public setFont(Lcom/jme3/font/BitmapFont;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/app/StatsAppState;->guiFont:Lcom/jme3/font/BitmapFont;

    new-instance v0, Lcom/jme3/font/BitmapText;

    invoke-direct {v0, p1}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object v0, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    return-void
.end method

.method public toggleStats()V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showFps:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/app/StatsAppState;->setDisplayFps(Z)V

    iget-boolean v0, p0, Lcom/jme3/app/StatsAppState;->showStats:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/app/StatsAppState;->setDisplayStatView(Z)V

    return-void
.end method

.method public update(F)V
    .locals 3

    iget-boolean p1, p0, Lcom/jme3/app/StatsAppState;->showFps:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/jme3/app/StatsAppState;->secondCounter:F

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->app:Lcom/jme3/app/Application;

    invoke-interface {v0}, Lcom/jme3/app/Application;->getTimer()Lcom/jme3/system/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/system/Timer;->getTimePerFrame()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/app/StatsAppState;->secondCounter:F

    iget v0, p0, Lcom/jme3/app/StatsAppState;->frameCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/app/StatsAppState;->frameCounter:I

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/jme3/app/StatsAppState;->fpsText:Lcom/jme3/font/BitmapText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frames per second: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/app/StatsAppState;->secondCounter:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/app/StatsAppState;->frameCounter:I

    :cond_0
    return-void
.end method
