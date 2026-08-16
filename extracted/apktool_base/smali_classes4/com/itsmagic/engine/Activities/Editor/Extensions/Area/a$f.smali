.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Lorg/ITsMagic/Atlas/XAtlas;LUg/k;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ILorg/ITsMagic/Atlas/c;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;FFLjava/lang/Runnable;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

.field public final synthetic e:Lub/n;

.field public final synthetic f:Ljava/lang/Runnable;

.field public final synthetic g:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Lub/n;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$outputFile",
            "val$channel",
            "val$aec",
            "val$atlasTexture",
            "val$asyncFinished"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iput-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->e:Lub/n;

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->i:Z

    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    const/16 v2, 0x10

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->m0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getFilter()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->B0(I)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->isGenMipmaps()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->p0(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getMipmapLevels()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->w0(I)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->e:Lub/n;

    invoke-static {v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->c(Lub/p;Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;->f:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    throw v0
.end method
