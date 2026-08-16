.class public Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->F0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/nio/ByteBuffer;

.field public final synthetic c:[I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/filament/Texture$e;

.field public final synthetic g:Landroid/graphics/Bitmap;

.field public final synthetic h:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

.field public final synthetic i:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

.field public final synthetic j:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Ljava/nio/ByteBuffer;[IIILcom/google/android/filament/Texture$e;Landroid/graphics/Bitmap;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$localRgba",
            "val$argbReuse",
            "val$w",
            "val$h",
            "val$textureFormat",
            "val$reuse",
            "val$extractCallback",
            "val$request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->j:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->b:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->c:[I

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->d:I

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->e:I

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->f:Lcom/google/android/filament/Texture$e;

    iput-object p7, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->g:Landroid/graphics/Bitmap;

    iput-object p8, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->h:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

    iput-object p9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;->i:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
