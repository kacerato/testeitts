.class public Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->C0(IILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$extractCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->y0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->y0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x477fff00    # 65535.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->u0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->destroyImmediate()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->w0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;->a(F)V

    return-void
.end method
