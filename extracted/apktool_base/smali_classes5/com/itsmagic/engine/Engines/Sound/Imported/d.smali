.class public final Lcom/itsmagic/engine/Engines/Sound/Imported/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;,
        Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;,
        Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;,
        Lcom/itsmagic/engine/Engines/Sound/Imported/d$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "SND1"

.field public static final b:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->b:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headerLength"
        }
    .end annotation

    const/16 v0, 0xa

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importedAudioFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->d()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->e(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->j(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object v0

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->d()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->f(Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;Ljava/io/File;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->e(Lcom/itsmagic/engine/Engines/Sound/Imported/b;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)V

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->j(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "importedAudioFile can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->g(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->b(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->b(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Sound/Imported/b;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "importedAudioFile",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->b()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pcm.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->sourceLastModified:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->sourceLength:J

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->D()I

    move-result v4

    iput v4, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->pcmSampleRate:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    iput-boolean p1, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->trimSilenceFromBeginEnd:Z

    :try_start_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Sound/Imported/e;

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/e;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;-><init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Sound/Imported/d$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/e;->d()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/e;->c()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-instance v8, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;

    iget v9, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->pcmSampleRate:I

    invoke-direct {v8, v7, v9, v6}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;-><init>(IILcom/itsmagic/engine/Engines/Sound/Imported/d$a;)V

    new-array v4, v4, [S

    :goto_1
    invoke-virtual {p1, v6}, Lcom/itsmagic/engine/Engines/Sound/Imported/e;->e(Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;)Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v7, v6, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;->b:I

    if-gtz v7, :cond_2

    goto :goto_1

    :cond_2
    div-int v9, v7, v5

    if-gtz v9, :cond_3

    goto :goto_1

    :cond_3
    array-length v10, v4

    if-ge v10, v9, :cond_4

    new-array v4, v9, [S

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_4
    :goto_2
    iget-object v10, v6, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;->a:[S

    invoke-static {v10, v7, v5, v4, v9}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->g([SII[SI)V

    iget-wide v10, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->sourceFrames:J

    int-to-long v12, v9

    add-long/2addr v10, v12

    iput-wide v10, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->sourceFrames:J

    new-instance v7, Lcom/itsmagic/engine/Engines/Sound/Imported/c;

    invoke-direct {v7, v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/c;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;)V

    invoke-static {v8, v4, v9, v7}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->a(Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;[SILcom/itsmagic/engine/Engines/Sound/Imported/d$c;)V

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/itsmagic/engine/Engines/Sound/Imported/c;

    invoke-direct {v4, v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/c;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;)V

    invoke-static {v8, v4}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->b(Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;Lcom/itsmagic/engine/Engines/Sound/Imported/d$c;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->c()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/e;->close()V

    iget-boolean p1, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->trimSilenceFromBeginEnd:Z

    if-eqz p1, :cond_6

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Sound/Imported/a;->d(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_a

    :cond_6
    :goto_3
    long-to-int p1, v4

    iput p1, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->pcmFrames:I

    iget p1, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->pcmSampleRate:I

    if-lez p1, :cond_7

    long-to-float v0, v4

    int-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    iput v0, v3, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->durationSeconds:F

    invoke-static {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->o(Ljava/io/File;Ljava/io/File;Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to replace imported audio file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p0, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    :cond_a
    return-void

    :cond_b
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to finalize imported audio file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_2
    move-exception p0

    goto :goto_8

    :goto_6
    :try_start_6
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_8
    :try_start_8
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/e;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    :cond_c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    :cond_d
    throw p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;Ljava/io/File;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "header",
            "sourceFile",
            "config"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->version:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->pcmSampleRate:I

    invoke-static {}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->D()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->sourceLastModified:J

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->sourceLength:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->trimSilenceFromBeginEnd:Z

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-ne p0, p2, :cond_1

    move v0, p1

    :cond_1
    return v0
.end method

.method public static g([SII[SI)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputCount",
            "channels",
            "output",
            "frames"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, v0, :cond_0

    invoke-static {p0, v1, p3, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p4, :cond_5

    mul-int v2, v0, p2

    if-lt v2, p1, :cond_1

    aput-short v1, p3, v0

    goto :goto_4

    :cond_1
    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v3, p2, :cond_3

    add-int v6, v2, v3

    if-lt v6, p1, :cond_2

    goto :goto_2

    :cond_2
    aget-short v6, p0, v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-lez v5, :cond_4

    div-int/2addr v4, v5

    int-to-short v2, v4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    aput-short v2, p3, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static h(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceFile"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".sound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->e(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    :try_start_0
    new-instance v3, Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, p0, v1, v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Z)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->j(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    invoke-static {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->f(Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;Ljava/io/File;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v4

    return p0

    :catch_0
    return v4

    :cond_2
    :goto_0
    return v0
.end method

.method public static i(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceFile"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".sound"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importedAudioFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->b()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SND1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-array v2, v0, [B

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->b:Lcom/google/gson/Gson;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class v2, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->a(I)I

    move-result v0

    invoke-direct {v3, p0, v2, v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/b;Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to deserialize imported audio header"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid imported audio header length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid imported audio magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importedAudioFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->e(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->e(Lcom/itsmagic/engine/Engines/Sound/Imported/b;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->j(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Can\'t reimport a direct imported audio without the source file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "importedAudioFile can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->g(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->k(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/b;->h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Sound/Imported/b;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->k(Lcom/itsmagic/engine/Engines/Sound/Imported/b;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/io/File;Ljava/io/File;Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputFile",
            "pcmFile",
            "header"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->b:Lcom/google/gson/Gson;

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    new-instance p0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "SND1"

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    const/16 p1, 0x4000

    new-array p1, p1, [B

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-ltz p2, :cond_1

    if-lez p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method
