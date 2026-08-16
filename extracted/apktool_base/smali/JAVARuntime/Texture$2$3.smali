.class LJAVARuntime/Texture$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Texture$2;->getInspectorForList(Landroid/content/Context;Ld8/h;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Texture$2;

.field final synthetic val$finalVar:LJAVARuntime/Texture;

.field final synthetic val$getSetterListener:LP8/n;

.field final synthetic val$list:Ld8/h;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(LJAVARuntime/Texture$2;Ld8/h;ILP8/n;LJAVARuntime/Texture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$list",
            "val$position",
            "val$getSetterListener",
            "val$finalVar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Texture$2$3;->this$0:LJAVARuntime/Texture$2;

    iput-object p2, p0, LJAVARuntime/Texture$2$3;->val$list:Ld8/h;

    iput p3, p0, LJAVARuntime/Texture$2$3;->val$position:I

    iput-object p4, p0, LJAVARuntime/Texture$2$3;->val$getSetterListener:LP8/n;

    iput-object p5, p0, LJAVARuntime/Texture$2$3;->val$finalVar:LJAVARuntime/Texture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, LJAVARuntime/Texture$2$3;->val$finalVar:LJAVARuntime/Texture;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, v0, LJAVARuntime/Texture;->instance:Lub/p;

    instance-of v2, v0, Lub/g;

    if-eqz v2, :cond_0

    check-cast v0, Lub/g;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v0}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Texture;

    new-instance v1, Lub/g;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-direct {v1, p1}, Lub/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LJAVARuntime/Texture;-><init>(Lub/p;)V

    iget-object p1, p0, LJAVARuntime/Texture$2$3;->val$list:Ld8/h;

    iget v1, p0, LJAVARuntime/Texture$2$3;->val$position:I

    invoke-virtual {p1, v1, v0}, Ld8/h;->b(ILjava/lang/Object;)V

    iget-object p1, p0, LJAVARuntime/Texture$2$3;->val$getSetterListener:LP8/n;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, LP8/n;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Texture$2$3;->val$list:Ld8/h;

    iget v0, p0, LJAVARuntime/Texture$2$3;->val$position:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ld8/h;->b(ILjava/lang/Object;)V

    iget-object p1, p0, LJAVARuntime/Texture$2$3;->val$getSetterListener:LP8/n;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, LP8/n;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
