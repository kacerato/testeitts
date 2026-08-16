.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Exception;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a$a;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/SlideRotate$c$a$a;->b:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
