.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field public static final b:I = -0x1


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
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromNodeId",
            "fromSlot",
            "toNodeId"
        }
    .end annotation

    const/4 v0, -0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

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

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    .line 7
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    .line 8
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    return-void
.end method
