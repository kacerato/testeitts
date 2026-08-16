.class public Ly6/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/c;->u1(LF6/d;Ljd/b;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljd/b;

.field public final synthetic b:Ly6/c;


# direct methods
.method public constructor <init>(Ly6/c;Ljd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ly6/c$b;->b:Ly6/c;

    iput-object p2, p0, Ly6/c$b;->a:Ljd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Ly6/c$b;->b:Ly6/c;

    invoke-static {p1}, Ly6/c;->s1(Ly6/c;)LF6/d;

    move-result-object p1

    iget-object v0, p0, Ly6/c$b;->b:Ly6/c;

    invoke-static {v0}, Ly6/c;->q1(Ly6/c;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Ly6/c$b;->b:Ly6/c;

    invoke-static {v1}, Ly6/c;->r1(Ly6/c;)Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object v1

    iget-object v2, p0, Ly6/c$b;->b:Ly6/c;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ly6/c$b$a;

    invoke-direct {v3, p0}, Ly6/c$b$a;-><init>(Ly6/c$b;)V

    invoke-interface {p1, v0, v1, v2, v3}, LF6/d;->inflateView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/content/Context;Ly6/b;)V

    return-void
.end method
