.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnFocusStayNode$Factory;
.super Ljava/lang/Object;
.source "ExtendedInteractionEventNodes.java"

# interfaces
.implements Lga/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnFocusStayNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
    .locals 1

    .line 34
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnFocusStayNode;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnFocusStayNode;-><init>()V

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

    .line 35
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnFocusStayNode;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "Interaction.OnFocusStay"

    return-object v0
.end method

.method public d(Lcom/google/gson/JsonObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
    .locals 2

    .line 37
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnFocusStayNode;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "Events/Interaction"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "On Focus Stay"

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method
