.class public final Lcom/itsmagic/engine/Engines/Sound/Imported/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preparedAudio"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/g;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ioFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->c(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/g;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logicalPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/g;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/g;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    return-object v0
.end method

.method public b(IILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startFrame",
            "requestedFrames",
            "outputBuffer"
        }
    .end annotation

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/g;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->pcmFrames:I

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gtz p2, :cond_0

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v1

    if-lt v1, p2, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/g;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/g;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->c:I

    invoke-static {v1, v2, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioNative;->b(Ljava/lang/String;IIILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outputBuffer capacity is smaller than requested frames"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "outputBuffer can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
