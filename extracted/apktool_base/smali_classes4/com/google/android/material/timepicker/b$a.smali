.class public Lcom/google/android/material/timepicker/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/timepicker/b;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/b$a;->a:Lcom/google/android/material/timepicker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/b$a;->a:Lcom/google/android/material/timepicker/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/timepicker/b;->h(Lcom/google/android/material/timepicker/b;I)I

    iget-object v0, p0, Lcom/google/android/material/timepicker/b$a;->a:Lcom/google/android/material/timepicker/b;

    invoke-static {v0}, Lcom/google/android/material/timepicker/b;->i(Lcom/google/android/material/timepicker/b;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/timepicker/b;->j(Lcom/google/android/material/timepicker/b;Lcom/google/android/material/button/MaterialButton;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/b$a;->a:Lcom/google/android/material/timepicker/b;

    invoke-static {v0}, Lcom/google/android/material/timepicker/b;->k(Lcom/google/android/material/timepicker/b;)Lcom/google/android/material/timepicker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/k;->h()V

    return-void
.end method
