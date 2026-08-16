.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private from:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private to:Ljava/lang/String;
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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Node;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "node1"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Node;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Node;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Connection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "b"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Connection;->from:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Connection;->to:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Connection;->from:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Connection;->to:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Connection;->from:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/graph/Connection;->to:Ljava/lang/String;

    return-void
.end method
