.class public LO8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lub/p;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Ljava/lang/Object;

.field public k:Lub/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LO8/a;->h:I

    .line 3
    iput v0, p0, LO8/a;->i:I

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LO8/a;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "path"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, LO8/a;->h:I

    .line 7
    iput v0, p0, LO8/a;->i:I

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LO8/a;->j:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, LO8/a;->b:Ljava/lang/String;

    .line 10
    iput-object p2, p0, LO8/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 8

    iget-object v0, p0, LO8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, LO8/a;->f()Lub/p;

    move-result-object v0

    iput-object v0, p0, LO8/a;->a:Lub/p;

    iget-object v0, p0, LO8/a;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, LO8/a;->a:Lub/p;

    invoke-virtual {v2}, Lub/p;->H()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LO8/a;->a:Lub/p;

    invoke-virtual {v2}, Lub/p;->getWidth()I

    move-result v2

    iput v2, p0, LO8/a;->e:I

    iget-object v2, p0, LO8/a;->a:Lub/p;

    invoke-virtual {v2}, Lub/p;->getHeight()I

    move-result v2

    iput v2, p0, LO8/a;->f:I

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v3, p0, LO8/a;->e:I

    iget v4, p0, LO8/a;->f:I

    mul-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v2, p0, LO8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    move v3, v1

    move v4, v3

    :goto_0
    iget v5, p0, LO8/a;->e:I

    if-ge v3, v5, :cond_1

    move v5, v1

    :goto_1
    iget v6, p0, LO8/a;->f:I

    if-ge v5, v6, :cond_0

    iget-object v6, p0, LO8/a;->a:Lub/p;

    invoke-virtual {v6, v3, v5, v2}, Lub/p;->j(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v6

    iget-object v7, p0, LO8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7, v4, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_3
    iput v1, p0, LO8/a;->h:I

    iget-object v0, p0, LO8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public b()Lub/p;
    .locals 1

    invoke-virtual {p0}, LO8/a;->f()Lub/p;

    iget-object v0, p0, LO8/a;->k:Lub/p;

    return-object v0
.end method

.method public c(FF)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    invoke-static {p2}, LNc/b;->I(F)F

    move-result p2

    iget v0, p0, LO8/a;->e:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v2, p0, LO8/a;->f:I

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 v0, v2, -0x1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-int/2addr p1, v2

    add-int/2addr p1, p2

    invoke-virtual {p0}, LO8/a;->a()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p2

    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    if-le v0, p1, :cond_1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LO8/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LO8/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lub/p;
    .locals 7

    iget-object v0, p0, LO8/a;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LO8/a;->a:Lub/p;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ASSET@@/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LO8/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lyb/b;->j(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v1

    iput-object v1, p0, LO8/a;->a:Lub/p;

    invoke-virtual {v1}, Lub/p;->getWidth()I

    move-result v1

    iput v1, p0, LO8/a;->e:I

    iget-object v1, p0, LO8/a;->a:Lub/p;

    invoke-virtual {v1}, Lub/p;->getHeight()I

    move-result v1

    iput v1, p0, LO8/a;->f:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v1, p0, LO8/a;->k:Lub/p;

    if-nez v1, :cond_3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    new-instance v3, Lub/n;

    iget-object v4, p0, LO8/a;->a:Lub/p;

    invoke-virtual {v4}, Lub/p;->getWidth()I

    move-result v4

    iget-object v5, p0, LO8/a;->a:Lub/p;

    invoke-virtual {v5}, Lub/p;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lub/n;-><init>(II)V

    iput-object v3, p0, LO8/a;->k:Lub/p;

    move v3, v2

    :goto_1
    iget-object v4, p0, LO8/a;->k:Lub/p;

    invoke-virtual {v4}, Lub/p;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    :goto_2
    iget-object v5, p0, LO8/a;->k:Lub/p;

    invoke-virtual {v5}, Lub/p;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, LO8/a;->a:Lub/p;

    invoke-virtual {v5, v3, v4, v1}, Lub/p;->j(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v6, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    iget-object v5, p0, LO8/a;->k:Lub/p;

    invoke-virtual {v5, v3, v4, v1}, Lub/p;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, LO8/a;->k:Lub/p;

    invoke-virtual {v1}, Lub/p;->apply()V

    :cond_3
    iput v2, p0, LO8/a;->i:I

    iget-object v1, p0, LO8/a;->a:Lub/p;

    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LO8/a;->a:Lub/p;

    iput-object v0, p0, LO8/a;->k:Lub/p;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, LO8/a;->b:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    iput-object p1, p0, LO8/a;->c:Ljava/lang/String;

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, LO8/a;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LO8/a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LO8/a;->h:I

    iget v1, p0, LO8/a;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LO8/a;->i:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, LO8/a;->g()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget v1, p0, LO8/a;->h:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, LO8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
