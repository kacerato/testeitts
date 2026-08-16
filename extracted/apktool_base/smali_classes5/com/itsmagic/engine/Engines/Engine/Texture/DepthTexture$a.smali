.class public Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->I0(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->u0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->destroyImmediate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->w0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->z0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method
