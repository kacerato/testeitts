.class public Lz6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/a;->inflateView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/content/Context;Ly6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic c:Ly6/b;

.field public final synthetic d:Lz6/a;


# direct methods
.method public constructor <init>(Lz6/a;Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;Ly6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$modulesContent",
            "val$inflateListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz6/a$a;->d:Lz6/a;

    iput-object p2, p0, Lz6/a$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lz6/a$a;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lz6/a$a;->c:Ly6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codeViewLayout",
            "resid",
            "parent"
        }
    .end annotation

    const p2, 0x7f09050d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing editor ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lz6/a;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0902a7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f070250

    iget-object v0, p0, Lz6/a$a;->a:Landroid/content/Context;

    invoke-static {p2, p3, v0}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    iget-object p2, p0, Lz6/a$a;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "scripting_editor_missing_editor"

    invoke-static {p2, p1}, LN7/c;->t0(Ljava/lang/String;Landroid/view/View;)V

    iget-object p2, p0, Lz6/a$a;->d:Lz6/a;

    invoke-static {p2, p1}, Lz6/a;->a(Lz6/a;Landroid/view/View;)Landroid/view/View;

    iget-object p2, p0, Lz6/a$a;->c:Ly6/b;

    invoke-interface {p2, p1}, Ly6/b;->a(Landroid/view/View;)V

    return-void
.end method
