.class public final Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field public A:I

.field public B:Lorg/beyka/tiffbitmapfactory/f;

.field public C:Lorg/beyka/tiffbitmapfactory/d;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public volatile a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:J

.field public i:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

.field public j:Lorg/beyka/tiffbitmapfactory/c;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Lorg/beyka/tiffbitmapfactory/e;

.field public p:Lorg/beyka/tiffbitmapfactory/b;

.field public q:Lorg/beyka/tiffbitmapfactory/g;

.field public r:I

.field public s:I

.field public t:F

.field public u:F

.field public v:Lorg/beyka/tiffbitmapfactory/i;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->ARGB_8888:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->i:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    const-string v0, ""

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->D:Ljava/lang/String;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->E:Ljava/lang/String;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->F:Ljava/lang/String;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->G:Ljava/lang/String;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->H:Ljava/lang/String;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->I:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->a:Z

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->c:Z

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->b:Z

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->d:Z

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->e:Z

    const/4 v1, 0x1

    iput v1, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->f:I

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->g:I

    const-wide/32 v0, 0xf424000

    iput-wide v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->h:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->k:I

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->l:I

    iput v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->n:I

    sget-object v0, Lorg/beyka/tiffbitmapfactory/e;->UNAVAILABLE:Lorg/beyka/tiffbitmapfactory/e;

    iput-object v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->o:Lorg/beyka/tiffbitmapfactory/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;->a:Z

    return-void
.end method
