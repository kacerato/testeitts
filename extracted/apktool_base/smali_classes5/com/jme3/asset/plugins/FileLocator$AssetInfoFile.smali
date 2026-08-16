.class Lcom/jme3/asset/plugins/FileLocator$AssetInfoFile;
.super Lcom/jme3/asset/AssetInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/asset/plugins/FileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetInfoFile"
.end annotation


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jme3/asset/AssetInfo;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)V

    iput-object p3, p0, Lcom/jme3/asset/plugins/FileLocator$AssetInfoFile;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/jme3/asset/plugins/FileLocator$AssetInfoFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jme3/asset/AssetLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/asset/plugins/FileLocator$AssetInfoFile;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
