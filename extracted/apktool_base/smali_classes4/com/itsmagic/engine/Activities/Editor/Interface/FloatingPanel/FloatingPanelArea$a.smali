.class public Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj4/a;
    .locals 1

    sget-object v0, Lj4/a;->None:Lj4/a;

    return-object v0
.end method

.method public b()Lj4/b;
    .locals 1

    sget-object v0, Lj4/b;->None:Lj4/b;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->W0(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-void
.end method

.method public e()Lj4/b;
    .locals 1

    sget-object v0, Lj4/b;->None:Lj4/b;

    return-object v0
.end method

.method public f()Lj4/a;
    .locals 1

    sget-object v0, Lj4/a;->None:Lj4/a;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->a0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toggle()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->V0(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-void
.end method
