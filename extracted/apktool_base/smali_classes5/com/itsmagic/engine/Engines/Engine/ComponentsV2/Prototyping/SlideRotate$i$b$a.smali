.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate;->setMouseSensibility(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b$a$a;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$i$b$a;Ljava/lang/Exception;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
