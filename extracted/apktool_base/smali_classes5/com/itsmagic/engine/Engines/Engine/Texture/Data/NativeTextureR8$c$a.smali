.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->X(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->b:I

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->c:I

    mul-int/2addr v1, v0

    new-array v3, v1, [I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->b:I

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->c:I

    mul-int v5, v2, v4

    if-ge v0, v5, :cond_0

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->X(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->X(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->X(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->X(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v5

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->b:I

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->c:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;->on(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8$c$a;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    throw v0
.end method
