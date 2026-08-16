.class public final Lcom/itsmagic/engine/Engines/Sound/Imported/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preparedAudio"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->pcmFrames:I

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->c:I

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->pcmFrames:I

    invoke-static {v1, v2, v0, v3}, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioNative;->a(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    return-object v1
.end method

.method public static b(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->c(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/f;->a(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/f;->a(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;

    move-result-object p0

    return-object p0
.end method
