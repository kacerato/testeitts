.class public final Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/Bitmap;

.field public final g:[I

.field public final h:Ljava/nio/ByteBuffer;

.field public final i:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

.field public final j:Z


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderTarget",
            "ofx",
            "ofy",
            "w",
            "h",
            "reuse",
            "argbReuse",
            "rgbaReuse",
            "extractCallback",
            "ownsRenderTarget"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    .line 4
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->b:I

    .line 5
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->c:I

    .line 6
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->d:I

    .line 7
    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->e:I

    .line 8
    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->f:Landroid/graphics/Bitmap;

    .line 9
    iput-object p7, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->g:[I

    .line 10
    iput-object p8, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->h:Ljava/nio/ByteBuffer;

    .line 11
    iput-object p9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->i:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

    .line 12
    iput-boolean p10, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->j:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;ZLcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->j:Z

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->d:I

    return p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->e:I

    return p0
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)[I
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->g:[I

    return-object p0
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->i:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

    return-object p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->h:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->b:I

    return p0
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->c:I

    return p0
.end method
