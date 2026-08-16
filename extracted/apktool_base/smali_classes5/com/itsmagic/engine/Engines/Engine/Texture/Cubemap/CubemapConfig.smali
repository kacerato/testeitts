.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;
    }
.end annotation


# instance fields
.field private cubeSize:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private cubemapFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isFinal:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mode:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private panoramaFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private texFaceNX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private texFaceNY:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private texFaceNZ:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private texFacePX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private texFacePY:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private texFacePZ:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;->PANORAMA:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->mode:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-void
.end method

.method public static a()Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    iput-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    const/4 v3, 0x6

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    const/16 v2, 0xe

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texFacePX"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFacePX:Ljava/lang/String;

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texFacePY"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFacePY:Ljava/lang/String;

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texFacePZ"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFacePZ:Ljava/lang/String;

    return-void
.end method

.method public D(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->cubeSize:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->cubemapFile:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->mode:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->panoramaFile:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFaceNX:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFaceNY:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFaceNZ:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFacePX:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFacePY:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFacePZ:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->isFinal:Z

    return v0
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public p(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method public q()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->p(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->p(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cubeSize"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->cubeSize:I

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cubemapFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->cubemapFile:Ljava/lang/String;

    return-void
.end method

.method public u(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aFinal"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->isFinal:Z

    return-void
.end method

.method public v(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->mode:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig$a;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panoramaFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->panoramaFile:Ljava/lang/String;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texFaceNX"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFaceNX:Ljava/lang/String;

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texFaceNY"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFaceNY:Ljava/lang/String;

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texFaceNZ"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->texFaceNZ:Ljava/lang/String;

    return-void
.end method
