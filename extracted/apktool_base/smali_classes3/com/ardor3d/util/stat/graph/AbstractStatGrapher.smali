.class public abstract Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/stat/StatListener;


# instance fields
.field protected _config:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/ardor3d/util/stat/StatType;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _enabled:Z

.field protected _gHeight:I

.field protected _gWidth:I

.field protected _texture:Lcom/ardor3d/image/Texture2D;

.field protected _textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;


# direct methods
.method public constructor <init>(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_enabled:Z

    iput p1, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_gWidth:I

    iput p2, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_gHeight:I

    sget-object v0, Lcom/ardor3d/renderer/TextureRendererFactory;->INSTANCE:Lcom/ardor3d/renderer/TextureRendererFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ardor3d/renderer/TextureRendererFactory;->createTextureRenderer(IILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)Lcom/ardor3d/renderer/TextureRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/ardor3d/math/ColorRGBA;

    sget-object p3, Lcom/ardor3d/math/ColorRGBA;->BLACK:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {p2, p3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-interface {p1, p2}, Lcom/ardor3d/renderer/TextureRenderer;->setBackgroundColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addConfig(Lcom/ardor3d/util/stat/StatType;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/util/stat/StatType;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearConfig()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public clearConfig(Lcom/ardor3d/util/stat/StatType;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public clearConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getBooleanConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getColorConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/ardor3d/math/ColorRGBA;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/ardor3d/math/ColorRGBA;

    return-object p1

    :cond_0
    return-object p3
.end method

.method public getDoubleConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;D)D
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p3
.end method

.method public getFloatConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getIntConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getLongConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p3
.end method

.method public getShortConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;S)S
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public getStringConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p3
.end method

.method public getTextureRenderer()Lcom/ardor3d/renderer/TextureRenderer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    return-object v0
.end method

.method public hasConfig(Lcom/ardor3d/util/stat/StatType;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_config:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_enabled:Z

    return v0
.end method

.method public abstract reset()V
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_enabled:Z

    return-void
.end method

.method public setTexture(Lcom/ardor3d/image/Texture2D;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_textureRenderer:Lcom/ardor3d/renderer/TextureRenderer;

    invoke-interface {v0, p1}, Lcom/ardor3d/renderer/TextureRenderer;->setupTexture(Lcom/ardor3d/image/Texture2D;)V

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->_texture:Lcom/ardor3d/image/Texture2D;

    return-void
.end method
