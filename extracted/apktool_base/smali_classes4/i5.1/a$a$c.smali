.class public Li5/a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/a$a;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Li5/a$a;


# direct methods
.method public constructor <init>(Li5/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Li5/a$a$c;->b:Li5/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Li5/a$a$c;->b:Li5/a$a;

    iget-object v0, v0, Li5/a$a;->a:Li5/a;

    invoke-static {v0}, Li5/a;->u1(Li5/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li5/a$a$c;->b:Li5/a$a;

    iget-object v0, v0, Li5/a$a;->a:Li5/a;

    invoke-static {v0}, Li5/a;->u1(Li5/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    iget-object v0, p0, Li5/a$a$c;->b:Li5/a$a;

    iget-object v0, v0, Li5/a$a;->a:Li5/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li5/a;->v1(Li5/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_0
    return-void
.end method
