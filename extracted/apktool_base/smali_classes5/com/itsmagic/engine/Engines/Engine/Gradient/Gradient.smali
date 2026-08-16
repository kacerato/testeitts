.class public Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
.super LK8/f;
.source "SourceFile"


# instance fields
.field public b:LJAVARuntime/ColorGradient;

.field private final entries:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LK8/f;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    return-void
.end method

.method public static m(Ljava/lang/String;Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "context"
        }
    .end annotation

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->f()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object v0

    return-object v0
.end method

.method public d(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "colorINT"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->f(F)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->e(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->o()V

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->o()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->b()Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->e(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public h(II)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    int-to-float v3, v2

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->k(F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    :cond_0
    move v4, v1

    :goto_1
    if-ge v4, p2, :cond_1

    iget v5, v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public i(I)Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    return-object p1
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public k(F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move-object v3, v2

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v5

    cmpl-float v5, v5, p1

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v5

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr p1, v1

    invoke-virtual {v3, v4, p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->a(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_4
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "p",
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->S(FFF)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v4

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr p1, v2

    invoke-virtual {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->a(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    monitor-exit v0

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;-><init>(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;-><init>(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->o()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o()V
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move v5, v2

    move v4, v3

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v7

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_3

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v4

    :cond_3
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v7

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_2

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v5

    goto :goto_1

    :cond_4
    cmpl-float v1, v4, v2

    const/4 v4, 0x0

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-direct {v6, v2, v7}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;-><init>(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-interface {v1, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    cmpg-float v1, v5, v3

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v5, v4, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-direct {v2, v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;-><init>(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public p(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v2

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->q(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V

    :cond_1
    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->b()Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->entries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->o()V

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public s()LJAVARuntime/ColorGradient;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->b:LJAVARuntime/ColorGradient;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/ColorGradient;

    invoke-direct {v0, p0}, LJAVARuntime/ColorGradient;-><init>(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->b:LJAVARuntime/ColorGradient;

    :cond_0
    return-object v0
.end method

.method public u(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(Landroid/graphics/Bitmap;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    int-to-float v2, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->k(F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
