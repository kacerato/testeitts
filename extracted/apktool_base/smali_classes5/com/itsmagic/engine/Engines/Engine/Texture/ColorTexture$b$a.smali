.class public Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->c:[I

    if-eqz v1, :cond_0

    array-length v2, v1

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->d:I

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->e:I

    mul-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->d:I

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->e:I

    mul-int/2addr v1, v0

    new-array v1, v1, [I

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->d:I

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->e:I

    mul-int/2addr v2, v4

    if-ge v0, v2, :cond_5

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$c;->a:[I

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->f:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/16 v4, 0xff

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/2addr v1, v4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/2addr v2, v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/2addr v5, v4

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/2addr v4, v6

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported texture format for bitmap extraction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->f:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/2addr v1, v4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/2addr v2, v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/2addr v5, v4

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/2addr v1, v4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/2addr v2, v4

    move v5, v4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/2addr v1, v4

    move v2, v1

    move v5, v2

    :goto_3
    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v5

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_5
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->d:I

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->e:I

    if-eq v1, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->d:I

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->e:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->d:I

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->e:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->h:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;->on(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->j:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->i:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->q0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V

    goto :goto_6

    :goto_5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :goto_6
    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->j:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->i:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->q0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V

    throw v0
.end method
