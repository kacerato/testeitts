.class public Ljme3utilities/debug/e;
.super Lif/y;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "Interface/Fonts/Default.fnt"

.field public static final synthetic B:Z = false

.field public static final y:F = 250.0f

.field public static final z:Ljava/util/logging/Logger;


# instance fields
.field public r:Lcom/jme3/font/BitmapText;

.field public final s:Lcom/jme3/math/ColorRGBA;

.field public final t:Lcom/jme3/math/ColorRGBA;

.field public u:D

.field public v:F

.field public w:F

.field public x:Lcom/jme3/scene/Geometry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljme3utilities/debug/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljme3utilities/debug/e;->z:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    sget-object v0, Lif/h;->Enabled:Lif/h;

    invoke-direct {p0, v0}, Lif/y;-><init>(Lif/h;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljme3utilities/debug/e;->r:Lcom/jme3/font/BitmapText;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Ljme3utilities/debug/e;->s:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Ljme3utilities/debug/e;->t:Lcom/jme3/math/ColorRGBA;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Ljme3utilities/debug/e;->u:D

    iput v2, p0, Ljme3utilities/debug/e;->v:F

    iput v1, p0, Ljme3utilities/debug/e;->w:F

    return-void
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ljme3utilities/debug/e;->v:F

    iget v0, p0, Ljme3utilities/debug/e;->w:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljme3utilities/debug/e;->u:D

    iget-object v0, p0, Ljme3utilities/debug/e;->r:Lcom/jme3/font/BitmapText;

    const-string v1, "(awaiting update)"

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    invoke-super {p0}, Lif/v;->cleanup()V

    iget-object v0, p0, Lif/y;->j:Lcom/jme3/scene/Node;

    iget-object v1, p0, Ljme3utilities/debug/e;->x:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lif/y;->j:Lcom/jme3/scene/Node;

    iget-object v1, p0, Ljme3utilities/debug/e;->r:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public g(F)V
    .locals 1

    const-string v0, "new interval"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    iput p1, p0, Ljme3utilities/debug/e;->w:F

    return-void
.end method

.method public h()F
    .locals 1

    iget v0, p0, Ljme3utilities/debug/e;->w:F

    return v0
.end method

.method public final i()V
    .locals 2

    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Ljme3utilities/debug/e;->v:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Max time per frame = %.1f msec"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/e;->r:Lcom/jme3/font/BitmapText;

    invoke-virtual {v1, v0}, Lcom/jme3/font/BitmapText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lif/y;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    iget-object p1, p0, Lif/y;->f:Lcom/jme3/asset/AssetManager;

    const-string p2, "Interface/Fonts/Default.fnt"

    invoke-interface {p1, p2}, Lcom/jme3/asset/AssetManager;->loadFont(Ljava/lang/String;)Lcom/jme3/font/BitmapFont;

    move-result-object p1

    new-instance p2, Lcom/jme3/font/BitmapText;

    invoke-direct {p2, p1}, Lcom/jme3/font/BitmapText;-><init>(Lcom/jme3/font/BitmapFont;)V

    iput-object p2, p0, Ljme3utilities/debug/e;->r:Lcom/jme3/font/BitmapText;

    invoke-virtual {p2}, Lcom/jme3/font/BitmapText;->getLineHeight()F

    move-result p1

    iget-object p2, p0, Ljme3utilities/debug/e;->r:Lcom/jme3/font/BitmapText;

    iget-object v0, p0, Ljme3utilities/debug/e;->t:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p2, v0}, Lcom/jme3/font/BitmapText;->setColor(Lcom/jme3/math/ColorRGBA;)V

    iget-object p2, p0, Ljme3utilities/debug/e;->r:Lcom/jme3/font/BitmapText;

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p2, p0, Ljme3utilities/debug/e;->r:Lcom/jme3/font/BitmapText;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object p2, p0, Lif/y;->j:Lcom/jme3/scene/Node;

    iget-object v2, p0, Ljme3utilities/debug/e;->r:Lcom/jme3/font/BitmapText;

    invoke-virtual {p2, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object p2, p0, Lif/y;->f:Lcom/jme3/asset/AssetManager;

    invoke-static {p2}, Lif/l;->m(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object p2

    iget-object v2, p0, Ljme3utilities/debug/e;->s:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v2

    const-string v3, "Color"

    invoke-virtual {p2, v3, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    invoke-virtual {p2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v2

    sget-object v3, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v2, v3}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    new-instance v2, Lcom/jme3/scene/shape/Quad;

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-direct {v2, v3, p1}, Lcom/jme3/scene/shape/Quad;-><init>(FF)V

    new-instance p1, Lcom/jme3/scene/Geometry;

    const-string v3, "perf stats background"

    invoke-direct {p1, v3, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object p1, p0, Ljme3utilities/debug/e;->x:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p1, p0, Ljme3utilities/debug/e;->x:Lcom/jme3/scene/Geometry;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v1, v1, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object p1, p0, Ljme3utilities/debug/e;->x:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object p1, p0, Lif/y;->j:Lcom/jme3/scene/Node;

    iget-object p2, p0, Ljme3utilities/debug/e;->x:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    invoke-direct {p0}, Ljme3utilities/debug/e;->f()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lif/v;->isEnabled()Z

    move-result v0

    invoke-super {p0, p1}, Lif/v;->setEnabled(Z)V

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ljme3utilities/debug/e;->f()V

    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    iget-object v0, p0, Ljme3utilities/debug/e;->x:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Ljme3utilities/debug/e;->r:Lcom/jme3/font/BitmapText;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    :cond_1
    return-void
.end method

.method public update(F)V
    .locals 4

    invoke-super {p0, p1}, Lif/v;->update(F)V

    iget v0, p0, Ljme3utilities/debug/e;->v:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ljme3utilities/debug/e;->v:F

    iget-wide v0, p0, Ljme3utilities/debug/e;->u:D

    float-to-double v2, p1

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljme3utilities/debug/e;->u:D

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    invoke-virtual {p0}, Ljme3utilities/debug/e;->i()V

    const/4 p1, 0x0

    iput p1, p0, Ljme3utilities/debug/e;->v:F

    iget p1, p0, Ljme3utilities/debug/e;->w:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljme3utilities/debug/e;->u:D

    :cond_0
    return-void
.end method
