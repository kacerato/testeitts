.class public abstract Lcom/jme3/asset/AssetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected key:Lcom/jme3/asset/AssetKey;

.field protected manager:Lcom/jme3/asset/AssetManager;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/asset/AssetInfo;->manager:Lcom/jme3/asset/AssetManager;

    iput-object p2, p0, Lcom/jme3/asset/AssetInfo;->key:Lcom/jme3/asset/AssetKey;

    return-void
.end method


# virtual methods
.method public getKey()Lcom/jme3/asset/AssetKey;
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/AssetInfo;->key:Lcom/jme3/asset/AssetKey;

    return-object v0
.end method

.method public getManager()Lcom/jme3/asset/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/AssetInfo;->manager:Lcom/jme3/asset/AssetManager;

    return-object v0
.end method

.method public abstract openStream()Ljava/io/InputStream;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/asset/AssetInfo;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
