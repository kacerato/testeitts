.class public Lcom/google/android/material/datepicker/l$c;
.super Lcom/google/android/material/datepicker/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/l;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/datepicker/s<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/l;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/l$c;->a:Lcom/google/android/material/datepicker/l;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/l$c;->a:Lcom/google/android/material/datepicker/l;

    invoke-static {v0}, Lcom/google/android/material/datepicker/l;->i(Lcom/google/android/material/datepicker/l;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/material/datepicker/l$c;->a:Lcom/google/android/material/datepicker/l;

    invoke-static {p1}, Lcom/google/android/material/datepicker/l;->g(Lcom/google/android/material/datepicker/l;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/l$c;->a:Lcom/google/android/material/datepicker/l;

    invoke-static {p1}, Lcom/google/android/material/datepicker/l;->i(Lcom/google/android/material/datepicker/l;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/l$c;->a:Lcom/google/android/material/datepicker/l;

    invoke-static {v0}, Lcom/google/android/material/datepicker/l;->h(Lcom/google/android/material/datepicker/l;)Lcom/google/android/material/datepicker/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/material/datepicker/f;->B()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
