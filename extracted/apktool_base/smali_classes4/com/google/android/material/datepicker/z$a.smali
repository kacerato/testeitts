.class public Lcom/google/android/material/datepicker/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/z;->h(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/datepicker/z;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/z;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/z$a;->c:Lcom/google/android/material/datepicker/z;

    iput p2, p0, Lcom/google/android/material/datepicker/z$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/google/android/material/datepicker/z$a;->b:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/z$a;->c:Lcom/google/android/material/datepicker/z;

    invoke-static {v0}, Lcom/google/android/material/datepicker/z;->g(Lcom/google/android/material/datepicker/z;)Lcom/google/android/material/datepicker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/k;->t()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/p;->c:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/p;->d(II)Lcom/google/android/material/datepicker/p;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/z$a;->c:Lcom/google/android/material/datepicker/z;

    invoke-static {v0}, Lcom/google/android/material/datepicker/z;->g(Lcom/google/android/material/datepicker/z;)Lcom/google/android/material/datepicker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/k;->r()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/a;->f(Lcom/google/android/material/datepicker/p;)Lcom/google/android/material/datepicker/p;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/z$a;->c:Lcom/google/android/material/datepicker/z;

    invoke-static {v0}, Lcom/google/android/material/datepicker/z;->g(Lcom/google/android/material/datepicker/z;)Lcom/google/android/material/datepicker/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/k;->y(Lcom/google/android/material/datepicker/p;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/z$a;->c:Lcom/google/android/material/datepicker/z;

    invoke-static {p1}, Lcom/google/android/material/datepicker/z;->g(Lcom/google/android/material/datepicker/z;)Lcom/google/android/material/datepicker/k;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/datepicker/k$k;->DAY:Lcom/google/android/material/datepicker/k$k;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/k;->z(Lcom/google/android/material/datepicker/k$k;)V

    return-void
.end method
