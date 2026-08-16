.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;->I(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;->value:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string v1, "true"

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;->value:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;->G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBooleanNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    :cond_1
    return-void
.end method
