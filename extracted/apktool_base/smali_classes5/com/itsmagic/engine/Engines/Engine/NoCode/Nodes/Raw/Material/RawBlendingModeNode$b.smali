.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode$b;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;->I(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lec/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;->G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    :cond_0
    return-void
.end method

.method public d(Lec/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lec/a;->OPAQUE:Lec/a;

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode;->value:Lec/a;

    return-void
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

    check-cast p1, Lec/a;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/Material/RawBlendingModeNode$b;->d(Lec/a;)V

    return-void
.end method
