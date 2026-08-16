.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;
    }
.end annotation


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field public static final k:I = 0x9

.field public static final l:I = 0xa

.field public static final m:I = 0xb

.field public static final n:I = 0xc

.field public static final o:I = 0xd

.field public static final p:I = 0xe

.field public static final q:I = 0xf

.field public static final r:I = 0x10

.field public static s:[I


# instance fields
.field public allowBoost:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowBrightness:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowColorDepth:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowContrast:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowHUE:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowModifications:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowOpacity:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowSaturation:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public autoGenNormalMap:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public autoGenNormalMapBias:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public blackIsAlpha:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public boostBlue:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public boostGreen:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public boostRed:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public brightness:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public colordepth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public compressionEffort:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public contrast:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public flipX:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public flipY:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public gammaCorrection:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public gaussian:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public genMipmaps:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public grayscale:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hue:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public importedFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public invertColors:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public is9patch:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxResolutionID:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mipmapLevels:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public noise:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public opacityTextureFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public originalHeight:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public originalWidth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private quality:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public saturation:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sepia:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sharpen:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sketch:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private spriteData:Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vignette:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    return-void

    :array_0
    .array-data 4
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Texture:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    .line 5
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Repeat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    const/16 v0, 0xa

    .line 7
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    const/16 v0, 0x5a

    .line 8
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->quality:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->blackIsAlpha:Z

    .line 10
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->is9patch:Z

    .line 11
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    const/16 v1, 0x50

    .line 12
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMapBias:I

    .line 13
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;->None:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    const/16 v1, 0xb4

    .line 14
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->hue:I

    const/16 v1, 0x64

    .line 15
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->saturation:I

    .line 16
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->contrast:I

    .line 17
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->brightness:I

    .line 18
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->colordepth:I

    .line 19
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    .line 20
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    .line 21
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    .line 22
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Fast:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionEffort:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    .line 23
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowModifications"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Texture:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    const/4 v0, 0x3

    .line 79
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    .line 80
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    .line 81
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Repeat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    const/16 v0, 0xa

    .line 82
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    const/16 v0, 0x5a

    .line 83
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->quality:I

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->blackIsAlpha:Z

    .line 85
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->is9patch:Z

    .line 86
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    const/16 v1, 0x50

    .line 87
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMapBias:I

    .line 88
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;->None:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    const/16 v1, 0xb4

    .line 89
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->hue:I

    const/16 v1, 0x64

    .line 90
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->saturation:I

    .line 91
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->contrast:I

    .line 92
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->brightness:I

    .line 93
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->colordepth:I

    .line 94
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    .line 95
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    .line 96
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    .line 97
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Fast:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionEffort:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    .line 98
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    .line 99
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    return-void
.end method

.method public constructor <init>(ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "genMipmaps",
            "filter"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Texture:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    const/4 v0, 0x3

    .line 27
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    .line 28
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    .line 29
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Repeat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    const/16 v0, 0xa

    .line 30
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    const/16 v0, 0x5a

    .line 31
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->quality:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->blackIsAlpha:Z

    .line 33
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->is9patch:Z

    .line 34
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    const/16 v1, 0x50

    .line 35
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMapBias:I

    .line 36
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;->None:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    const/16 v1, 0xb4

    .line 37
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->hue:I

    const/16 v1, 0x64

    .line 38
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->saturation:I

    .line 39
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->contrast:I

    .line 40
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->brightness:I

    .line 41
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->colordepth:I

    .line 42
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    .line 43
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    .line 44
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    .line 45
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Fast:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionEffort:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    .line 46
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    .line 47
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    .line 48
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    return-void
.end method

.method public constructor <init>(ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "genMipmaps",
            "filter",
            "wrap",
            "maxResolutionID"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Texture:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    const/4 v0, 0x3

    .line 52
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    .line 53
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    .line 54
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Repeat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    const/16 v0, 0xa

    .line 55
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    const/16 v0, 0x5a

    .line 56
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->quality:I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->blackIsAlpha:Z

    .line 58
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->is9patch:Z

    .line 59
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    const/16 v1, 0x50

    .line 60
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMapBias:I

    .line 61
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;->None:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    const/16 v1, 0xb4

    .line 62
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->hue:I

    const/16 v1, 0x64

    .line 63
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->saturation:I

    .line 64
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->contrast:I

    .line 65
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->brightness:I

    .line 66
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->colordepth:I

    .line 67
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    .line 68
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    .line 69
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->ASTC_8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    .line 70
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Fast:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionEffort:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    .line 71
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    .line 72
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    .line 73
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    .line 74
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    .line 75
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBoost:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBrightness:Z

    return v0
.end method

.method public B0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->quality:I

    return-void
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowColorDepth:Z

    return v0
.end method

.method public C0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saturation"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->saturation:I

    return-void
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowContrast:Z

    return v0
.end method

.method public D0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sepia"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sepia:Z

    return-void
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowHUE:Z

    return v0
.end method

.method public E0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharpen"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sharpen:Z

    return-void
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    return v0
.end method

.method public F0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sketch"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sketch:Z

    return-void
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowSaturation:Z

    return v0
.end method

.method public G0(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteData"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->spriteData:Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    return-void
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    return v0
.end method

.method public H0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vignette"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->vignette:Z

    return-void
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipX:Z

    return v0
.end method

.method public I0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    return-void
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipY:Z

    return v0
.end method

.method public J0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrap"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    return-object p0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    return v0
.end method

.method public K0()Ljava/lang/String;
    .locals 1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gaussian:Z

    return v0
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->grayscale:Z

    return v0
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->invertColors:Z

    return v0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->noise:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sepia:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sharpen:Z

    return v0
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sketch:Z

    return v0
.end method

.method public T()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->vignette:Z

    return v0
.end method

.method public U(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowBoost"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBoost:Z

    return-void
.end method

.method public V(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowBrightness"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBrightness:Z

    return-void
.end method

.method public W(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowColorDepth"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowColorDepth:Z

    return-void
.end method

.method public X(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowContrast"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowContrast:Z

    return-void
.end method

.method public Y(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowHUE"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowHUE:Z

    return-void
.end method

.method public Z(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowModifications"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    return-object p0
.end method

.method public a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->quality:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->quality:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->blackIsAlpha:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->blackIsAlpha:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->is9patch:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->is9patch:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMapBias:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMapBias:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipX:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipX:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipY:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipY:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->grayscale:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->grayscale:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->hue:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->hue:I

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowHUE:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowHUE:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->invertColors:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->invertColors:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->noise:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->noise:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowSaturation:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowSaturation:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->saturation:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->saturation:I

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sepia:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sepia:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sharpen:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sharpen:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sketch:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sketch:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->vignette:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->vignette:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gaussian:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gaussian:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowContrast:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowContrast:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->contrast:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->contrast:I

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBrightness:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBrightness:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->brightness:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->brightness:I

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBoost:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBoost:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostRed:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostRed:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostBlue:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostBlue:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostGreen:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostGreen:I

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowColorDepth:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowColorDepth:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->colordepth:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->colordepth:I

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowOpacity:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowOpacity:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->opacityTextureFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->opacityTextureFile:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->spriteData:Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->spriteData:Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->importedFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->importedFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    return-object v0
.end method

.method public a0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowSaturation"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowSaturation:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMapBias:I

    return v0
.end method

.method public b0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoGenNormalMap"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostBlue:I

    return v0
.end method

.method public c0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoGenNormalMapBias"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMapBias:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostGreen:I

    return v0
.end method

.method public d0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boostBlue"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostBlue:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostRed:I

    return v0
.end method

.method public e0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boostGreen"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostGreen:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->brightness:I

    return v0
.end method

.method public f0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boostRed"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostRed:I

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->colordepth:I

    return v0
.end method

.method public g0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->brightness:I

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->contrast:I

    return v0
.end method

.method public h0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colordepth"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->colordepth:I

    return-void
.end method

.method public i()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->importedFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    move-result-object v0

    return-object v0
.end method

.method public i0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contrast"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->contrast:I

    return-void
.end method

.method public j()I
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->M()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGB8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    if-gez v0, :cond_2

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    return v0
.end method

.method public j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    return-object p0
.end method

.method public k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    if-nez v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    return-object v0
.end method

.method public k0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flipX"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipX:Z

    return-void
.end method

.method public l()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    if-nez v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    return-object v0
.end method

.method public l0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flipY"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipY:Z

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    return v0
.end method

.method public m0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->format:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    return-object p0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->hue:I

    return v0
.end method

.method public n0(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gammaCorrection"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    return-object p0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    return v0
.end method

.method public o0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gaussian"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gaussian:Z

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    return v0
.end method

.method public p0(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "genMipmaps"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    return-object p0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    return v0
.end method

.method public q0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grayscale"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->grayscale:Z

    return-void
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    return v0
.end method

.method public r0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    return-void
.end method

.method public s()I
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->quality:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, LNc/b;->F(III)I

    move-result v0

    return v0
.end method

.method public s0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hue"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->hue:I

    return-void
.end method

.method public t0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invertColors"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->invertColors:Z

    return-void
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->saturation:I

    return v0
.end method

.method public u0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is9patch"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->is9patch:Z

    return-void
.end method

.method public v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->spriteData:Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    return-object v0
.end method

.method public v0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxResolutionID"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    return-void
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    return v0
.end method

.method public w0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mipmapLevels"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->H(I)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    return-void
.end method

.method public x()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    return-object v0
.end method

.method public x0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noise"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->noise:Z

    return-void
.end method

.method public y()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public y0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalHeight"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    return-void
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->is9patch:Z

    return v0
.end method

.method public z0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalWidth"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    return-void
.end method
