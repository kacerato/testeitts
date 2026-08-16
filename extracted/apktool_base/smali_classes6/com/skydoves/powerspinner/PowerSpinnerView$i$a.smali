.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView$i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/skydoves/powerspinner/PowerSpinnerView$i;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView$i;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i$a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i$a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$i;

    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getOnSpinnerDismissListener()LOd/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LOd/f;->onDismiss()V

    :cond_0
    return-void
.end method
