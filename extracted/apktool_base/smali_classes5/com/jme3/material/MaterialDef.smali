.class public Lcom/jme3/material/MaterialDef;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private assetName:Ljava/lang/String;

.field private matParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/MatParam;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private techniques:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jme3/material/TechniqueDef;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/MaterialDef;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/material/MaterialDef;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 4
    iput-object p2, p0, Lcom/jme3/material/MaterialDef;->name:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jme3/material/MaterialDef;->techniques:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jme3/material/MaterialDef;->matParams:Ljava/util/Map;

    .line 7
    sget-object p1, Lcom/jme3/material/MaterialDef;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Loaded material definition: {0}"

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addMaterialParam(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->matParams:Ljava/util/Map;

    new-instance v1, Lcom/jme3/material/MatParam;

    invoke-direct {v1, p1, p2, p3}, Lcom/jme3/material/MatParam;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMaterialParamTexture(Lcom/jme3/shader/VarType;Ljava/lang/String;Lcom/jme3/texture/image/ColorSpace;Lcom/jme3/texture/Texture;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->matParams:Ljava/util/Map;

    new-instance v1, Lcom/jme3/material/MatParamTexture;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/jme3/material/MatParamTexture;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Lcom/jme3/texture/Texture;Lcom/jme3/texture/image/ColorSpace;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTechniqueDef(Lcom/jme3/material/TechniqueDef;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->techniques:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/jme3/material/MaterialDef;->techniques:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAssetManager()Lcom/jme3/asset/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->assetManager:Lcom/jme3/asset/AssetManager;

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->matParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/MatParam;

    return-object p1
.end method

.method public getMaterialParams()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/material/MatParam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->matParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTechniqueDefs(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/material/TechniqueDef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->techniques:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getTechniqueDefsNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->techniques:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setAssetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/MaterialDef;->assetName:Ljava/lang/String;

    return-void
.end method
