.class public final Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/beyka/tiffbitmapfactory/TiffSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SaveOptions"
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public c:Lorg/beyka/tiffbitmapfactory/b;

.field public d:Lorg/beyka/tiffbitmapfactory/e;

.field public e:F

.field public f:F

.field public g:Lorg/beyka/tiffbitmapfactory/i;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf424000

    iput-wide v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->b:Z

    sget-object v0, Lorg/beyka/tiffbitmapfactory/b;->NONE:Lorg/beyka/tiffbitmapfactory/b;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->c:Lorg/beyka/tiffbitmapfactory/b;

    sget-object v0, Lorg/beyka/tiffbitmapfactory/e;->TOP_LEFT:Lorg/beyka/tiffbitmapfactory/e;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->d:Lorg/beyka/tiffbitmapfactory/e;

    const/4 v0, 0x0

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->e:F

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->f:F

    sget-object v0, Lorg/beyka/tiffbitmapfactory/i;->NONE:Lorg/beyka/tiffbitmapfactory/i;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;->g:Lorg/beyka/tiffbitmapfactory/i;

    return-void
.end method
