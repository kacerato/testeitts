.class public abstract Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;
.super LFa/a;
.source "SourceFile"


# instance fields
.field public eventName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedName",
            "title"
        }
    .end annotation

    invoke-direct {p0}, LFa/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->eventName:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final varargs H0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "args"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->J0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->I0([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public I(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;)V

    const-string v2, "Event"

    sget-object v3, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public varargs abstract I0([Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation
.end method

.method public J0(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "functionName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->eventName:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->g:Ljava/lang/String;

    return-object p1
.end method

.method public l0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->T0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    :cond_0
    return-void
.end method

.method public m0()V
    .locals 0

    return-void
.end method
