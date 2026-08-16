.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->e(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$post"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->U(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->W(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v1, "Can not reapply a texture without allow modifications flag"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->b0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->c0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->d0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->f0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v9

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->f0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()I

    move-result v10

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    new-instance v12, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->g0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)I

    move-result v4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)I

    move-result v5

    sget-object v6, Lcom/google/android/filament/Texture$e;->R:Lcom/google/android/filament/Texture$e;

    sget-object v7, Lcom/google/android/filament/Texture$k;->FLOAT:Lcom/google/android/filament/Texture$k;

    new-instance v3, Lcom/google/android/filament/Texture$a;

    invoke-direct {v3}, Lcom/google/android/filament/Texture$a;-><init>()V

    sget-object v8, Lcom/google/android/filament/Texture$f;->R32F:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v3, v8}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v8

    const/16 v11, 0x8

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;II)V

    invoke-static {v2, v12}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->e0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->d0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->f0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->M(Lcom/google/android/filament/TextureSampler;)V

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->d0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->g0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)I

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;)V

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->r(JILjava/lang/Runnable;)V

    return-void

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v1, "apply failed"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw v0
.end method
