.class public LT5/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT5/b;->t(Ljava/util/List;ILjava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;Ljava/util/List;ILjava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$urls",
            "val$index",
            "val$destinationFolder",
            "val$fileName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LT5/b$b;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

    iput-object p2, p0, LT5/b$b;->b:Ljava/util/List;

    iput p3, p0, LT5/b$b;->c:I

    iput-object p4, p0, LT5/b$b;->d:Ljava/io/File;

    iput-object p5, p0, LT5/b$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "downloadedBytes",
            "totalBytes"
        }
    .end annotation

    iget-object v0, p0, LT5/b$b;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

    invoke-interface {v0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;->a(FII)V

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LT5/b$b;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;->b(Ljava/io/File;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LT5/b$b;->b:Ljava/util/List;

    iget v1, p0, LT5/b$b;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, LT5/b$b;->d:Ljava/io/File;

    iget-object v3, p0, LT5/b$b;->e:Ljava/lang/String;

    iget-object v4, p0, LT5/b$b;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, LT5/b;->g(Ljava/util/List;ILjava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, LT5/b$b;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
