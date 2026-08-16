.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$g;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

.field public final synthetic d:I

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;ILcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalMips",
            "val$finalCompressedCubemap",
            "val$finalWantedResolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->b:I

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->b:I

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->J0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v11

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->d:I

    sget-object v7, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v8, Lcom/google/android/filament/Texture$k;->COMPRESSED:Lcom/google/android/filament/Texture$k;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->f:Lcom/google/android/filament/Texture$f;

    new-instance v2, Lcom/google/android/filament/Texture$a;

    invoke-direct {v2}, Lcom/google/android/filament/Texture$a;-><init>()V

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;->f:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v10

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->b:I

    sget-object v14, Lcom/google/android/filament/Texture$i;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$i;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/16 v13, 0x18

    move-object v4, v1

    move v5, v6

    invoke-direct/range {v4 .. v16}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;IZ)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    invoke-virtual {v2, v1}, Lwb/b;->b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->c(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$f;)V

    return-void

    :cond_0
    sget-object v9, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->d:I

    sget-object v7, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v8, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v3, Lcom/google/android/filament/Texture$a;

    invoke-direct {v3}, Lcom/google/android/filament/Texture$a;-><init>()V

    invoke-virtual {v3, v9}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v10

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->b:I

    sget-object v14, Lcom/google/android/filament/Texture$i;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$i;

    const/4 v15, 0x6

    const/16 v13, 0x9

    move-object v4, v1

    move v5, v6

    invoke-direct/range {v4 .. v15}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;I)V

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    invoke-virtual {v3, v1}, Lwb/b;->b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->d:I

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$c;->b:I

    if-lez v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    invoke-static {v4, v3, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
