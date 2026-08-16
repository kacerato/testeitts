.class final Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "imported-audio-format"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "pcmOffsetBytes",
            "output",
            "shortCount"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, p3}, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioNative;->nativeReadAll(Ljava/lang/String;IJI)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;IIILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "pcmOffsetBytes",
            "frameOffset",
            "frameCount",
            "output"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioNative;->nativeReadRange(Ljava/lang/String;IIIJ)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    return p0
.end method

.method private static native nativeReadAll(Ljava/lang/String;IJI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "pcmOffsetBytes",
            "outputPointer",
            "shortCount"
        }
    .end annotation
.end method

.method private static native nativeReadRange(Ljava/lang/String;IIIJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "pcmOffsetBytes",
            "frameOffset",
            "frameCount",
            "outputPointer"
        }
    .end annotation
.end method
