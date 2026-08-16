.class public Lcom/threed/jpct/Texture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x10

.field public static final DEFAULT_WIDTH:I = 0x10

.field static MARKER_DELETE_AND_UPLOAD:I = 0x0

.field static MARKER_NOTHING:I = 0x0

.field private static final TEXTURE_SIZES:[I

.field private static defaultTo4bpp:Z = false

.field private static defaultToKeepPixels:Z = false

.field private static defaultToMipmapping:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field alpha:Z

.field bilinear:Z

.field convertTo4444:Z

.field private depthBuffer:Lcom/threed/jpct/DepthBuffer;

.field enabled:Z

.field etc1:Z

.field transient fbo:I

.field private glIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field private isConverted:Z

.field private isLoaded:Z

.field isShadowMap:Z

.field isUnicolor:Z

.field private keepPixels:Z

.field transient lastHandlerId:I

.field private lastRenderer:I

.field private lastRendererMarker:I

.field private marker:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private markerGL:I

.field mipmap:Z

.field transient myEffect:Lcom/threed/jpct/ITextureEffect;

.field nPot:Z

.field private openGLID:I

.field transient renderBuffer:I

.field repeat:Z

.field private storeTexels:[I

.field texels:[I

.field width:I

.field zippedTexels:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/threed/jpct/Texture;->TEXTURE_SIZES:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/threed/jpct/Texture;->defaultTo4bpp:Z

    sput-boolean v0, Lcom/threed/jpct/Texture;->defaultToMipmapping:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/threed/jpct/Texture;->defaultToKeepPixels:Z

    sput v0, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    sput v1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    return-void

    :array_0
    .array-data 4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 4
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 6
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 7
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 8
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 9
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 10
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 11
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 12
    iput-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    const/4 v3, -0x1

    .line 13
    iput v3, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 14
    iput v3, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 15
    iput v3, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 16
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 17
    iput-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 18
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 19
    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 20
    iput v1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 21
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 22
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 23
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 24
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 25
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 26
    iput-object v0, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    const/16 v0, 0x10

    .line 27
    iput v0, p0, Lcom/threed/jpct/Texture;->width:I

    .line 28
    iput v0, p0, Lcom/threed/jpct/Texture;->height:I

    .line 29
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->isLoaded:Z

    mul-int/2addr v0, v0

    .line 30
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    .line 31
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 32
    invoke-direct {p0}, Lcom/threed/jpct/Texture;->resetIDs()V

    :goto_0
    if-lt v1, v0, :cond_0

    .line 33
    sget-boolean v0, Lcom/threed/jpct/Texture;->defaultTo4bpp:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 34
    sget-boolean v0, Lcom/threed/jpct/Texture;->defaultToMipmapping:Z

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 35
    sget-boolean v0, Lcom/threed/jpct/Texture;->defaultToKeepPixels:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    return-void

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 151
    sget-object v0, Lcom/threed/jpct/RGBColor;->BLACK:Lcom/threed/jpct/RGBColor;

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/Texture;-><init>(IILcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 152
    sget-object v0, Lcom/threed/jpct/RGBColor;->BLACK:Lcom/threed/jpct/RGBColor;

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/Texture;-><init>(IILcom/threed/jpct/RGBColor;)V

    .line 153
    iget-object p1, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length p1, p1

    const/4 p2, 0x1

    .line 154
    iput-boolean p2, p0, Lcom/threed/jpct/Texture;->alpha:Z

    and-int/lit16 p2, p3, 0xff

    shl-int/lit8 p2, p2, 0x18

    const/4 p3, 0x0

    :goto_0
    if-lt p3, p1, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    aget v1, v0, p3

    or-int/2addr v1, p2

    aput v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method public constructor <init>(IILcom/threed/jpct/RGBColor;)V
    .locals 2

    const/4 v0, 0x0

    .line 156
    invoke-static {p1, p2, p3, v0}, Lcom/threed/jpct/Texture;->createIntArray(IILcom/threed/jpct/RGBColor;Z)[I

    move-result-object v1

    invoke-static {p1}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result p1

    invoke-static {p2}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result p2

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/threed/jpct/Texture;-><init>([IIIZ)V

    if-eqz p3, :cond_0

    .line 157
    invoke-virtual {p3}, Lcom/threed/jpct/RGBColor;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(IILcom/threed/jpct/RGBColor;Z)V
    .locals 1

    .line 159
    invoke-static {p1, p2, p3, p4}, Lcom/threed/jpct/Texture;->createIntArray(IILcom/threed/jpct/RGBColor;Z)[I

    move-result-object p4

    const/4 v0, 0x0

    invoke-direct {p0, p4, p1, p2, v0}, Lcom/threed/jpct/Texture;-><init>([IIIZ)V

    if-eqz p3, :cond_0

    .line 160
    invoke-virtual {p3}, Lcom/threed/jpct/RGBColor;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 96
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    const/4 v2, 0x1

    .line 97
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 98
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 99
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 100
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 101
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 102
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 103
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 104
    iput-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    const/4 v3, -0x1

    .line 105
    iput v3, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 106
    iput v3, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 107
    iput v3, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 108
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 109
    iput-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 110
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 111
    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 112
    iput v1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 113
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 114
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 115
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 117
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 118
    iput-object v0, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 119
    invoke-direct {p0, v0, p1}, Lcom/threed/jpct/Texture;->loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;)V

    .line 120
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 124
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    const/4 v2, 0x1

    .line 125
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 126
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 127
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 128
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 129
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 130
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 131
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 132
    iput-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    const/4 v3, -0x1

    .line 133
    iput v3, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 134
    iput v3, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 135
    iput v3, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 136
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 137
    iput-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 138
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 139
    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 140
    iput v1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 141
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 142
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 143
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 144
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 145
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 146
    iput-object v0, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 147
    invoke-direct {p0, v0, p1, p2}, Lcom/threed/jpct/Texture;->loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)V

    .line 148
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 149
    invoke-static {p1}, Lcom/threed/jpct/util/BitmapHelper;->convert(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/threed/jpct/Texture;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 150
    invoke-static {p1}, Lcom/threed/jpct/util/BitmapHelper;->convert(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/Texture;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 40
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    const/4 v2, 0x1

    .line 41
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 42
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 43
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 44
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 45
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 46
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 47
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 48
    iput-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    const/4 v3, -0x1

    .line 49
    iput v3, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 50
    iput v3, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 51
    iput v3, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 52
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 53
    iput-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 54
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 55
    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 56
    iput v1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 57
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 58
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 59
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 61
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 62
    iput-object v0, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/Texture;->loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;)V

    .line 64
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 68
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    const/4 v2, 0x1

    .line 69
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 70
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 71
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 72
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 73
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 74
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 75
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 76
    iput-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    const/4 v3, -0x1

    .line 77
    iput v3, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 78
    iput v3, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 79
    iput v3, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 80
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 81
    iput-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 82
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 83
    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 84
    iput v1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 85
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 86
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 87
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 89
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 90
    iput-object v0, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    .line 91
    invoke-direct {p0, p1, v0, p2}, Lcom/threed/jpct/Texture;->loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)V

    .line 92
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    return-void
.end method

.method public constructor <init>([IIIZ)V
    .locals 4

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    const/4 v1, 0x0

    .line 164
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->alpha:Z

    .line 165
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    const/4 v2, 0x1

    .line 166
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->repeat:Z

    .line 167
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    .line 168
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    .line 169
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->enabled:Z

    .line 170
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 171
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    .line 172
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    .line 173
    iput-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    const/4 v3, -0x1

    .line 174
    iput v3, p0, Lcom/threed/jpct/Texture;->fbo:I

    .line 175
    iput v3, p0, Lcom/threed/jpct/Texture;->renderBuffer:I

    .line 176
    iput v3, p0, Lcom/threed/jpct/Texture;->lastHandlerId:I

    .line 177
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->nPot:Z

    .line 178
    iput-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    .line 179
    iput-boolean v1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    .line 180
    iput v1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    .line 181
    iput v1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 182
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    .line 183
    iput v3, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    .line 184
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    .line 186
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    .line 187
    iput-object v0, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    if-eqz p4, :cond_1

    const/16 p4, 0x800

    if-gt p2, p4, :cond_0

    if-gt p3, p4, :cond_0

    .line 188
    invoke-static {p2}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result p4

    iput p4, p0, Lcom/threed/jpct/Texture;->width:I

    .line 189
    invoke-static {p3}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result p4

    iput p4, p0, Lcom/threed/jpct/Texture;->height:I

    .line 190
    iget v0, p0, Lcom/threed/jpct/Texture;->width:I

    mul-int/2addr v0, p4

    new-array p4, v0, [I

    iput-object p4, p0, Lcom/threed/jpct/Texture;->texels:[I

    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lcom/threed/jpct/Texture;->refill([III)V

    goto :goto_0

    .line 192
    :cond_0
    const-string p1, "Unsupported bitmap size for blitting!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 193
    :cond_1
    iput p2, p0, Lcom/threed/jpct/Texture;->width:I

    .line 194
    iput p3, p0, Lcom/threed/jpct/Texture;->height:I

    .line 195
    iput-object p1, p0, Lcom/threed/jpct/Texture;->texels:[I

    .line 196
    :goto_0
    iput-boolean v2, p0, Lcom/threed/jpct/Texture;->isLoaded:Z

    .line 197
    sget-boolean p1, Lcom/threed/jpct/Texture;->defaultTo4bpp:Z

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 198
    sget-boolean p1, Lcom/threed/jpct/Texture;->defaultToMipmapping:Z

    invoke-virtual {p0, p1}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 199
    invoke-direct {p0}, Lcom/threed/jpct/Texture;->resetIDs()V

    return-void
.end method

.method private static adjustSize(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/threed/jpct/Texture;->TEXTURE_SIZES:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return p0

    :cond_0
    aget v1, v1, v0

    if-gt p0, v1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clip(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method private static createIntArray(IILcom/threed/jpct/RGBColor;Z)[I
    .locals 3

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p0}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/threed/jpct/Texture;->adjustSize(I)I

    move-result p1

    :cond_1
    mul-int p3, p0, p1

    new-array v0, p3, [I

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getAlpha()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result p2

    or-int/2addr p2, v1

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p3, :cond_2

    goto :goto_1

    :cond_2
    aput p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Created a "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "*"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " texture using "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p3, p3, 0x4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_4
    return-object v0
.end method

.method public static createSingleColoredTexture(Lcom/threed/jpct/RGBColor;)Lcom/threed/jpct/Texture;
    .locals 5

    const/16 v0, 0x100

    new-array v1, v0, [I

    invoke-virtual {p0}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v2

    const/16 v3, 0x10

    shl-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result p0

    or-int/2addr p0, v2

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-lt v4, v0, :cond_0

    new-instance p0, Lcom/threed/jpct/Texture;

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/threed/jpct/Texture;-><init>([IIIZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->isUnicolor:Z

    return-object p0

    :cond_0
    aput p0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static defaultTo4bpp(Z)V
    .locals 0

    sput-boolean p0, Lcom/threed/jpct/Texture;->defaultTo4bpp:Z

    return-void
.end method

.method public static defaultToKeepPixels(Z)V
    .locals 0

    sput-boolean p0, Lcom/threed/jpct/Texture;->defaultToKeepPixels:Z

    return-void
.end method

.method public static defaultToMipmapping(Z)V
    .locals 0

    sput-boolean p0, Lcom/threed/jpct/Texture;->defaultToMipmapping:Z

    return-void
.end method

.method private loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/Texture;->loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private loadTexture(Ljava/io/InputStream;Landroid/graphics/Bitmap;Z)V
    .locals 24

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v1, Lcom/threed/jpct/Texture;->isLoaded:Z

    .line 3
    const-string v0, "Loading Texture..."

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    if-nez p2, :cond_0

    .line 4
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/threed/jpct/util/BitmapHelper;->loadImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    move-object/from16 v4, p2

    move v5, v2

    :goto_0
    const/16 v6, 0x8

    if-eqz v4, :cond_5

    .line 5
    :try_start_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_5

    .line 6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 8
    iput v8, v1, Lcom/threed/jpct/Texture;->width:I

    .line 9
    iput v7, v1, Lcom/threed/jpct/Texture;->height:I

    const/16 v9, 0x2000

    const/16 v10, 0x1000

    const/16 v11, 0x800

    const/16 v12, 0x400

    const/16 v13, 0x200

    const/16 v14, 0x100

    const/16 v15, 0x80

    const/16 v0, 0x40

    const/16 v3, 0x20

    const/16 v2, 0x10

    if-eq v8, v6, :cond_1

    if-eq v8, v2, :cond_1

    if-eq v8, v3, :cond_1

    if-eq v8, v0, :cond_1

    if-eq v8, v15, :cond_1

    if-eq v8, v14, :cond_1

    if-eq v8, v13, :cond_1

    if-eq v8, v12, :cond_1

    if-eq v8, v11, :cond_1

    if-eq v8, v10, :cond_1

    if-eq v8, v9, :cond_1

    .line 10
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unsupported Texture width: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 v9, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eq v7, v6, :cond_2

    if-eq v7, v2, :cond_2

    if-eq v7, v3, :cond_2

    if-eq v7, v0, :cond_2

    if-eq v7, v15, :cond_2

    if-eq v7, v14, :cond_2

    if-eq v7, v13, :cond_2

    if-eq v7, v12, :cond_2

    if-eq v7, v11, :cond_2

    const/16 v0, 0x1000

    if-eq v7, v0, :cond_2

    const/16 v0, 0x2000

    if-eq v7, v0, :cond_2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported Texture height: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 v9, 0x1

    :cond_2
    if-eqz v9, :cond_3

    .line 12
    iput v2, v1, Lcom/threed/jpct/Texture;->width:I

    .line 13
    iput v2, v1, Lcom/threed/jpct/Texture;->height:I

    .line 14
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 15
    :cond_3
    iget v0, v1, Lcom/threed/jpct/Texture;->width:I

    iget v2, v1, Lcom/threed/jpct/Texture;->height:I

    mul-int/2addr v0, v2

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/threed/jpct/Texture;->texels:[I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Texture loaded..."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/threed/jpct/Texture;->texels:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pixels!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 17
    iget-object v0, v1, Lcom/threed/jpct/Texture;->texels:[I

    iget v2, v1, Lcom/threed/jpct/Texture;->width:I

    iget v3, v1, Lcom/threed/jpct/Texture;->height:I

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    move/from16 v19, v2

    move/from16 v22, v2

    move/from16 v23, v3

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    if-eqz v5, :cond_4

    .line 18
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, v1, Lcom/threed/jpct/Texture;->isLoaded:Z

    goto :goto_2

    .line 20
    :cond_5
    const-string v0, "File not found - replacement texture used instead!"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 21
    new-array v0, v6, [I

    iput-object v0, v1, Lcom/threed/jpct/Texture;->texels:[I

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, v1, Lcom/threed/jpct/Texture;->isLoaded:Z

    const/4 v0, 0x2

    .line 23
    iput v0, v1, Lcom/threed/jpct/Texture;->width:I

    .line 24
    iput v0, v1, Lcom/threed/jpct/Texture;->height:I

    .line 25
    :goto_2
    sget-boolean v0, Lcom/threed/jpct/Texture;->defaultTo4bpp:Z

    iput-boolean v0, v1, Lcom/threed/jpct/Texture;->convertTo4444:Z

    .line 26
    sget-boolean v0, Lcom/threed/jpct/Texture;->defaultToMipmapping:Z

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 27
    sget-boolean v0, Lcom/threed/jpct/Texture;->defaultToKeepPixels:Z

    iput-boolean v0, v1, Lcom/threed/jpct/Texture;->keepPixels:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 28
    :goto_3
    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;I)V

    .line 29
    :goto_4
    iget-boolean v0, v1, Lcom/threed/jpct/Texture;->isLoaded:Z

    if-eqz v0, :cond_6

    move/from16 v2, p3

    .line 30
    iput-boolean v2, v1, Lcom/threed/jpct/Texture;->alpha:Z

    :cond_6
    return-void
.end method

.method private resetIDs()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Texture;->openGLID:I

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    iput v0, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    iget-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private final setMarker(I)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/threed/jpct/Texture;->setMarker(II)V

    return-void
.end method


# virtual methods
.method public add(Lcom/threed/jpct/Texture;F)V
    .locals 9

    iget-object v0, p1, Lcom/threed/jpct/Texture;->texels:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getArraySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/threed/jpct/Texture;->getArraySize()I

    move-result v2

    if-eq v0, v2, :cond_1

    const-string p1, "Texture sizes don\'t match"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object p1, p1, Lcom/threed/jpct/Texture;->texels:[I

    :goto_0
    array-length v0, p1

    if-lt v1, v0, :cond_2

    sget p1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/Texture;->setMarker(I)V

    return-void

    :cond_2
    aget v0, p1, v1

    iget-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    aget v2, v2, v1

    shr-int/lit8 v3, v2, 0x18

    const/high16 v4, 0xff0000

    and-int v5, v2, v4

    shr-int/lit8 v5, v5, 0x10

    const v6, 0xff00

    and-int v7, v2, v6

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v8, v0, 0x18

    and-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x10

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int/2addr v3, v8

    invoke-direct {p0, v3}, Lcom/threed/jpct/Texture;->clip(I)I

    move-result v3

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    add-int/2addr v5, v4

    invoke-direct {p0, v5}, Lcom/threed/jpct/Texture;->clip(I)I

    move-result v4

    int-to-float v5, v6

    mul-float/2addr v5, p2

    float-to-int v5, v5

    add-int/2addr v7, v5

    invoke-direct {p0, v7}, Lcom/threed/jpct/Texture;->clip(I)I

    move-result v5

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/threed/jpct/Texture;->clip(I)I

    move-result v0

    iget-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v3, v4

    or-int/2addr v0, v3

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "Textures contains no texel data!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public applyEffect()V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/Texture;->texels:[I

    iget-object v2, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    invoke-interface {v0, v1, v2}, Lcom/threed/jpct/ITextureEffect;->apply([I[I)V

    iget-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    invoke-interface {v0}, Lcom/threed/jpct/ITextureEffect;->containsAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threed/jpct/Texture;->alpha:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->alpha:Z

    :cond_0
    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    goto :goto_0

    :cond_1
    const-string v0, "The texture doesn\'t have an effect assigned to it!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final clearIDs(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Texture;->openGLID:I

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    iput v0, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    iget-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public compress()V
    .locals 9

    iget-object v0, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/threed/jpct/ZipHelper;->zip([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    array-length v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, ") of uncompressed size!"

    const-string v5, "/"

    const-string v6, "% ("

    const/high16 v7, 0x42c80000    # 100.0f

    if-gtz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "Texture compressed to "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->texels:[I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "Texture not compressed, because compressed size was "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    :cond_2
    :goto_0
    return-void
.end method

.method public enable4bpp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    sget p1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/Texture;->setMarker(I)V

    return-void
.end method

.method public enableClamping()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->repeat:Z

    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    return-void
.end method

.method public getArraySize()I
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getDepthBuffer()Lcom/threed/jpct/DepthBuffer;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Texture;->height:I

    return v0
.end method

.method public final getMarker(I)I
    .locals 2

    iget v0, p0, Lcom/threed/jpct/Texture;->markerGL:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    if-eq v0, p1, :cond_2

    :cond_0
    iput p1, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    iget-object v0, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    iput p1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    iput p1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    :cond_2
    :goto_0
    iget p1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    return p1
.end method

.method public final getOpenGLID(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/threed/jpct/Texture;->openGLID:I

    return p1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/Texture;->openGLID:I

    iput p1, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Texture;->width:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Texture;->enabled:Z

    return v0
.end method

.method public keepPixelData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    return-void
.end method

.method public final refill([III)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_0

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    return-void

    :cond_0
    iget v2, p0, Lcom/threed/jpct/Texture;->width:I

    mul-int/2addr v2, v1

    mul-int v3, p2, v1

    move v4, v0

    :goto_1
    if-lt v4, p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/threed/jpct/Texture;->texels:[I

    add-int v6, v2, v4

    add-int v7, v3, v4

    aget v7, p1, v7

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public removeAlpha()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Texture;->alpha:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/Texture;->texels:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    sget v0, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, v0}, Lcom/threed/jpct/Texture;->setMarker(I)V

    return-void

    :cond_0
    aget v2, v1, v0

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeEffect()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    iput-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    return-void
.end method

.method public setAsShadowMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->isShadowMap:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->convertTo4444:Z

    sget p1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/Texture;->setMarker(I)V

    return-void
.end method

.method public setClamping(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->repeat:Z

    sget p1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/Texture;->setMarker(I)V

    return-void
.end method

.method public setDepthBuffer(Lcom/threed/jpct/DepthBuffer;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/threed/jpct/DepthBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/threed/jpct/DepthBuffer;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const-string p1, "Size of depth buffer doesn\'t match texture size!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/threed/jpct/Texture;->depthBuffer:Lcom/threed/jpct/DepthBuffer;

    sget p1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/Texture;->setMarker(I)V

    return-void
.end method

.method public setEffect(Lcom/threed/jpct/ITextureEffect;)V
    .locals 4

    iget-object v0, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/Texture;->texels:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Can\'t set a texture effect for a compressed texture!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_0
    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/threed/jpct/Texture;->storeTexels:[I

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object p1, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    invoke-interface {p1, p0}, Lcom/threed/jpct/ITextureEffect;->init(Lcom/threed/jpct/Texture;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->enabled:Z

    return-void
.end method

.method public setFiltering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->bilinear:Z

    sget p1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/Texture;->setMarker(I)V

    return-void
.end method

.method public final setMarker(II)V
    .locals 1

    .line 2
    sget v0, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    sget p2, Lcom/threed/jpct/Texture;->MARKER_NOTHING:I

    iput p2, p0, Lcom/threed/jpct/Texture;->markerGL:I

    .line 5
    iput p1, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    if-ne p2, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/threed/jpct/Texture;->marker:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    const/16 p1, -0x3e7

    .line 8
    iput p1, p0, Lcom/threed/jpct/Texture;->markerGL:I

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/threed/jpct/Texture;->lastRendererMarker:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setMipmap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->mipmap:Z

    sget p1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/Texture;->setMarker(I)V

    return-void
.end method

.method public final setOpenGLID(II)V
    .locals 1

    iput p2, p0, Lcom/threed/jpct/Texture;->openGLID:I

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/threed/jpct/Texture;->lastRenderer:I

    iget-object v0, p0, Lcom/threed/jpct/Texture;->glIDs:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->isConverted:Z

    iget-object p1, p0, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/threed/jpct/Texture;->keepPixels:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/threed/jpct/Texture;->texels:[I

    iput-object p1, p0, Lcom/threed/jpct/Texture;->zippedTexels:[B

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/threed/jpct/Texture;->resetIDs()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextureCompression(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Texture;->etc1:Z

    sget p1, Lcom/threed/jpct/Texture;->MARKER_DELETE_AND_UPLOAD:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/Texture;->setMarker(I)V

    return-void
.end method
