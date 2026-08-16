.class public abstract LFc/a;
.super Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;
.source "SourceFile"


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "cacheKey",
            "header"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;-><init>()V

    iput-object p1, p0, LFc/a;->u:Ljava/lang/String;

    iput-object p2, p0, LFc/a;->A:Ljava/lang/String;

    iput-object p3, p0, LFc/a;->B:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    return-void
.end method


# virtual methods
.method public final c0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LFc/a;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final d0()Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;
    .locals 1

    iget-object v0, p0, LFc/a;->B:Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    return-object v0
.end method

.method public destroy()V
    .locals 0

    invoke-static {p0}, LHc/c;->v(LFc/a;)V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->destroy()V

    return-void
.end method

.method public abstract e0()Z
.end method

.method public final getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LFc/a;->u:Ljava/lang/String;

    return-object v0
.end method
