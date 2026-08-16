.class public Lcom/google/android/material/datepicker/v$a;
.super Lcom/google/android/material/datepicker/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/v;->A(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/s;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:Lcom/google/android/material/datepicker/s;

.field public final synthetic j:Lcom/google/android/material/datepicker/v;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/v;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/v$a;->j:Lcom/google/android/material/datepicker/v;

    iput-object p6, p0, Lcom/google/android/material/datepicker/v$a;->i:Lcom/google/android/material/datepicker/s;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/e;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/a;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/v$a;->i:Lcom/google/android/material/datepicker/s;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/s;->a()V

    return-void
.end method

.method public f(Ljava/lang/Long;)V
    .locals 3
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/v$a;->j:Lcom/google/android/material/datepicker/v;

    invoke-static {p1}, Lcom/google/android/material/datepicker/v;->b(Lcom/google/android/material/datepicker/v;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/v$a;->j:Lcom/google/android/material/datepicker/v;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/datepicker/v;->Q(J)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/v$a;->i:Lcom/google/android/material/datepicker/s;

    iget-object v0, p0, Lcom/google/android/material/datepicker/v$a;->j:Lcom/google/android/material/datepicker/v;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/v;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/s;->b(Ljava/lang/Object;)V

    return-void
.end method
