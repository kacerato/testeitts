.class public final LJAVARuntime/BufferUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Luc/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Luc/a;->b([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Luc/a;->c(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Luc/a;->d([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Luc/a;->e(I)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createIntBuffer([I)Ljava/nio/IntBuffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Luc/a;->f([I)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createPoint3Buffer(I)LJAVARuntime/Point3Buffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Luc/a;->s(I)Lvc/n;

    move-result-object p0

    invoke-virtual {p0}, Lvc/n;->s()LJAVARuntime/Point3Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static createPoint3Buffer([LJAVARuntime/Point3;)LJAVARuntime/Point3Buffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Luc/a;->t([LJAVARuntime/Point3;)Lvc/n;

    move-result-object p0

    invoke-virtual {p0}, Lvc/n;->s()LJAVARuntime/Point3Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVector2Buffer(I)LJAVARuntime/Vector2Buffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Luc/a;->u(I)Lvc/p;

    move-result-object p0

    invoke-virtual {p0}, Lvc/p;->x()LJAVARuntime/Vector2Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVector2Buffer([LJAVARuntime/Vector2;)LJAVARuntime/Vector2Buffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Luc/a;->v([LJAVARuntime/Vector2;)Lvc/p;

    move-result-object p0

    invoke-virtual {p0}, Lvc/p;->x()LJAVARuntime/Vector2Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVector3Buffer(I)LJAVARuntime/Vector3Buffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Luc/a;->w(I)Lvc/q;

    move-result-object p0

    invoke-virtual {p0}, Lvc/q;->G()LJAVARuntime/Vector3Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVector3Buffer([LJAVARuntime/Vector3;)LJAVARuntime/Vector3Buffer;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Luc/a;->x([LJAVARuntime/Vector3;)Lvc/q;

    move-result-object p0

    invoke-virtual {p0}, Lvc/q;->G()LJAVARuntime/Vector3Buffer;

    move-result-object p0

    return-object p0
.end method
