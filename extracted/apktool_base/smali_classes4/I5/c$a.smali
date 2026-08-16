.class public LI5/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI5/c;->z(Lo4/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI5/c;


# direct methods
.method public constructor <init>(LI5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LI5/c$a;->b:LI5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LI5/c$a;->b:LI5/c;

    invoke-static {v0}, LI5/c;->p1(LI5/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI5/c$a;->b:LI5/c;

    invoke-static {v0}, LI5/c;->p1(LI5/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    iget-object v0, p0, LI5/c$a;->b:LI5/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LI5/c;->q1(LI5/c;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_0
    return-void
.end method
