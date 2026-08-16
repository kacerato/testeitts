.class Lcom/jme3/asset/plugins/HttpZipLocator$1;
.super Lcom/jme3/asset/AssetInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/asset/plugins/HttpZipLocator;->locate(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/asset/plugins/HttpZipLocator;

.field final synthetic val$entry:Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/plugins/HttpZipLocator;Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p4, p0, Lcom/jme3/asset/plugins/HttpZipLocator$1;->val$entry:Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;

    iput-object p1, p0, Lcom/jme3/asset/plugins/HttpZipLocator$1;->this$0:Lcom/jme3/asset/plugins/HttpZipLocator;

    invoke-direct {p0, p2, p3}, Lcom/jme3/asset/AssetInfo;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator$1;->this$0:Lcom/jme3/asset/plugins/HttpZipLocator;

    iget-object v1, p0, Lcom/jme3/asset/plugins/HttpZipLocator$1;->val$entry:Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;

    invoke-static {v0, v1}, Lcom/jme3/asset/plugins/HttpZipLocator;->access$100(Lcom/jme3/asset/plugins/HttpZipLocator;Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/jme3/asset/plugins/HttpZipLocator;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error retrieving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jme3/asset/plugins/HttpZipLocator$1;->val$entry:Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;

    iget-object v4, v4, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
