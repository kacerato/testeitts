.class public abstract Lcom/google/android/material/datepicker/e;
.super Lcom/google/android/material/internal/r;
.source "SourceFile"


# static fields
.field public static final h:I = 0x3e8


# instance fields
.field public final b:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Ljava/text/DateFormat;

.field public final d:Lcom/google/android/material/datepicker/a;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/a;)V
    .locals 0
    .param p3    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/material/internal/r;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/datepicker/e;->c:Ljava/text/DateFormat;

    iput-object p3, p0, Lcom/google/android/material/datepicker/e;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p4, p0, Lcom/google/android/material/datepicker/e;->d:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lw1/a$m;->C0:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/datepicker/e;->e:Ljava/lang/String;

    new-instance p2, Lcom/google/android/material/datepicker/e$a;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/e$a;-><init>(Lcom/google/android/material/datepicker/e;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/material/datepicker/e;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/datepicker/e;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/e;->b:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/material/datepicker/e;)Ljava/text/DateFormat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/e;->c:Ljava/text/DateFormat;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/material/datepicker/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/e;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final d(J)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/e$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/datepicker/e$b;-><init>(Lcom/google/android/material/datepicker/e;J)V

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public abstract f(Ljava/lang/Long;)V
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public g(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/google/android/material/datepicker/e;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p3, p0, Lcom/google/android/material/datepicker/e;->f:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/google/android/material/datepicker/e;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p3, p0, Lcom/google/android/material/datepicker/e;->g:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/google/android/material/datepicker/e;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/Long;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/material/datepicker/e;->c:Ljava/text/DateFormat;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/datepicker/e;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object p4, p0, Lcom/google/android/material/datepicker/e;->d:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p4}, Lcom/google/android/material/datepicker/a;->g()Lcom/google/android/material/datepicker/a$c;

    move-result-object p4

    invoke-interface {p4, p2, p3}, Lcom/google/android/material/datepicker/a$c;->a(J)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/google/android/material/datepicker/e;->d:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p4, p2, p3}, Lcom/google/android/material/datepicker/a;->p(J)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/Long;)V

    return-void

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/datepicker/e;->d(J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/e;->g:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/google/android/material/datepicker/e;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/datepicker/e;->g(Landroid/view/View;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/e;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p2, p0, Lcom/google/android/material/datepicker/e;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/e;->g(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
