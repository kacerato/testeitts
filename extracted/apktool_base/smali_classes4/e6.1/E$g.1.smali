.class public Le6/E$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/E;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;

.field public final synthetic b:Le6/E;


# direct methods
.method public constructor <init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$raw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le6/E$g;->b:Le6/E;

    iput-object p2, p0, Le6/E$g;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowSelect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Le6/E$g;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0
.end method

.method public getExtraTittle()Ljava/lang/String;
    .locals 1

    const-string v0, " (Object)"

    return-object v0
.end method

.method public getParent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Le6/E$g;->b:Le6/E;

    invoke-static {v0}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object v0

    invoke-virtual {v0}, Le6/X;->getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, Le6/E$g;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawObjectNode;->K0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Le6/E$g;->b:Le6/E;

    invoke-static {p1}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object p1

    invoke-virtual {p1}, Le6/X;->i0()V

    return-void
.end method
