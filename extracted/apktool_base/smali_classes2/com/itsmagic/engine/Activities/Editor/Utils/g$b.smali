.class public Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/g;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$destinationFolder",
            "val$fileName",
            "val$imageURL",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->b:Ljava/io/File;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "application/json"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

    const-string v1, "The URL returned JSON instead of a file."

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v4, 0x400

    :try_start_3
    new-array v5, v4, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v2, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    invoke-virtual {v1, v5, v6, v8}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v7, v8

    int-to-double v8, v7

    int-to-double v10, v3

    div-double/2addr v8, v10

    double-to-float v8, v8

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

    invoke-interface {v9, v8, v6, v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;->a(FII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;->b(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0

    :goto_5
    :try_start_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Erro ao baixar a imagem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/g$b;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;->onError(Ljava/lang/String;)V

    :goto_7
    return-void
.end method
