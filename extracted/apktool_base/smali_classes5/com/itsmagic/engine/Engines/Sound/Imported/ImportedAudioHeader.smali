.class public Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x3


# instance fields
.field public durationSeconds:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public encoding:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public pcmFrames:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public pcmSampleRate:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sourceFrames:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sourceLastModified:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sourceLength:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public trimSilenceFromBeginEnd:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public version:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->version:I

    const-string v0, "pcm_s16le_mono"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->encoding:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/ImportedAudioHeader;->trimSilenceFromBeginEnd:Z

    return-void
.end method
