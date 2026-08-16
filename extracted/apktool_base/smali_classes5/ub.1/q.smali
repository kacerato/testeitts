.class public Lub/q;
.super Lub/g;
.source "SourceFile"


# instance fields
.field public s:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ioFile"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lub/g;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ioFile",
            "config"
        }
    .end annotation

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lub/g;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ioFile",
            "config",
            "applyOGL",
            "async"
        }
    .end annotation

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p1, p2}, Lub/g;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lub/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "config"
        }
    .end annotation

    const/4 p2, 0x1

    .line 5
    invoke-direct {p0, p1, p2}, Lub/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "config",
            "applyOGL"
        }
    .end annotation

    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Lub/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "config",
            "applyOGL",
            "async"
        }
    .end annotation

    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p1, p2}, Lub/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final G0()Lub/p;
    .locals 1

    sget-object v0, Lyb/b;->i:Lub/p;

    invoke-static {v0}, Lub/p;->L(Lub/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyb/b;->i:Lub/p;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public H0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
    .locals 1

    iget-object v0, p0, Lub/q;->s:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    return-object v0
.end method

.method public I0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overrider"
        }
    .end annotation

    iput-object p1, p0, Lub/q;->s:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {p0}, Lub/p;->Q()V

    return-void
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, Lub/q;->s:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->A()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lub/q;->G0()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public apply()V
    .locals 0

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "attributeName"
        }
    .end annotation

    iget-object v0, p0, Lub/q;->s:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lub/q;->s:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lub/q;->G0()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lub/q;->s:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lub/q;->G0()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lub/p;->getHeight()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lub/q;->s:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lub/q;->G0()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public q()J
    .locals 2

    iget-object v0, p0, Lub/q;->s:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lub/q;->G0()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->q()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->p()J

    move-result-wide v0

    return-wide v0
.end method
