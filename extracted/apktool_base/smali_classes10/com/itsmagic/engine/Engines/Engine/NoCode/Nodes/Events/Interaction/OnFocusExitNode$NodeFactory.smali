.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnFocusExitNode$NodeFactory;
.super Ljava/lang/Object;
.source "OnFocusExitNode.java"

# interfaces
.implements Lga/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnFocusExitNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
    .locals 1

    .line 34
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnFocusExitNode;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnFocusExitNode;-><init>()V

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;",
            ">;"
        }
    .end annotation

    .line 39
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnFocusExitNode;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "Interaction.OnFocusExit"

    return-object v0
.end method

.method public d(Lcom/google/gson/JsonObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
    .locals 2

    .line 49
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnFocusExitNode;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "Events/Interaction"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "On Focus Exit"

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method
