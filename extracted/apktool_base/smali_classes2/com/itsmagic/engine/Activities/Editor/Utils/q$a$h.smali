.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;Ljava/io/File;)V
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
            "val$finalFileName",
            "val$listener",
            "val$outFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->d:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FII)V
    .locals 0
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

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;

    invoke-interface {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->a(F)V

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->b(Ljava/io/File;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$h;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;->onError(Ljava/lang/String;)V

    return-void
.end method
