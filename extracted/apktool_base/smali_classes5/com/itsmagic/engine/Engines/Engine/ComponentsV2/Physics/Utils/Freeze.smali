.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public PX:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public PY:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public PZ:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public RX:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public RY:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public RZ:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PX:Z

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PY:Z

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PZ:Z

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RX:Z

    .line 6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RY:Z

    .line 7
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RZ:Z

    return-void
.end method

.method public constructor <init>(ZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "PX",
            "PY",
            "PZ",
            "RX",
            "RY",
            "RZ"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PX:Z

    .line 10
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PY:Z

    .line 11
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PZ:Z

    .line 12
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RX:Z

    .line 13
    iput-boolean p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RY:Z

    .line 14
    iput-boolean p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RZ:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;
    .locals 8

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PX:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PY:Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PZ:Z

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RX:Z

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RY:Z

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RZ:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;-><init>(ZZZZZZ)V

    return-object v7
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PX:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PZ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PZ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", RX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RX:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", RY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", RZ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->RZ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
