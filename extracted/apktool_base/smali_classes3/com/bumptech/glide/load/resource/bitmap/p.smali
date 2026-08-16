.class public abstract Lcom/bumptech/glide/load/resource/bitmap/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/p$g;,
        Lcom/bumptech/glide/load/resource/bitmap/p$c;,
        Lcom/bumptech/glide/load/resource/bitmap/p$f;,
        Lcom/bumptech/glide/load/resource/bitmap/p$b;,
        Lcom/bumptech/glide/load/resource/bitmap/p$a;,
        Lcom/bumptech/glide/load/resource/bitmap/p$d;,
        Lcom/bumptech/glide/load/resource/bitmap/p$e;
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/resource/bitmap/p;

.field public static final b:Lcom/bumptech/glide/load/resource/bitmap/p;

.field public static final c:Lcom/bumptech/glide/load/resource/bitmap/p;

.field public static final d:Lcom/bumptech/glide/load/resource/bitmap/p;

.field public static final e:Lcom/bumptech/glide/load/resource/bitmap/p;

.field public static final f:Lcom/bumptech/glide/load/resource/bitmap/p;

.field public static final g:Lcom/bumptech/glide/load/resource/bitmap/p;

.field public static final h:LC/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LC/g<",
            "Lcom/bumptech/glide/load/resource/bitmap/p;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/p$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/p$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->a:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/p$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/p$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->b:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/p$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/p$e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->c:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/p$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/p$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->d:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/p$d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/p$d;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->e:Lcom/bumptech/glide/load/resource/bitmap/p;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/p$f;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/p$f;-><init>()V

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/p;->f:Lcom/bumptech/glide/load/resource/bitmap/p;

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->g:Lcom/bumptech/glide/load/resource/bitmap/p;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    invoke-static {v1, v0}, LC/g;->g(Ljava/lang/String;Ljava/lang/Object;)LC/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->h:LC/g;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/load/resource/bitmap/p;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Lcom/bumptech/glide/load/resource/bitmap/p$g;
.end method

.method public abstract b(IIII)F
.end method
