.class LJAVARuntime/Color$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Color$2;->getInspectorForList(Landroid/content/Context;Ld8/h;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Color$2;

.field final synthetic val$getSetterListener:LP8/n;

.field final synthetic val$list:Ld8/h;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(LJAVARuntime/Color$2;Ld8/h;ILP8/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$list",
            "val$position",
            "val$getSetterListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Color$2$3;->this$0:LJAVARuntime/Color$2;

    iput-object p2, p0, LJAVARuntime/Color$2$3;->val$list:Ld8/h;

    iput p3, p0, LJAVARuntime/Color$2$3;->val$position:I

    iput-object p4, p0, LJAVARuntime/Color$2$3;->val$getSetterListener:LP8/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, LJAVARuntime/Color$2$3;->val$list:Ld8/h;

    iget v1, p0, LJAVARuntime/Color$2$3;->val$position:I

    invoke-virtual {v0, v1}, Ld8/h;->a(I)Ljava/lang/Object;

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
    .locals 3
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

    iget-object v0, p0, LJAVARuntime/Color$2$3;->val$list:Ld8/h;

    iget v1, p0, LJAVARuntime/Color$2$3;->val$position:I

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ld8/h;->b(ILjava/lang/Object;)V

    iget-object v0, p0, LJAVARuntime/Color$2$3;->val$getSetterListener:LP8/n;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    invoke-interface {v0, p1}, LP8/n;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
