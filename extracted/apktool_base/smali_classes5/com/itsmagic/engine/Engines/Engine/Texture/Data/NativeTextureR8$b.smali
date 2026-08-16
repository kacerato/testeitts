.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->e(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;Ljava/lang/Runnable;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->d0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->f0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)Z

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
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->U(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->g0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()I

    move-result v3

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->i0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;I)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->W(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)I

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->k0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)I

    move-result v4

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$b;->b:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->l0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->r(JILjava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v1, "apply failed"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw v0
.end method
