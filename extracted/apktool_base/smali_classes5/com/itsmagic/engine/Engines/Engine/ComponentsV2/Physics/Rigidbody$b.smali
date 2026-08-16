.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PY:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->freeze:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Utils/Freeze;->PY:Z

    :cond_0
    return-void
.end method
