.class public Lcom/jme3/material/plugins/J3MLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/plugins/J3MLoader$TextureOption;,
        Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final whitespacePattern:Ljava/lang/String; = "\\p{javaWhitespace}+"


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field isUseNodes:Z

.field private key:Lcom/jme3/asset/AssetKey;

.field langSize:I

.field private material:Lcom/jme3/material/Material;

.field private materialDef:Lcom/jme3/material/MaterialDef;

.field private nodesLoaderDelegate:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

.field private final presetDefines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private renderState:Lcom/jme3/material/RenderState;

.field private final shaderLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/EnumMap<",
            "Lcom/jme3/shader/Shader$ShaderType;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final shaderNames:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/jme3/shader/Shader$ShaderType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private technique:Lcom/jme3/material/TechniqueDef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/material/plugins/J3MLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/plugins/J3MLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/material/plugins/J3MLoader;->isUseNodes:Z

    iput v0, p0, Lcom/jme3/material/plugins/J3MLoader;->langSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->presetDefines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLanguages:Ljava/util/List;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/jme3/shader/Shader$ShaderType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderNames:Ljava/util/EnumMap;

    return-void
.end method

.method private static createShaderPrologue(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/jme3/shader/DefineList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/jme3/shader/DefineList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/shader/DefineList;->set(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/jme3/shader/DefineList;->generateSource(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isTexturePathDeclaredTheTraditionalWay(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "Flip Repeat "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "Flip "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Repeat "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Repeat Flip "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;

    invoke-static {p2}, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->access$000(Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;)Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    move-result-object p2

    sget-object v2, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Flip:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    if-eq p2, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;

    invoke-static {p2}, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->access$000(Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;)Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    move-result-object p2

    sget-object v2, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Repeat:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    if-ne p2, v2, :cond_3

    :cond_2
    return v0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;

    invoke-static {p2}, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->access$000(Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;)Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    move-result-object p2

    sget-object v3, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Flip:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    if-ne p2, v3, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;

    invoke-static {p2}, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->access$000(Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;)Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    move-result-object p2

    sget-object v3, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Repeat:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    if-ne p2, v3, :cond_4

    return v0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;

    invoke-static {p2}, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->access$000(Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;)Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    move-result-object p2

    sget-object v2, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Repeat:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    if-ne p2, v2, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;

    invoke-static {p1}, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->access$000(Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;)Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    move-result-object p1

    sget-object p2, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->Flip:Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    if-ne p1, p2, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method private loadFromRoot(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/asset/AssetLoadException;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "In multiroot material, expected first statement to be \'Exception\'"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MaterialDef"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move v4, v1

    goto :goto_0

    :cond_2
    const-string v4, "Material"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move v4, v3

    :goto_0
    const-string v5, ":"

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    array-length v6, v5

    if-ne v6, v2, :cond_5

    if-eqz v4, :cond_4

    aget-object v0, v5, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    new-instance v3, Lcom/jme3/asset/AssetKey;

    invoke-direct {v3, v0}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/material/MaterialDef;

    if-eqz v2, :cond_3

    new-instance v0, Lcom/jme3/material/Material;

    invoke-direct {v0, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/material/MaterialDef;)V

    iput-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v0, v2}, Lcom/jme3/material/Material;->setKey(Lcom/jme3/asset/AssetKey;)V

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    aget-object v2, v5, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/jme3/material/plugins/MatParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extended material "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be found."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    const-string v1, "Must use \'Material\' when extending."

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_5
    array-length v2, v5

    if-ne v2, v3, :cond_f

    if-nez v4, :cond_e

    new-instance v2, Lcom/jme3/material/MaterialDef;

    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-direct {v2, v3, v0}, Lcom/jme3/material/MaterialDef;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v0}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jme3/material/MaterialDef;->setAssetName(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[ \\{]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "MaterialParameters"

    if-eqz v4, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readExtendingMaterialParams(Ljava/util/List;)V

    goto :goto_2

    :cond_7
    const-string v3, "AdditionalRenderState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readAdditionalRenderState(Ljava/util/List;)V

    goto :goto_2

    :cond_8
    const-string v3, "Transparent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readTransparentStatement(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v3, "ReceivesShadows"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readReceivesShadowsStatement(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v5, "Technique"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readTechnique(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readMaterialParams(Ljava/util/List;)V

    goto :goto_2

    :cond_c
    new-instance p1, Lcom/jme3/material/plugins/MatParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected material statement, got \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p1

    :cond_d
    return-void

    :cond_e
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    const-string v1, "Expected \':\', got \'{\'"

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_f
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    const-string v1, "Cannot use colon in material name/path"

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_10
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    const-string v1, "Material name cannot be empty"

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_11
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Specified file is not a Material file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Too many roots in J3M/J3MD file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "On"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private parseTextureOptions(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->getTextureOption(Ljava/lang/String;)Lcom/jme3/material/plugins/J3MLoader$TextureOption;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v6, "\\"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "Flip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "Repeat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v5, Lcom/jme3/material/plugins/J3MLoader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v7, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    iget-object v8, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v8}, Lcom/jme3/material/Material;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "Unknown texture option \"{0}\" encountered for \"{1}\" in material \"{2}\""

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Lcom/jme3/material/plugins/J3MLoader$TextureOption;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;

    invoke-direct {v6, v5, v4}, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;-><init>(Lcom/jme3/material/plugins/J3MLoader$TextureOption;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private parseTextureType(Lcom/jme3/shader/VarType;Ljava/lang/String;)Lcom/jme3/texture/Texture;
    .locals 9

    invoke-direct {p0, p2}, Lcom/jme3/material/plugins/J3MLoader;->tokenizeTextureValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->parseTextureOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    new-instance p2, Lcom/jme3/asset/TextureKey;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0, v3}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v5}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/jme3/material/plugins/J3MLoader;->isTexturePathDeclaredTheTraditionalWay(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "Flip Repeat "

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Repeat Flip "

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "Flip "

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move v2, v5

    goto :goto_2

    :cond_2
    const-string v2, "Repeat "

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v2, 0xc

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_2
    const-string v6, "\""

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "\'"

    if-nez v7, :cond_5

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_8
    new-instance v6, Lcom/jme3/asset/TextureKey;

    invoke-direct {v6, p2, v2}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_9
    move-object v6, v4

    :goto_3
    if-nez v6, :cond_a

    new-instance p2, Lcom/jme3/asset/TextureKey;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0, v3}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_a
    move-object p2, v6

    :goto_4
    invoke-virtual {p2, v5}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;

    invoke-virtual {v2, p2}, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->applyToTextureKey(Lcom/jme3/asset/TextureKey;)V

    goto :goto_5

    :cond_b
    :goto_6
    sget-object v0, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v5, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    goto :goto_7

    :cond_c
    sget-object p1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {p2, p1}, Lcom/jme3/asset/TextureKey;->setTextureTypeHint(Lcom/jme3/texture/Texture$Type;)V

    goto :goto_7

    :cond_d
    sget-object p1, Lcom/jme3/texture/Texture$Type;->TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {p2, p1}, Lcom/jme3/asset/TextureKey;->setTextureTypeHint(Lcom/jme3/texture/Texture$Type;)V

    goto :goto_7

    :cond_e
    sget-object p1, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {p2, p1}, Lcom/jme3/asset/TextureKey;->setTextureTypeHint(Lcom/jme3/texture/Texture$Type;)V

    :goto_7
    :try_start_0
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {p1, p2}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object v4
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    sget-object p1, Lcom/jme3/material/plugins/J3MLoader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Cannot locate {0} for material {1}"

    invoke-virtual {p1, v0, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    if-nez v4, :cond_f

    new-instance v4, Lcom/jme3/texture/Texture2D;

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-static {p1}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderImage(Lcom/jme3/asset/AssetManager;)Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/jme3/texture/Texture2D;-><init>(Lcom/jme3/texture/Image;)V

    invoke-virtual {v4, p2}, Lcom/jme3/texture/Texture;->setKey(Lcom/jme3/asset/AssetKey;)V

    invoke-virtual {p2}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/jme3/texture/Texture;->setName(Ljava/lang/String;)V

    :cond_f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;

    invoke-virtual {p2, v4}, Lcom/jme3/material/plugins/J3MLoader$TextureOptionValue;->applyToTexture(Lcom/jme3/texture/Texture;)V

    goto :goto_9

    :cond_10
    return-object v4
.end method

.method private readAdditionalRenderState(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readRenderStateStatement(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    return-void
.end method

.method private readBooleanStatement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " statement syntax incorrect"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readDefine(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->presetDefines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v1, p1}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/jme3/material/plugins/J3MLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v3}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "In technique \'\'{0}\'\':\nDefine \'\'{1}\'\' mapped to non-existent material parameter \'\'{2}\'\', ignoring."

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v2, p1, v1, v0}, Lcom/jme3/material/TechniqueDef;->addShaderParamDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Define syntax incorrect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readDefines(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readDefine(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readExtendingMaterialParams(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readValueParam(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readForcedRenderState(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readRenderStateStatement(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    invoke-virtual {p1, v0}, Lcom/jme3/material/TechniqueDef;->setForcedRenderState(Lcom/jme3/material/RenderState;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    return-void
.end method

.method private readLightMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/jme3/material/TechniqueDef$LightMode;->valueOf(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0, p1}, Lcom/jme3/material/TechniqueDef;->setLightMode(Lcom/jme3/material/TechniqueDef$LightMode;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LightMode statement syntax incorrect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readLightSpace(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/jme3/material/TechniqueDef$LightSpace;->valueOf(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef$LightSpace;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0, p1}, Lcom/jme3/material/TechniqueDef;->setLightSpace(Lcom/jme3/material/TechniqueDef$LightSpace;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LightSpace statement syntax incorrect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readMaterialParams(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readParam(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readParam(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const-string v2, "Parameter statement syntax incorrect"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    array-length p1, v0

    if-ne p1, v3, :cond_7

    aget-object p1, v0, v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "-LINEAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    const-string v7, "("

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    const-string v8, ")"

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v7, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-ne v7, v3, :cond_6

    aget-object v2, p1, v4

    const-string v3, "Color"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    goto :goto_2

    :cond_3
    aget-object v2, p1, v4

    invoke-static {v2}, Lcom/jme3/shader/VarType;->valueOf(Ljava/lang/String;)Lcom/jme3/shader/VarType;

    move-result-object v2

    :goto_2
    aget-object p1, p1, v6

    if-eqz v0, :cond_4

    invoke-direct {p0, v2, v0}, Lcom/jme3/material/plugins/J3MLoader;->readValue(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    :cond_4
    invoke-virtual {v2}, Lcom/jme3/shader/VarType;->isTextureType()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    check-cast v5, Lcom/jme3/texture/Texture;

    invoke-virtual {v0, v2, p1, v1, v5}, Lcom/jme3/material/MaterialDef;->addMaterialParamTexture(Lcom/jme3/shader/VarType;Ljava/lang/String;Lcom/jme3/texture/image/ColorSpace;Lcom/jme3/texture/Texture;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0, v2, p1, v5}, Lcom/jme3/material/MaterialDef;->addMaterialParam(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-void

    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readReceivesShadowsStatement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ReceivesShadows"

    invoke-direct {p0, p1, v0}, Lcom/jme3/material/plugins/J3MLoader;->readBooleanStatement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v0, p1}, Lcom/jme3/material/Material;->setReceivesShadows(Z)V

    return-void
.end method

.method private readRenderState(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->readRenderStateStatement(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    invoke-virtual {p1, v0}, Lcom/jme3/material/TechniqueDef;->setRenderState(Lcom/jme3/material/RenderState;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    return-void
.end method

.method private readRenderStateStatement(Lcom/jme3/util/blockparser/Statement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\p{javaWhitespace}+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "Wireframe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    goto/16 :goto_0

    :cond_0
    aget-object v2, v0, v1

    const-string v4, "FaceCull"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/jme3/material/RenderState$FaceCullMode;->valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    goto/16 :goto_0

    :cond_1
    aget-object v2, v0, v1

    const-string v4, "DepthWrite"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    goto/16 :goto_0

    :cond_2
    aget-object v2, v0, v1

    const-string v4, "DepthTest"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    goto/16 :goto_0

    :cond_3
    aget-object v2, v0, v1

    const-string v4, "Blend"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/jme3/material/RenderState$BlendMode;->valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    goto/16 :goto_0

    :cond_4
    aget-object v2, v0, v1

    const-string v4, "BlendEquation"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/jme3/material/RenderState$BlendEquation;->valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$BlendEquation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setBlendEquation(Lcom/jme3/material/RenderState$BlendEquation;)V

    goto/16 :goto_0

    :cond_5
    aget-object v2, v0, v1

    const-string v4, "BlendEquationAlpha"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/jme3/material/RenderState$BlendEquationAlpha;->valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$BlendEquationAlpha;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setBlendEquationAlpha(Lcom/jme3/material/RenderState$BlendEquationAlpha;)V

    goto/16 :goto_0

    :cond_6
    aget-object v2, v0, v1

    const-string v4, "AlphaTestFalloff"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_0

    :cond_7
    aget-object v2, v0, v1

    const-string v4, "PolyOffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    aget-object p1, v0, v3

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    invoke-virtual {v1, p1, v0}, Lcom/jme3/material/RenderState;->setPolyOffset(FF)V

    goto :goto_0

    :cond_8
    aget-object v2, v0, v1

    const-string v4, "ColorWrite"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setColorWrite(Z)V

    goto :goto_0

    :cond_9
    aget-object v2, v0, v1

    const-string v4, "PointSprite"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_0

    :cond_a
    aget-object v2, v0, v1

    const-string v4, "DepthFunc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/jme3/material/RenderState$TestFunction;->valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setDepthFunc(Lcom/jme3/material/RenderState$TestFunction;)V

    goto :goto_0

    :cond_b
    aget-object v2, v0, v1

    const-string v4, "AlphaFunc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_0

    :cond_c
    aget-object v2, v0, v1

    const-string v4, "LineWidth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    :goto_0
    return-void

    :cond_d
    new-instance v2, Lcom/jme3/material/plugins/MatParseException;

    const/4 v3, 0x0

    aget-object v0, v0, v1

    invoke-direct {v2, v3, v0, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v2
.end method

.method private varargs readShaderDefinition(Lcom/jme3/shader/Shader$ShaderType;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderNames:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/jme3/material/plugins/J3MLoader;->langSize:I

    if-eqz p2, :cond_1

    array-length v0, p3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jme3/asset/AssetLoadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Technique "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {p3}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must have the same number of languages for each shader type."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    array-length p2, p3

    iput p2, p0, Lcom/jme3/material/plugins/J3MLoader;->langSize:I

    const/4 p2, 0x0

    :goto_1
    array-length v0, p3

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLanguages:Ljava/util/List;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/jme3/shader/Shader$ShaderType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLanguages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    aget-object v1, p3, p2

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private readShaderStatement(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 p1, 0x0

    aget-object v1, v0, p1

    const-string v2, "\\p{javaWhitespace}+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/jme3/shader/Shader$ShaderType;->values()[Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v2

    array-length v3, v2

    move v4, p1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    aget-object v6, v1, p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Shader"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    array-length v8, v1

    invoke-static {v1, v6, v8}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-direct {p0, v5, v7, v6}, Lcom/jme3/material/plugins/J3MLoader;->readShaderDefinition(Lcom/jme3/shader/Shader$ShaderType;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shader statement syntax incorrect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readShadowMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/jme3/material/TechniqueDef$ShadowMode;->valueOf(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef$ShadowMode;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0, p1}, Lcom/jme3/material/TechniqueDef;->setShadowMode(Lcom/jme3/material/TechniqueDef$ShadowMode;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "ShadowMode statement syntax incorrect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readTechnique(Lcom/jme3/util/blockparser/Statement;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/material/plugins/J3MLoader;->isUseNodes:Z

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\p{javaWhitespace}+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jme3/util/clone/Cloner;

    invoke-direct {v2}, Lcom/jme3/util/clone/Cloner;-><init>()V

    array-length v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const-string v1, "Default"

    goto :goto_0

    :cond_0
    array-length v3, v1

    if-ne v3, v4, :cond_b

    aget-object v1, v1, v5

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v6}, Lcom/jme3/material/MaterialDef;->getAssetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-direct {v6, v1, v3}, Lcom/jme3/material/TechniqueDef;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/util/blockparser/Statement;

    invoke-direct {p0, v3}, Lcom/jme3/material/plugins/J3MLoader;->readTechniqueStatement(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->presetDefines:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/jme3/material/plugins/J3MLoader;->createShaderPrologue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/jme3/material/TechniqueDef;->setShaderPrologue(Ljava/lang/String;)V

    sget-object p1, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$material$TechniqueDef$LightMode:[I

    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v3}, Lcom/jme3/material/TechniqueDef;->getLightMode()Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    new-instance v3, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;

    iget-object v4, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-direct {v3, v4}, Lcom/jme3/material/logic/SinglePassAndImageBasedLightingLogic;-><init>(Lcom/jme3/material/TechniqueDef;)V

    invoke-virtual {p1, v3}, Lcom/jme3/material/TechniqueDef;->setLogic(Lcom/jme3/material/logic/TechniqueDefLogic;)V

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Light mode not supported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v1}, Lcom/jme3/material/TechniqueDef;->getLightMode()Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    new-instance v3, Lcom/jme3/material/logic/StaticPassLightingLogic;

    invoke-direct {v3, p1}, Lcom/jme3/material/logic/StaticPassLightingLogic;-><init>(Lcom/jme3/material/TechniqueDef;)V

    invoke-virtual {p1, v3}, Lcom/jme3/material/TechniqueDef;->setLogic(Lcom/jme3/material/logic/TechniqueDefLogic;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    new-instance v3, Lcom/jme3/material/logic/SinglePassLightingLogic;

    iget-object v4, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-direct {v3, v4}, Lcom/jme3/material/logic/SinglePassLightingLogic;-><init>(Lcom/jme3/material/TechniqueDef;)V

    invoke-virtual {p1, v3}, Lcom/jme3/material/TechniqueDef;->setLogic(Lcom/jme3/material/logic/TechniqueDefLogic;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    new-instance v3, Lcom/jme3/material/logic/MultiPassLightingLogic;

    iget-object v4, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-direct {v3, v4}, Lcom/jme3/material/logic/MultiPassLightingLogic;-><init>(Lcom/jme3/material/TechniqueDef;)V

    invoke-virtual {p1, v3}, Lcom/jme3/material/TechniqueDef;->setLogic(Lcom/jme3/material/logic/TechniqueDefLogic;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    new-instance v3, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;

    invoke-direct {v3, p1}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;-><init>(Lcom/jme3/material/TechniqueDef;)V

    invoke-virtual {p1, v3}, Lcom/jme3/material/TechniqueDef;->setLogic(Lcom/jme3/material/logic/TechniqueDefLogic;)V

    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lcom/jme3/material/plugins/J3MLoader;->isUseNodes:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GLSL100"

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/jme3/material/TechniqueDef;->setShaderFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderNames:Ljava/util/EnumMap;

    sget-object v6, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v3, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderNames:Ljava/util/EnumMap;

    sget-object v6, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v3, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_8

    :goto_3
    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_8

    invoke-virtual {v2}, Lcom/jme3/util/clone/Cloner;->clearIndex()V

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v2, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/TechniqueDef;

    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderNames:Ljava/util/EnumMap;

    iget-object v6, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLanguages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/EnumMap;

    invoke-virtual {v1, v3, v6}, Lcom/jme3/material/TechniqueDef;->setShaderFile(Ljava/util/EnumMap;Ljava/util/EnumMap;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderNames:Ljava/util/EnumMap;

    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLanguages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/EnumMap;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/material/TechniqueDef;->setShaderFile(Ljava/util/EnumMap;Ljava/util/EnumMap;)V

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/TechniqueDef;

    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v2, v1}, Lcom/jme3/material/MaterialDef;->addTechniqueDef(Lcom/jme3/material/TechniqueDef;)V

    goto :goto_5

    :cond_9
    iput-object v4, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    iput v0, p0, Lcom/jme3/material/plugins/J3MLoader;->langSize:I

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLanguages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderNames:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->clear()V

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->presetDefines:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_a
    iput-object v4, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLanguages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderNames:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->clear()V

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->presetDefines:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lcom/jme3/material/plugins/J3MLoader;->langSize:I

    sget-object p1, Lcom/jme3/material/plugins/J3MLoader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Fixed function technique was ignored"

    invoke-virtual {p1, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Fixed function technique \'\'{0}\'\' was ignored for material {1}"

    invoke-virtual {p1, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Technique statement syntax incorrect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readTechniqueStatement(Lcom/jme3/util/blockparser/Statement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ \\{]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "VertexShader"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    aget-object v2, v0, v1

    const-string v3, "FragmentShader"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    aget-object v2, v0, v1

    const-string v3, "GeometryShader"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    aget-object v2, v0, v1

    const-string v3, "TessellationControlShader"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    aget-object v2, v0, v1

    const-string v3, "TessellationEvaluationShader"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    aget-object v2, v0, v1

    const-string v3, "LightMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->readLightMode(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    aget-object v2, v0, v1

    const-string v3, "LightSpace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->readLightSpace(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    aget-object v2, v0, v1

    const-string v3, "ShadowMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->readShadowMode(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    aget-object v2, v0, v1

    const-string v3, "WorldParameters"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->readWorldParams(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_4
    aget-object v2, v0, v1

    const-string v3, "RenderState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->readRenderState(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_5
    aget-object v2, v0, v1

    const-string v3, "ForcedRenderState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->readForcedRenderState(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_6
    aget-object v2, v0, v1

    const-string v3, "Defines"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->readDefines(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_7
    aget-object v2, v0, v1

    const-string v3, "ShaderNodesDefinitions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/jme3/material/plugins/J3MLoader;->initNodesLoader()V

    iget-boolean v0, p0, Lcom/jme3/material/plugins/J3MLoader;->isUseNodes:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->nodesLoaderDelegate:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readNodesDefinitions(Ljava/util/List;)V

    goto :goto_1

    :cond_8
    aget-object v2, v0, v1

    const-string v3, "VertexShaderNodes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/jme3/material/plugins/J3MLoader;->initNodesLoader()V

    iget-boolean v0, p0, Lcom/jme3/material/plugins/J3MLoader;->isUseNodes:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->nodesLoaderDelegate:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readVertexShaderNodes(Ljava/util/List;)V

    goto :goto_1

    :cond_9
    aget-object v2, v0, v1

    const-string v3, "FragmentShaderNodes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/jme3/material/plugins/J3MLoader;->initNodesLoader()V

    iget-boolean v0, p0, Lcom/jme3/material/plugins/J3MLoader;->isUseNodes:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->nodesLoaderDelegate:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readFragmentShaderNodes(Ljava/util/List;)V

    goto :goto_1

    :cond_a
    aget-object v2, v0, v1

    const-string v3, "NoRender"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jme3/material/TechniqueDef;->setNoRender(Z)V

    goto :goto_1

    :cond_b
    new-instance v2, Lcom/jme3/material/plugins/MatParseException;

    const/4 v3, 0x0

    aget-object v0, v0, v1

    invoke-direct {v2, v3, v0, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v2

    :cond_c
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->readShaderStatement(Ljava/lang/String;)V

    :cond_d
    :goto_1
    return-void
.end method

.method private readTransparentStatement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Transparent"

    invoke-direct {p0, p1, v0}, Lcom/jme3/material/plugins/J3MLoader;->readBooleanStatement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v0, p1}, Lcom/jme3/material/Material;->setTransparent(Z)V

    return-void
.end method

.method private readValue(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/shader/VarType;->isTextureType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/jme3/material/plugins/J3MLoader;->parseTextureType(Lcom/jme3/shader/VarType;Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\p{javaWhitespace}+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    array-length p1, v0

    if-ne p1, v5, :cond_1

    aget-object p1, v0, v4

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boolean value parameter must have 1 entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    array-length p1, v0

    if-ne p1, v5, :cond_2

    aget-object p1, v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Int value parameter must have 1 entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    array-length p1, v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    new-instance p1, Lcom/jme3/math/ColorRGBA;

    aget-object p2, v0, v4

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p1, p2, v1, v3, v0}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    return-object p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vector4 value parameter must have 4 entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    array-length p1, v0

    if-ne p1, v2, :cond_4

    new-instance p1, Lcom/jme3/math/Vector3f;

    aget-object p2, v0, v4

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p1, p2, v1, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vector3 value parameter must have 3 entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    array-length p1, v0

    if-ne p1, v3, :cond_5

    new-instance p1, Lcom/jme3/math/Vector2f;

    aget-object p2, v0, v4

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vector2 value parameter must have 2 entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    array-length p1, v0

    if-ne p1, v5, :cond_6

    aget-object p1, v0, v4

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Float value parameter must have 1 entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readValueParam(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-direct {p0, v2, p1}, Lcom/jme3/material/plugins/J3MLoader;->readValue(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/shader/VarType;->isTextureType()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v1

    check-cast p1, Lcom/jme3/texture/Texture;

    invoke-virtual {v2, v0, v1, p1}, Lcom/jme3/material/Material;->setTextureParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Lcom/jme3/texture/Texture;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v1

    invoke-virtual {v2, v0, v1, p1}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The material parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is undefined."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Value parameter statement syntax incorrect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readWorldParams(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/material/TechniqueDef;->addWorldParam(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tokenizeTextureValue(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "[^\\s\"\']+|\"([^\"]*)\"|\'([^\']*)\'"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public initNodesLoader()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/material/plugins/J3MLoader;->isUseNodes:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderNames:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderNames:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/jme3/material/plugins/J3MLoader;->isUseNodes:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->nodesLoaderDelegate:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    if-nez v0, :cond_1

    new-instance v0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    invoke-direct {v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->nodesLoaderDelegate:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->nodesLoaderDelegate:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->setTechniqueDef(Lcom/jme3/material/TechniqueDef;)V

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->nodesLoaderDelegate:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->setMaterialDef(Lcom/jme3/material/MaterialDef;)V

    iget-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->nodesLoaderDelegate:Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;

    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-virtual {v0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->setAssetManager(Lcom/jme3/asset/AssetManager;)V

    :cond_2
    return-void
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getExtension()Ljava/lang/String;

    move-result-object p1

    const-string v1, "j3m"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    instance-of p1, p1, Lcom/jme3/asset/MaterialKey;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Material instances must be loaded via MaterialKey"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getExtension()Ljava/lang/String;

    move-result-object p1

    const-string v1, "j3md"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    instance-of p1, p1, Lcom/jme3/asset/MaterialKey;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Material definitions must be loaded via AssetKey"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-static {v0}, Lgf/a;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/util/blockparser/BlockLanguageParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->loadFromRoot(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    return-object p1

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_6
    throw p1
.end method

.method public loadMaterialDef(Ljava/util/List;Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)Lcom/jme3/material/MaterialDef;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;",
            "Lcom/jme3/asset/AssetManager;",
            "Lcom/jme3/asset/AssetKey;",
            ")",
            "Lcom/jme3/material/MaterialDef;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p3, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    iput-object p2, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-direct {p0, p1}, Lcom/jme3/material/plugins/J3MLoader;->loadFromRoot(Ljava/util/List;)V

    iget-object p1, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    return-object p1
.end method
