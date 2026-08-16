.class public Lz9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvc/e;

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lvc/e;

    invoke-direct {v0, p1, p1}, Lvc/e;-><init>(II)V

    iput-object v0, p0, Lz9/e;->a:Lvc/e;

    .line 6
    iput p1, p0, Lz9/e;->b:I

    return-void
.end method

.method public constructor <init>(Lvc/e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "resolution"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz9/e;->a:Lvc/e;

    .line 3
    iput p2, p0, Lz9/e;->b:I

    return-void
.end method

.method public static j(Lz9/e;I)Lz9/e;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "table",
            "resolution"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget v0, p0, Lz9/e;->b:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lz9/e;

    invoke-direct {v0, p1}, Lz9/e;-><init>(I)V

    if-eqz p0, :cond_1

    iget-object v1, p0, Lz9/e;->a:Lvc/e;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lz9/e;->a:Lvc/e;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lz9/e;->a:Lvc/e;

    invoke-virtual {v3}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    iget p0, p0, Lz9/e;->b:I

    iget-object v4, v0, Lz9/e;->a:Lvc/e;

    invoke-virtual {v4}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-static {v3, p0, v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTable;->a(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lz9/e;->b(F)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lz9/e;->a:Lvc/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lvc/k;->d()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, LNc/b;->E(FFF)F

    move-result p1

    iget-object v0, p0, Lz9/e;->a:Lvc/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz9/e;->a:Lvc/e;

    invoke-virtual {v1, p1}, Lvc/k;->e(F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 2

    iget-object v0, p0, Lz9/e;->a:Lvc/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz9/e;->a:Lvc/e;

    invoke-virtual {v1}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(II)F
    .locals 2
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

    if-ltz p1, :cond_3

    iget v0, p0, Lz9/e;->b:I

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lz9/e;->a:Lvc/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz9/e;->a:Lvc/e;

    invoke-virtual {v1, p1, p2}, Lvc/e;->w(II)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " can\'t be >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lz9/e;->b:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " can\'t be < 0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lz9/e;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be < 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public e(FF)F
    .locals 2
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

    iget v0, p0, Lz9/e;->b:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lz9/e;->d(II)F

    move-result p1

    return p1
.end method

.method public f(II)F
    .locals 1
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

    iget-object v0, p0, Lz9/e;->a:Lvc/e;

    invoke-virtual {v0, p1, p2}, Lvc/e;->z(II)F

    move-result p1

    return p1
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lz9/e;->b:I

    return v0
.end method

.method public h(IIF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "height"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p3, v1}, LNc/b;->E(FFF)F

    move-result p3

    iget-object v0, p0, Lz9/e;->a:Lvc/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz9/e;->a:Lvc/e;

    invoke-virtual {v1, p1, p2, p3}, Lvc/e;->A(IIF)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(IIF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "height"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p3, v1}, LNc/b;->E(FFF)F

    move-result p3

    iget-object v0, p0, Lz9/e;->a:Lvc/e;

    invoke-virtual {v0, p1, p2, p3}, Lvc/e;->B(IIF)V

    return-void
.end method
