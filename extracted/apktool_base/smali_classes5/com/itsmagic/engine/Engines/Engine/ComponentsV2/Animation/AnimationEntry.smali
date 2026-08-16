.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:Ljava/lang/String;

.field public transient c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

.field public compilled:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public file:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public origName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public startState:LT8/a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LT8/a;->Off:LT8/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->startState:LT8/a;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, LT8/a;->Off:LT8/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->startState:LT8/a;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    .line 10
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->file:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->origName:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->file:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->b:Ljava/lang/String;

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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, LT8/a;->Off:LT8/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->startState:LT8/a;

    .line 5
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->file:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->file:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->file:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->origName:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->origName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->compilled:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->compilled:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->startState:LT8/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->startState:LT8/a;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Animation/d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->origName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->compilled:Z

    return v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationInstance"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    return-void
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compilled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->compilled:Z

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->file:Ljava/lang/String;

    return-void
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->file:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origName"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->origName:Ljava/lang/String;

    return-void
.end method
