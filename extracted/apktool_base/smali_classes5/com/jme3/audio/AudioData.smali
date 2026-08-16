.class public abstract Lcom/jme3/audio/AudioData;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/audio/AudioData$DataType;
    }
.end annotation


# instance fields
.field protected bitsPerSample:I

.field protected channels:I

.field protected sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/util/NativeObject;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBitsPerSample()I
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioData;->bitsPerSample:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioData;->channels:I

    return v0
.end method

.method public abstract getDataType()Lcom/jme3/audio/AudioData$DataType;
.end method

.method public abstract getDuration()F
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioData;->sampleRate:I

    return v0
.end method

.method public setupFormat(III)V
    .locals 2

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/jme3/audio/AudioData;->channels:I

    iput p2, p0, Lcom/jme3/audio/AudioData;->bitsPerSample:I

    iput p3, p0, Lcom/jme3/audio/AudioData;->sampleRate:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already set up"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
