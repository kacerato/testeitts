.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f0(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "listener",
            "val$n"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;->d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;->value:F

    return v0
.end method

.method public b(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;->value:F

    return-void
.end method
