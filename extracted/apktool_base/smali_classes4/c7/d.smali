.class public Lc7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:F

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc7/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc7/c;",
            ">;"
        }
    .end annotation
.end field

.field public static e:I

.field public static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc7/d;->b:Ljava/lang/Object;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sput-object v0, Lc7/d;->c:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sput-object v0, Lc7/d;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc7/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorTask"
        }
    .end annotation

    sget-object v0, Lc7/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc7/d;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Lc7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorTask"
        }
    .end annotation

    sget-object v0, Lc7/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc7/c;->b:Lc7/b;

    invoke-interface {v1}, Lc7/b;->b()V

    invoke-static {p0}, Lc7/d;->c(Lc7/c;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Lc7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorTask"
        }
    .end annotation

    sget-object v0, Lc7/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc7/d;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d()V
    .locals 6

    sget-object v0, Lc7/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lc7/d;->a:F

    invoke-static {}, LK8/d;->e()F

    move-result v2

    add-float/2addr v1, v2

    sput v1, Lc7/d;->a:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v1, :cond_3

    sget-object v1, Lc7/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    sget v4, Lc7/d;->e:I

    add-int/2addr v4, v5

    sput v4, Lc7/d;->e:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    sput v3, Lc7/d;->e:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    sget v4, Lc7/d;->e:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc7/c;

    iget-object v1, v1, Lc7/c;->b:Lc7/b;

    invoke-interface {v1}, Lc7/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LN7/c;->n0(Ljava/lang/String;)V

    sput-boolean v3, Lc7/d;->f:Z

    goto :goto_1

    :cond_1
    sput v3, Lc7/d;->e:I

    sget-boolean v1, Lc7/d;->f:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, LN7/c;->n0(Ljava/lang/String;)V

    sput-boolean v5, Lc7/d;->f:Z

    :cond_2
    :goto_1
    sput v2, Lc7/d;->a:F

    :cond_3
    sget-object v1, Lc7/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    sget-object v1, Lc7/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-static {v3, v1}, LMc/e;->a(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc7/c;

    invoke-virtual {v1}, Lc7/c;->e()F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    invoke-virtual {v1}, Lc7/c;->e()F

    move-result v4

    invoke-static {}, LK8/d;->e()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v4}, Lc7/c;->i(F)V

    invoke-virtual {v1}, Lc7/c;->e()F

    move-result v4

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_4

    sget-object v4, Lc7/d;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sget-object v1, Lc7/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lc7/d;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
