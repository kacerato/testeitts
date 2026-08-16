.class public Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->b(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;->Advanced:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    sget-object p1, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 v0, 0x43960000    # 300.0f

    const/high16 v1, 0x43e10000    # 450.0f

    const-string v2, "https://itsmagic.com.br/index.html"

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, v0, v1}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a$c;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$a;->d(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;)V

    return-void
.end method
