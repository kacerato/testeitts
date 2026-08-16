.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOd/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerDismissListener(LMf/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:LMf/a;


# direct methods
.method public constructor <init>(LMf/a;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$e;->a:LMf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$e;->a:LMf/a;

    invoke-interface {v0}, LMf/a;->invoke()Ljava/lang/Object;

    return-void
.end method
