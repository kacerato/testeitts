.class public Lcom/jme3/anim/ArmatureMask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/anim/AnimationMask;
.implements Lcom/jme3/export/Savable;


# instance fields
.field private affectedJoints:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/anim/Armature;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    .line 5
    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public static createMask(Lcom/jme3/anim/Armature;Ljava/lang/String;)Lcom/jme3/anim/ArmatureMask;
    .locals 1

    .line 1
    new-instance v0, Lcom/jme3/anim/ArmatureMask;

    invoke-direct {v0}, Lcom/jme3/anim/ArmatureMask;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/jme3/anim/ArmatureMask;->addFromJoint(Lcom/jme3/anim/Armature;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs createMask(Lcom/jme3/anim/Armature;[Ljava/lang/String;)Lcom/jme3/anim/ArmatureMask;
    .locals 1

    .line 3
    new-instance v0, Lcom/jme3/anim/ArmatureMask;

    invoke-direct {v0}, Lcom/jme3/anim/ArmatureMask;-><init>()V

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/jme3/anim/ArmatureMask;->addBones(Lcom/jme3/anim/Armature;[Ljava/lang/String;)V

    return-object v0
.end method

.method private findJoint(Lcom/jme3/anim/Armature;Ljava/lang/String;)Lcom/jme3/anim/Joint;
    .locals 2

    invoke-virtual {p1, p2}, Lcom/jme3/anim/Armature;->getJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find joint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAffectedJoints()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    return-object v0
.end method

.method private recurseAddJoint(Lcom/jme3/anim/Joint;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/Joint;

    invoke-direct {p0, v0}, Lcom/jme3/anim/ArmatureMask;->recurseAddJoint(Lcom/jme3/anim/Joint;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAncestors(Lcom/jme3/anim/Joint;)Lcom/jme3/anim/ArmatureMask;
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addBones(Lcom/jme3/anim/Armature;[Ljava/lang/String;)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/jme3/anim/ArmatureMask;->findJoint(Lcom/jme3/anim/Armature;Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/jme3/anim/Joint;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addFromJoint(Lcom/jme3/anim/Armature;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jme3/anim/ArmatureMask;->findJoint(Lcom/jme3/anim/Armature;Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/anim/ArmatureMask;->recurseAddJoint(Lcom/jme3/anim/Joint;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    check-cast p1, Lcom/jme3/anim/Joint;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "affectedJoints"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBitSet(Ljava/lang/String;Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    return-void
.end method

.method public remove(Lcom/jme3/anim/ArmatureMask;)Lcom/jme3/anim/ArmatureMask;
    .locals 1

    invoke-direct {p1}, Lcom/jme3/anim/ArmatureMask;->getAffectedJoints()Ljava/util/BitSet;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public removeAncestors(Lcom/jme3/anim/Joint;)Lcom/jme3/anim/ArmatureMask;
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs removeJoints(Lcom/jme3/anim/Armature;[Ljava/lang/String;)Lcom/jme3/anim/ArmatureMask;
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/jme3/anim/ArmatureMask;->findJoint(Lcom/jme3/anim/Armature;Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/anim/Joint;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
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

    iget-object v0, p0, Lcom/jme3/anim/ArmatureMask;->affectedJoints:Ljava/util/BitSet;

    const-string v1, "affectedJoints"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/util/BitSet;Ljava/lang/String;Ljava/util/BitSet;)V

    return-void
.end method
