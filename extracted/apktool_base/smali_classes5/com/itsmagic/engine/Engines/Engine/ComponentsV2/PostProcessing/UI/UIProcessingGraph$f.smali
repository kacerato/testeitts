.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LVb/b;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$f;->a:LVb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Utils/Variable;LVb/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$f;->b(Lcom/itsmagic/engine/Engines/Utils/Variable;LVb/b;)V

    return-void
.end method

.method private static synthetic b(Lcom/itsmagic/engine/Engines/Utils/Variable;LVb/b;)V
    .locals 1

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UIProcessingGraph - set texture"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {p0}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object p0

    iput-object p0, p1, LVb/b;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw p0
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$f;->a:LVb/b;

    iget-object v0, v0, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, Lub/g;

    if-eqz v1, :cond_0

    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, "temp"

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$f;->a:LVb/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/q;

    invoke-direct {v1, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/q;-><init>(Lcom/itsmagic/engine/Engines/Utils/Variable;LVb/b;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
