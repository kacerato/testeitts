.class public Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private componentUID:LAc/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private entryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final frameList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private instantFrameID:LAc/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private length:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private objectUID:LAc/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:Lcom/itsmagic/engine/Engines/Engine/Animation/c;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->frameList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->k(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)I

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)I
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->objectUID:LAc/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->componentUID:LAc/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->entryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, LAc/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->objectUID:LAc/b;

    invoke-virtual {v2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->componentUID:LAc/b;

    invoke-virtual {v3}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->entryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->instantFrameID:LAc/b;

    :cond_0
    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->instantFrameID:LAc/b;

    invoke-static {v1}, LAc/b;->J(LAc/b;)LAc/b;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->instantFrameID:LAc/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->objectUID:LAc/b;

    invoke-static {v1}, LAc/b;->J(LAc/b;)LAc/b;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->objectUID:LAc/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->componentUID:LAc/b;

    invoke-static {v1}, LAc/b;->J(LAc/b;)LAc/b;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->componentUID:LAc/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->entryName:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->entryName:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->type:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->type:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->frameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->frameList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->frameList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->b()Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()LAc/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->componentUID:LAc/b;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->entryName:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->frameList:Ljava/util/List;

    return-object v0
.end method

.method public g()LAc/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->instantFrameID:LAc/b;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->length:I

    return v0
.end method

.method public i()LAc/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->objectUID:LAc/b;

    return-object v0
.end method

.method public j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->type:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    return-object v0
.end method

.method public l(LAc/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentUID"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->componentUID:LAc/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->objectUID:LAc/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->entryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, LAc/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->objectUID:LAc/b;

    invoke-virtual {v2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->entryName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->instantFrameID:LAc/b;

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->entryName:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->objectUID:LAc/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->componentUID:LAc/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, LAc/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->objectUID:LAc/b;

    invoke-virtual {v2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->componentUID:LAc/b;

    invoke-virtual {v3}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->instantFrameID:LAc/b;

    :cond_0
    return-void
.end method

.method public n(LAc/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->objectUID:LAc/b;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->componentUID:LAc/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->entryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, LAc/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->componentUID:LAc/b;

    invoke-virtual {v2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->entryName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->instantFrameID:LAc/b;

    :cond_0
    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->type:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    return-void
.end method

.method public p()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->frameList:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Animation/f;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/f;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->length:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->frameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->frameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->length:I

    :cond_0
    return-void
.end method
