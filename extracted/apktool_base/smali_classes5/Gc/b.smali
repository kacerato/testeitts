.class public LGc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGc/b$c;,
        LGc/b$b;,
        LGc/b$a;
    }
.end annotation


# static fields
.field public static final a:F = 3.0517578E-5f

.field public static b:I = 0x0

.field public static c:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LGc/a;)LGc/b$a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decoder"
        }
    .end annotation

    invoke-virtual {p0}, LGc/a;->c()I

    move-result v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, LGc/a;->f()[S

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    :try_start_1
    new-instance v5, LGc/b$b;

    invoke-virtual {p0}, LGc/a;->b()I

    move-result v6

    invoke-direct {v5, v4, v6}, LGc/b$b;-><init>([SI)V

    iget-object v4, v5, LGc/b$b;->a:[F

    if-eqz v4, :cond_0

    array-length v4, v4

    if-lez v4, :cond_0

    new-instance v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v5, v5, LGc/b$b;->a:[F

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>([F)V

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v3, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_2
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-static {p0, v0}, LGc/b;->e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-eq v2, p0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_3
    new-instance v3, LGc/b$a;

    invoke-static {v0}, LGc/b;->d(I)I

    move-result v0

    invoke-direct {v3, v2, v0}, LGc/b$a;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    goto :goto_2

    :cond_5
    return-object v3

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    throw v0

    :goto_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    goto :goto_6

    :cond_7
    throw p0
.end method

.method public static b(Landroid/content/res/AssetFileDescriptor;)LGc/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetFileDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LGc/a;

    invoke-direct {v0, p0}, LGc/a;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    :try_start_0
    invoke-static {v0}, LGc/b;->a(LGc/a;)LGc/b$a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LGc/a;->g()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, LGc/a;->g()V

    throw p0
.end method

.method public static c(Ljava/io/File;)LGc/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LGc/a;

    invoke-direct {v0, p0}, LGc/a;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0}, LGc/b;->a(LGc/a;)LGc/b$a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LGc/a;->g()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, LGc/a;->g()V

    throw p0
.end method

.method public static d(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputSampleRate"
        }
    .end annotation

    if-gtz p0, :cond_0

    return p0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->D()I

    move-result v0

    if-ne p0, v0, :cond_1

    return p0

    :cond_1
    return v0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "inputSampleRate"
        }
    .end annotation

    if-gtz p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->D()I

    move-result v0

    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Sound/Native/AudioUtils;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static f(LGc/a;LGc/b$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "decoder",
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, LGc/a;->c()I

    move-result v0

    invoke-static {v0}, LGc/b;->d(I)I

    move-result v1

    invoke-interface {p1, v1}, LGc/b$c;->c(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, LGc/a;->f()[S

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, LGc/b$b;

    invoke-virtual {p0}, LGc/a;->b()I

    move-result v4

    invoke-direct {v3, v1, v4}, LGc/b$b;-><init>([SI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, v3, LGc/b$b;->a:[F

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v4, v3, LGc/b$b;->a:[F

    invoke-direct {v1, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>([F)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-static {v1, v0}, LGc/b;->e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    if-eq v4, v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p1, v4}, LGc/b$c;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)I

    move-result v1

    sget v4, LGc/b;->c:I

    if-ne v1, v4, :cond_0

    invoke-interface {p1}, LGc/b$c;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_1
    move-exception v1

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_2

    iget-object v2, v3, LGc/b$b;->a:[F

    :cond_2
    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, LGc/b$c;->d([FI)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, LGc/b$c;->onFinish()V

    return-void
.end method

.method public static g(Landroid/content/res/AssetFileDescriptor;LGc/b$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "assetFileDescriptor",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LGc/a;

    invoke-direct {v0, p0}, LGc/a;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    :try_start_0
    invoke-static {v0, p1}, LGc/b;->f(LGc/a;LGc/b$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LGc/a;->g()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, LGc/a;->g()V

    throw p0
.end method

.method public static h(Ljava/io/File;LGc/b$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LGc/a;

    invoke-direct {v0, p0}, LGc/a;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0, p1}, LGc/b;->f(LGc/a;LGc/b$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LGc/a;->g()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, LGc/a;->g()V

    throw p0
.end method
