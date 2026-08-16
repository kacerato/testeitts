.class Lcom/jme3/asset/plugins/ZipLocator$JarAssetInfo;
.super Lcom/jme3/asset/AssetInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/asset/plugins/ZipLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JarAssetInfo"
.end annotation


# instance fields
.field private final entry:Ljava/util/zip/ZipEntry;

.field final synthetic this$0:Lcom/jme3/asset/plugins/ZipLocator;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/plugins/ZipLocator;Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/util/zip/ZipEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/asset/plugins/ZipLocator$JarAssetInfo;->this$0:Lcom/jme3/asset/plugins/ZipLocator;

    invoke-direct {p0, p2, p3}, Lcom/jme3/asset/AssetInfo;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)V

    iput-object p4, p0, Lcom/jme3/asset/plugins/ZipLocator$JarAssetInfo;->entry:Ljava/util/zip/ZipEntry;

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/jme3/asset/plugins/ZipLocator$JarAssetInfo;->this$0:Lcom/jme3/asset/plugins/ZipLocator;

    invoke-static {v0}, Lcom/jme3/asset/plugins/ZipLocator;->access$000(Lcom/jme3/asset/plugins/ZipLocator;)Ljava/util/zip/ZipFile;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/asset/plugins/ZipLocator$JarAssetInfo;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jme3/asset/AssetLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load zip entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/asset/plugins/ZipLocator$JarAssetInfo;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
