.class LJAVARuntime/ProjectFile$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/ProjectFile$2;->getInspectorForArray(Landroid/content/Context;[Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/ProjectFile$2;

.field final synthetic val$array:[Ljava/lang/Object;

.field final synthetic val$getSetterListener:LP8/n;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(LJAVARuntime/ProjectFile$2;[Ljava/lang/Object;ILP8/n;)V
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
            "val$array",
            "val$position",
            "val$getSetterListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/ProjectFile$2$2;->this$0:LJAVARuntime/ProjectFile$2;

    iput-object p2, p0, LJAVARuntime/ProjectFile$2$2;->val$array:[Ljava/lang/Object;

    iput p3, p0, LJAVARuntime/ProjectFile$2$2;->val$position:I

    iput-object p4, p0, LJAVARuntime/ProjectFile$2$2;->val$getSetterListener:LP8/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    iget-object v0, p0, LJAVARuntime/ProjectFile$2$2;->val$array:[Ljava/lang/Object;

    iget v1, p0, LJAVARuntime/ProjectFile$2$2;->val$position:I

    aget-object v0, v0, v1

    check-cast v0, LJAVARuntime/ProjectFile;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->File:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    const-string v3, "temp"

    invoke-direct {v1, v3, v0, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->File:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

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

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v0}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, LJAVARuntime/ProjectFile;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-direct {v1, v0, p1}, LJAVARuntime/ProjectFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LJAVARuntime/ProjectFile$2$2;->val$array:[Ljava/lang/Object;

    iget v0, p0, LJAVARuntime/ProjectFile$2$2;->val$position:I

    aput-object v1, p1, v0

    iget-object p1, p0, LJAVARuntime/ProjectFile$2$2;->val$getSetterListener:LP8/n;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, LP8/n;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/ProjectFile$2$2;->val$array:[Ljava/lang/Object;

    iget v0, p0, LJAVARuntime/ProjectFile$2$2;->val$position:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    iget-object p1, p0, LJAVARuntime/ProjectFile$2$2;->val$getSetterListener:LP8/n;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, LP8/n;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
