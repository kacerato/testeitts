.class public final LI/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG/j;

.field public final b:LF/e;

.field public final c:LC/b;

.field public final d:Landroid/os/Handler;

.field public e:LI/a;


# direct methods
.method public constructor <init>(LG/j;LF/e;LC/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LI/b;->d:Landroid/os/Handler;

    iput-object p1, p0, LI/b;->a:LG/j;

    iput-object p2, p0, LI/b;->b:LF/e;

    iput-object p3, p0, LI/b;->c:LC/b;

    return-void
.end method

.method public static b(LI/d;)I
    .locals 2

    invoke-virtual {p0}, LI/d;->d()I

    move-result v0

    invoke-virtual {p0}, LI/d;->b()I

    move-result v1

    invoke-virtual {p0}, LI/d;->a()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, LY/m;->g(IILandroid/graphics/Bitmap$Config;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs a([LI/d;)LI/c;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, LI/b;->a:LG/j;

    invoke-interface {v0}, LG/j;->e()J

    move-result-wide v0

    iget-object v2, p0, LI/b;->a:LG/j;

    invoke-interface {v2}, LG/j;->getCurrentSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, LI/b;->b:LF/e;

    invoke-interface {v2}, LF/e;->e()J

    move-result-wide v2

    add-long/2addr v0, v2

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    invoke-virtual {v6}, LI/d;->c()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    int-to-float v1, v5

    div-float/2addr v0, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4}, LI/d;->c()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, LI/b;->b(LI/d;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, LI/c;

    invoke-direct {p1, v1}, LI/c;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public varargs c([LI/d$a;)V
    .locals 5

    iget-object v0, p0, LI/b;->e:LI/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LI/a;->b()V

    :cond_0
    array-length v0, p1

    new-array v0, v0, [LI/d;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, LI/d$a;->b()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, LI/b;->c:LC/b;

    sget-object v4, LC/b;->PREFER_ARGB_8888:LC/b;

    if-ne v3, v4, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-virtual {v2, v3}, LI/d$a;->c(Landroid/graphics/Bitmap$Config;)LI/d$a;

    :cond_2
    invoke-virtual {v2}, LI/d$a;->a()LI/d;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, LI/b;->a([LI/d;)LI/c;

    move-result-object p1

    new-instance v0, LI/a;

    iget-object v1, p0, LI/b;->b:LF/e;

    iget-object v2, p0, LI/b;->a:LG/j;

    invoke-direct {v0, v1, v2, p1}, LI/a;-><init>(LF/e;LG/j;LI/c;)V

    iput-object v0, p0, LI/b;->e:LI/a;

    iget-object p1, p0, LI/b;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
