.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJAVARuntime/ViewPanel;Ljava/lang/Class;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "classAddress",
            "javaMetaInfo"
        }
    .end annotation

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;

    iget-object p3, p3, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;->b:Li4/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$k$f;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;LJAVARuntime/ViewPanel;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-interface {p3, v0}, Li4/c;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
