.class public Lcom/jme3/anim/AnimClip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# instance fields
.field private length:D

.field private name:Ljava/lang/String;

.field private tracks:[Lcom/jme3/anim/AnimTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/anim/AnimClip;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 3

    iget-object p2, p0, Lcom/jme3/anim/AnimClip;->tracks:[Lcom/jme3/anim/AnimTrack;

    array-length p2, p2

    new-array p2, p2, [Lcom/jme3/anim/AnimTrack;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/anim/AnimClip;->tracks:[Lcom/jme3/anim/AnimTrack;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/anim/AnimTrack;

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/jme3/anim/AnimClip;->tracks:[Lcom/jme3/anim/AnimTrack;

    return-void
.end method

.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/AnimClip;->length:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimClip;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()[Lcom/jme3/anim/AnimTrack;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimClip;->tracks:[Lcom/jme3/anim/AnimTrack;

    return-object v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error cloning"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/anim/AnimClip;->name:Ljava/lang/String;

    const-string v0, "tracks"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    new-array v0, v0, [Lcom/jme3/anim/AnimTrack;

    iput-object v0, p0, Lcom/jme3/anim/AnimClip;->tracks:[Lcom/jme3/anim/AnimTrack;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    check-cast v1, Lcom/jme3/anim/AnimTrack;

    iget-object v2, p0, Lcom/jme3/anim/AnimClip;->tracks:[Lcom/jme3/anim/AnimTrack;

    aput-object v1, v2, v0

    invoke-interface {v1}, Lcom/jme3/anim/AnimTrack;->getLength()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/jme3/anim/AnimClip;->length:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {v1}, Lcom/jme3/anim/AnimTrack;->getLength()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/jme3/anim/AnimClip;->length:D

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTracks([Lcom/jme3/anim/AnimTrack;)V
    .locals 7

    iput-object p1, p0, Lcom/jme3/anim/AnimClip;->tracks:[Lcom/jme3/anim/AnimTrack;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/jme3/anim/AnimTrack;->getLength()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/jme3/anim/AnimClip;->length:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-interface {v2}, Lcom/jme3/anim/AnimTrack;->getLength()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jme3/anim/AnimClip;->length:D

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/anim/AnimClip;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jme3/anim/AnimClip;->length:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/anim/AnimClip;->name:Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/anim/AnimClip;->tracks:[Lcom/jme3/anim/AnimTrack;

    const-string v1, "tracks"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    return-void
.end method
