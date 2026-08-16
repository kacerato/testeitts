.class public final LFc/b;
.super LFc/a;
.source "SourceFile"


# instance fields
.field public final C:LHc/c$e;


# direct methods
.method public constructor <init>(Ljava/lang/String;LHc/c$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "sharedData"
        }
    .end annotation

    invoke-virtual {p2}, LHc/c$e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LHc/c$e;->f()Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, LFc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;)V

    iput-object p2, p0, LFc/b;->C:LHc/c$e;

    invoke-virtual {p2}, LHc/c$e;->d()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    invoke-virtual {p2}, LHc/c$e;->g()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->I(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V

    return-void
.end method


# virtual methods
.method public C()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1

    iget-object v0, p0, LFc/b;->C:LHc/c$e;

    invoke-virtual {v0}, LHc/c$e;->d()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public e0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
