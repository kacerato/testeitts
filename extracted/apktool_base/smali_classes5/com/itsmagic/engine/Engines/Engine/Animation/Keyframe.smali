.class Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public el:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entryList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public frameTime:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTime"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->frameTime:I

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->frameTime:I

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;-><init>(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->a()Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "GUID"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "GUID"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->b(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public d()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYFRAME ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->frameTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->entryList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->entryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->entryList:Ljava/util/List;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
