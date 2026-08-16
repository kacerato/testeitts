.class public Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private trimSilenceFromBeginEnd:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->trimSilenceFromBeginEnd:Z

    return-void
.end method

.method public static b(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioFile"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".config"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioFile"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, LX7/a;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :catch_0
    :cond_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;-><init>()V

    return-object p0
.end method

.method public static e(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioFile"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->d(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;-><init>()V

    :cond_0
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->g(Ljava/io/File;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)Z

    return-object v0
.end method

.method public static f(Ljava/io/File;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioFile"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"

    invoke-static {v1, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".imvs"

    invoke-static {v1, v3}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".sound"

    invoke-static {v1, v4}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\|"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v7, v2, v6

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    return-object v8

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v5, v2, :cond_8

    aget-object v3, v1, v5

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v4

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    return-object v0
.end method

.method public static g(Ljava/io/File;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioFile",
            "config"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LX7/a;->i(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;-><init>()V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->trimSilenceFromBeginEnd:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->trimSilenceFromBeginEnd:Z

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->trimSilenceFromBeginEnd:Z

    return v0
.end method

.method public h(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimSilenceFromBeginEnd"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->trimSilenceFromBeginEnd:Z

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
