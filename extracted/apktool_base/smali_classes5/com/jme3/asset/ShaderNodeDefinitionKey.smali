.class public Lcom/jme3/asset/ShaderNodeDefinitionKey;
.super Lcom/jme3/asset/AssetKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey<",
        "Ljava/util/List<",
        "Lcom/jme3/shader/ShaderNodeDefinition;",
        ">;>;"
    }
.end annotation


# instance fields
.field private loadDocumentation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/jme3/asset/AssetKey;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/jme3/asset/ShaderNodeDefinitionKey;->loadDocumentation:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/jme3/asset/ShaderNodeDefinitionKey;->loadDocumentation:Z

    return-void
.end method


# virtual methods
.method public getCacheType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/cache/AssetCache;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoadDocumentation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/asset/ShaderNodeDefinitionKey;->loadDocumentation:Z

    return v0
.end method

.method public setLoadDocumentation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/asset/ShaderNodeDefinitionKey;->loadDocumentation:Z

    return-void
.end method
