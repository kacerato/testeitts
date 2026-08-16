.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$b;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$b;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$b;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$b$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$b;Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
