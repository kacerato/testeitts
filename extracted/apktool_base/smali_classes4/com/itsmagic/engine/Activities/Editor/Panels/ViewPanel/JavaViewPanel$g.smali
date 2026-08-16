.class public Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Landroid/view/View;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;[Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$g;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$g;->a:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$g;->a:[Landroid/view/View;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel$g;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;)LJAVARuntime/ViewPanel;

    move-result-object v1

    invoke-virtual {v1}, LJAVARuntime/ViewPanel;->onAttach()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
