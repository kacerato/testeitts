.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate;)Z

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate;->setLimited(Z)V

    if-eqz v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a$b;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$d$a;Ljava/lang/Exception;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    return-void
.end method
