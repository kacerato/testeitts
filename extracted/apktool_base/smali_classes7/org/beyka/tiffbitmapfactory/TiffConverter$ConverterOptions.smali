.class public final Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/beyka/tiffbitmapfactory/TiffConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConverterOptions"
.end annotation


# instance fields
.field public volatile a:Z

.field public b:J

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Lorg/beyka/tiffbitmapfactory/b;

.field public g:Lorg/beyka/tiffbitmapfactory/c;

.field public h:F

.field public i:F

.field public j:Lorg/beyka/tiffbitmapfactory/i;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf424000

    iput-wide v0, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->e:Z

    sget-object v1, Lorg/beyka/tiffbitmapfactory/i;->NONE:Lorg/beyka/tiffbitmapfactory/i;

    iput-object v1, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->j:Lorg/beyka/tiffbitmapfactory/i;

    sget-object v1, Lorg/beyka/tiffbitmapfactory/b;->NONE:Lorg/beyka/tiffbitmapfactory/b;

    iput-object v1, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->f:Lorg/beyka/tiffbitmapfactory/b;

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->c:Z

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;->a:Z

    return-void
.end method
