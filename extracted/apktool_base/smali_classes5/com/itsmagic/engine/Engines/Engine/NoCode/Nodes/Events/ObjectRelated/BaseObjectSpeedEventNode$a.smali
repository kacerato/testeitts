.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$a;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->I(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enumObject"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$a;->e(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->LessThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->conditionType:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->LessThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "Lesser Or Equal"

    return-object p1

    :cond_2
    const-string p1, "Bigger Or Equal"

    return-object p1

    :cond_3
    const-string p1, "Less Than"

    return-object p1

    :cond_4
    const-string p1, "Bigger Than"

    return-object p1

    :cond_5
    const-string p1, "Equals"

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$a;->d(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;)V

    return-void
.end method
