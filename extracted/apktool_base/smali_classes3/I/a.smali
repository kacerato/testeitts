.class public final LI/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI/a$a;,
        LI/a$b;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "PreFillRunner"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final k:LI/a$a;

.field public static final l:J = 0x20L

.field public static final m:J = 0x28L

.field public static final n:I = 0x4

.field public static final o:J


# instance fields
.field public final b:LF/e;

.field public final c:LG/j;

.field public final d:LI/c;

.field public final e:LI/a$a;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LI/d;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/os/Handler;

.field public h:J

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LI/a$a;

    invoke-direct {v0}, LI/a$a;-><init>()V

    sput-object v0, LI/a;->k:LI/a$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, LI/a;->o:J

    return-void
.end method

.method public constructor <init>(LF/e;LG/j;LI/c;)V
    .locals 6

    .line 1
    sget-object v4, LI/a;->k:LI/a$a;

    new-instance v5, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, LI/a;-><init>(LF/e;LG/j;LI/c;LI/a$a;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(LF/e;LG/j;LI/c;LI/a$a;Landroid/os/Handler;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LI/a;->f:Ljava/util/Set;

    const-wide/16 v0, 0x28

    .line 6
    iput-wide v0, p0, LI/a;->h:J

    .line 7
    iput-object p1, p0, LI/a;->b:LF/e;

    .line 8
    iput-object p2, p0, LI/a;->c:LG/j;

    .line 9
    iput-object p3, p0, LI/a;->d:LI/c;

    .line 10
    iput-object p4, p0, LI/a;->e:LI/a$a;

    .line 11
    iput-object p5, p0, LI/a;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, LI/a;->e:LI/a$a;

    invoke-virtual {v0}, LI/a$a;->a()J

    move-result-wide v0

    :cond_0
    :goto_0
    iget-object v2, p0, LI/a;->d:LI/c;

    invoke-virtual {v2}, LI/c;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0, v1}, LI/a;->e(J)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, LI/a;->d:LI/c;

    invoke-virtual {v2}, LI/c;->c()LI/d;

    move-result-object v2

    iget-object v3, p0, LI/a;->f:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, LI/a;->f:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, LI/a;->b:LF/e;

    invoke-virtual {v2}, LI/d;->d()I

    move-result v4

    invoke-virtual {v2}, LI/d;->b()I

    move-result v5

    invoke-virtual {v2}, LI/d;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, LF/e;->g(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, LI/d;->d()I

    move-result v3

    invoke-virtual {v2}, LI/d;->b()I

    move-result v4

    invoke-virtual {v2}, LI/d;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    invoke-static {v3}, LY/m;->h(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-virtual {p0}, LI/a;->c()J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    new-instance v5, LI/a$b;

    invoke-direct {v5}, LI/a$b;-><init>()V

    iget-object v6, p0, LI/a;->c:LG/j;

    iget-object v7, p0, LI/a;->b:LF/e;

    invoke-static {v3, v7}, Lcom/bumptech/glide/load/resource/bitmap/g;->c(Landroid/graphics/Bitmap;LF/e;)Lcom/bumptech/glide/load/resource/bitmap/g;

    move-result-object v3

    invoke-interface {v6, v5, v3}, LG/j;->f(LC/e;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    goto :goto_2

    :cond_2
    iget-object v5, p0, LI/a;->b:LF/e;

    invoke-interface {v5, v3}, LF/e;->d(Landroid/graphics/Bitmap;)V

    :goto_2
    const/4 v3, 0x3

    const-string v5, "PreFillRunner"

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LI/d;->d()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LI/d;->b()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LI/d;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, LI/a;->i:Z

    if-nez v0, :cond_4

    iget-object v0, p0, LI/a;->d:LI/c;

    invoke-virtual {v0}, LI/c;->b()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LI/a;->i:Z

    return-void
.end method

.method public final c()J
    .locals 4

    iget-object v0, p0, LI/a;->c:LG/j;

    invoke-interface {v0}, LG/j;->e()J

    move-result-wide v0

    iget-object v2, p0, LI/a;->c:LG/j;

    invoke-interface {v2}, LG/j;->getCurrentSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()J
    .locals 6

    iget-wide v0, p0, LI/a;->h:J

    const-wide/16 v2, 0x4

    mul-long/2addr v2, v0

    sget-wide v4, LI/a;->o:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, LI/a;->h:J

    return-wide v0
.end method

.method public final e(J)Z
    .locals 2

    iget-object v0, p0, LI/a;->e:LI/a$a;

    invoke-virtual {v0}, LI/a$a;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x20

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, LI/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/a;->g:Landroid/os/Handler;

    invoke-virtual {p0}, LI/a;->d()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
