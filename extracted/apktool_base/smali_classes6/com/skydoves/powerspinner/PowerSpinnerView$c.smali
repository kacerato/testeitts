.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$c;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/a<",
        "Lnf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$c;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$c;->invoke()V

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$c;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$c;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->a(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V

    .line 4
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$c;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->e(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$c;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->h(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V

    :cond_0
    return-void
.end method
