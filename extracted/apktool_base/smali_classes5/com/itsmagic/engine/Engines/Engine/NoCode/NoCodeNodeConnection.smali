.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fromNodeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fromSlot:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public toNodeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public toSlot:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromNodeId",
            "fromSlot",
            "toNodeId",
            "toSlot"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    .line 5
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    return-void
.end method
