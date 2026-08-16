.class public Lcom/ardor3d/renderer/state/TextureState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/TextureState$CorrectionType;
    }
.end annotation


# static fields
.field public static DEFAULT_TEXTURE_SOURCE:Lcom/ardor3d/util/resource/ResourceSource; = null

.field public static final MAX_TEXTURES:I = 0x20

.field protected static _defaultTexture:Lcom/ardor3d/image/Texture;

.field protected static defaultTextureLoaded:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private _correctionType:Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

.field public transient _keyCache:[Lcom/ardor3d/util/TextureKey;

.field protected _texture:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/image/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/ardor3d/renderer/state/TextureState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/ardor3d/renderer/state/TextureState;->logger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    sput-object v1, Lcom/ardor3d/renderer/state/TextureState;->_defaultTexture:Lcom/ardor3d/image/Texture;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/ardor3d/renderer/state/TextureState;->defaultTextureLoaded:Z

    :try_start_0
    new-instance v2, Lcom/ardor3d/util/resource/URLResourceSource;

    const-string v3, "com/ardor3d/renderer/state/notloaded.tga"

    invoke-static {v0, v3}, Lcom/ardor3d/util/resource/ResourceLocatorTool;->getClassPathResource(Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ardor3d/util/resource/URLResourceSource;-><init>(Ljava/net/URL;)V

    sput-object v2, Lcom/ardor3d/renderer/state/TextureState;->DEFAULT_TEXTURE_SOURCE:Lcom/ardor3d/util/resource/ResourceSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput-object v1, Lcom/ardor3d/renderer/state/TextureState;->DEFAULT_TEXTURE_SOURCE:Lcom/ardor3d/util/resource/ResourceSource;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    sget-object v0, Lcom/ardor3d/renderer/state/TextureState$CorrectionType;->Perspective:Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_correctionType:Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/ardor3d/util/TextureKey;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_keyCache:[Lcom/ardor3d/util/TextureKey;

    sget-boolean v0, Lcom/ardor3d/renderer/state/TextureState;->defaultTextureLoaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->loadDefaultTexture()V

    :cond_0
    return-void
.end method

.method public static getDefaultTexture()Lcom/ardor3d/image/Texture;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/renderer/state/TextureState;->defaultTextureLoaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->loadDefaultTexture()V

    :cond_0
    sget-object v0, Lcom/ardor3d/renderer/state/TextureState;->_defaultTexture:Lcom/ardor3d/image/Texture;

    invoke-virtual {v0}, Lcom/ardor3d/image/Texture;->createSimpleClone()Lcom/ardor3d/image/Texture;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTextureImage()Lcom/ardor3d/image/Image;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/TextureState;->_defaultTexture:Lcom/ardor3d/image/Texture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ardor3d/image/Texture;->getImage()Lcom/ardor3d/image/Image;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static loadDefaultTexture()V
    .locals 5

    sget-object v0, Lcom/ardor3d/renderer/state/TextureState;->logger:Ljava/util/logging/Logger;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ardor3d/renderer/state/TextureState;->defaultTextureLoaded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/ardor3d/renderer/state/TextureState;->defaultTextureLoaded:Z

    new-instance v2, Lcom/ardor3d/image/Texture2D;

    invoke-direct {v2}, Lcom/ardor3d/image/Texture2D;-><init>()V

    sput-object v2, Lcom/ardor3d/renderer/state/TextureState;->_defaultTexture:Lcom/ardor3d/image/Texture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lcom/ardor3d/renderer/state/TextureState;->DEFAULT_TEXTURE_SOURCE:Lcom/ardor3d/util/resource/ResourceSource;

    sget-object v3, Lcom/ardor3d/image/Texture$MinificationFilter;->Trilinear:Lcom/ardor3d/image/Texture$MinificationFilter;

    invoke-static {v2, v3, v1}, Lcom/ardor3d/util/TextureManager;->load(Lcom/ardor3d/util/resource/ResourceSource;Lcom/ardor3d/image/Texture$MinificationFilter;Z)Lcom/ardor3d/image/Texture;

    move-result-object v1

    sput-object v1, Lcom/ardor3d/renderer/state/TextureState;->_defaultTexture:Lcom/ardor3d/image/Texture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/ardor3d/renderer/state/TextureState;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Failed to load default texture: notloaded.tga"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearTextures()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ardor3d/renderer/state/TextureState;->removeTexture(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/TextureStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/TextureStateRecord;-><init>()V

    return-object v0
.end method

.method public extract(Ljava/util/Stack;Lcom/ardor3d/scenegraph/Spatial;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "+",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ")",
            "Lcom/ardor3d/renderer/state/RenderState;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/RenderState;

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getTextureCombineMode()Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    move-result-object p2

    sget-object v0, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Replace:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    if-eq p2, v0, :cond_c

    sget-object v0, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto/16 :goto_7

    :cond_1
    new-instance v0, Lcom/ardor3d/renderer/state/TextureState;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/TextureState;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lcom/ardor3d/renderer/state/TextureState$1;->$SwitchMap$com$ardor3d$scenegraph$hint$TextureCombineMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    if-eq v2, v1, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 p2, 0x3

    if-eq v2, p2, :cond_2

    goto/16 :goto_6

    :cond_2
    array-length p2, p1

    move v2, v3

    move v4, v2

    :goto_0
    if-ge v2, p2, :cond_6

    aget-object v5, p1, v2

    check-cast v5, Lcom/ardor3d/renderer/state/TextureState;

    invoke-virtual {v5}, Lcom/ardor3d/renderer/state/RenderState;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_1
    const/16 v6, 0x20

    if-ge v4, v6, :cond_5

    invoke-virtual {v5, v4}, Lcom/ardor3d/renderer/state/TextureState;->getTexture(I)Lcom/ardor3d/image/Texture;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/ardor3d/renderer/state/TextureState;->getTexture(I)Lcom/ardor3d/image/Texture;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual {v0, v6, v4}, Lcom/ardor3d/renderer/state/TextureState;->setTexture(Lcom/ardor3d/image/Texture;I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    move v3, v4

    goto :goto_6

    :cond_7
    array-length v2, p1

    sub-int/2addr v2, v1

    move v4, v3

    :goto_4
    if-ltz v2, :cond_6

    aget-object v5, p1, v2

    check-cast v5, Lcom/ardor3d/renderer/state/TextureState;

    invoke-virtual {v5}, Lcom/ardor3d/renderer/state/RenderState;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v5, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->CombineClosestEnabled:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    if-ne p2, v5, :cond_b

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Lcom/ardor3d/renderer/state/TextureState;->getMaxTextureIndexUsed()I

    move-result v4

    move v6, v3

    :goto_5
    if-gt v6, v4, :cond_a

    invoke-virtual {v5, v6}, Lcom/ardor3d/renderer/state/TextureState;->getTexture(I)Lcom/ardor3d/image/Texture;

    move-result-object v7

    invoke-virtual {v0, v6}, Lcom/ardor3d/renderer/state/TextureState;->getTexture(I)Lcom/ardor3d/image/Texture;

    move-result-object v8

    if-nez v8, :cond_9

    invoke-virtual {v0, v7, v6}, Lcom/ardor3d/renderer/state/TextureState;->setTexture(Lcom/ardor3d/image/Texture;I)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    move v4, v1

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :goto_6
    invoke-virtual {v0, v3}, Lcom/ardor3d/renderer/state/RenderState;->setEnabled(Z)V

    return-object v0

    :cond_c
    :goto_7
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/RenderState;

    return-object p1
.end method

.method public getCorrectionType()Lcom/ardor3d/renderer/state/TextureState$CorrectionType;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_correctionType:Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

    return-object v0
.end method

.method public getMaxTextureIndexUsed()I
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getNumberOfSetTextures()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getTexture()Lcom/ardor3d/image/Texture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTexture(I)Lcom/ardor3d/image/Texture;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/image/Texture;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getTextureKey(I)Lcom/ardor3d/util/TextureKey;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_keyCache:[Lcom/ardor3d/util/TextureKey;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "texture"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavableList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    const-class v0, Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

    sget-object v1, Lcom/ardor3d/renderer/state/TextureState$CorrectionType;->Perspective:Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

    const-string v2, "correctionType"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

    iput-object p1, p0, Lcom/ardor3d/renderer/state/TextureState;->_correctionType:Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

    return-void
.end method

.method public removeTexture(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/16 v1, 0x20

    if-ge p1, v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/image/Texture;

    if-nez v1, :cond_1

    return v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_keyCache:[Lcom/ardor3d/util/TextureKey;

    aput-object v1, v0, p1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public removeTexture(Lcom/ardor3d/image/Texture;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_keyCache:[Lcom/ardor3d/util/TextureKey;

    aput-object v1, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public setCorrectionType(Lcom/ardor3d/renderer/state/TextureState$CorrectionType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/TextureState;->_correctionType:Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTexture(Lcom/ardor3d/image/Texture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setTexture(Lcom/ardor3d/image/Texture;I)V
    .locals 2

    if-ltz p2, :cond_1

    const/16 v0, 0x20

    if-ge p2, v0, :cond_1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_texture:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "texture"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/TextureState;->_correctionType:Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

    const-string v1, "correctionType"

    sget-object v2, Lcom/ardor3d/renderer/state/TextureState$CorrectionType;->Perspective:Lcom/ardor3d/renderer/state/TextureState$CorrectionType;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
