.class LJAVARuntime/Color$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Color$1;->getInspector(Landroid/content/Context;LP8/k;Ljava/lang/String;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Color$1;

.field final synthetic val$constructor:LP8/k;


# direct methods
.method public constructor <init>(LJAVARuntime/Color$1;LP8/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$constructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Color$1$1;->this$0:LJAVARuntime/Color$1;

    iput-object p2, p0, LJAVARuntime/Color$1$1;->val$constructor:LP8/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, LJAVARuntime/Color$1$1;->val$constructor:LP8/k;

    invoke-interface {v0}, LP8/k;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJAVARuntime/Color;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, "temp"

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

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

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJAVARuntime/Color$1$1;->val$constructor:LP8/k;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    invoke-interface {v0, p1}, LP8/k;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
