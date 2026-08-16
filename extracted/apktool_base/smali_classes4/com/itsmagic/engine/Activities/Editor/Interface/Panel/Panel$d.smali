.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lp4/c;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Lp4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$panelToPanelArea"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$d;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$d;->b:Lp4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$d;->b:Lp4/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lp4/c;->onClick()V

    :cond_0
    return-void
.end method
