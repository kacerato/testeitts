.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Collider - set shape"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Box:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setModelFile(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setModelFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setModelFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->ConvexModel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Decomposition:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;)V

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$1202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;LJAVARuntime/GizmoObject;)LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :goto_2
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method
