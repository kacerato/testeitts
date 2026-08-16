.class public final Lcom/itsmagic/engine/Engines/Sound/Native/AudioUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "audio-utils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputSize",
            "inputSampleRate",
            "outputSampleRate"
        }
    .end annotation

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v0, p0

    int-to-double v2, p2

    int-to-double p0, p1

    div-double/2addr v2, p0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputSampleRate",
            "outputSampleRate"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    invoke-static {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/AudioUtils;->a(III)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-static {p0, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/AudioUtils;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "input can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputSampleRate",
            "outputSampleRate"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v1

    invoke-static {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/AudioUtils;->a(III)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    invoke-static {p0, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/AudioUtils;->e(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "input can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "inputSampleRate",
            "outputSampleRate"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v2

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v4

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Sound/Native/AudioUtils;->nativeResample(JJII)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "output can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "input can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "inputSampleRate",
            "outputSampleRate"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;J)J

    move-result-wide v2

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;J)J

    move-result-wide v4

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Sound/Native/AudioUtils;->nativeResampleShort(JJII)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "output can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "input can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeResample(JJII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputPointer",
            "outputPointer",
            "inputSampleRate",
            "outputSampleRate"
        }
    .end annotation
.end method

.method private static native nativeResampleShort(JJII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputPointer",
            "outputPointer",
            "inputSampleRate",
            "outputSampleRate"
        }
    .end annotation
.end method
