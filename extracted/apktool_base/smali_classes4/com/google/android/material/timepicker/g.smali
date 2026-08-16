.class public Lcom/google/android/material/timepicker/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$d;
.implements Lcom/google/android/material/timepicker/TimePickerView$g;
.implements Lcom/google/android/material/timepicker/TimePickerView$f;
.implements Lcom/google/android/material/timepicker/ClockHandView$c;
.implements Lcom/google/android/material/timepicker/i;


# static fields
.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;

.field public static final j:I = 0x1e

.field public static final k:I = 0x6


# instance fields
.field public b:Lcom/google/android/material/timepicker/TimePickerView;

.field public c:Lcom/google/android/material/timepicker/f;

.field public d:F

.field public e:F

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v10, "10"

    const-string v11, "11"

    const-string v0, "12"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/g;->g:[Ljava/lang/String;

    const-string v11, "20"

    const-string v12, "22"

    const-string v1, "00"

    const-string v2, "2"

    const-string v3, "4"

    const-string v4, "6"

    const-string v5, "8"

    const-string v6, "10"

    const-string v7, "12"

    const-string v8, "14"

    const-string v9, "16"

    const-string v10, "18"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/g;->h:[Ljava/lang/String;

    const-string v11, "50"

    const-string v12, "55"

    const-string v1, "00"

    const-string v2, "5"

    const-string v3, "10"

    const-string v4, "15"

    const-string v5, "20"

    const-string v6, "25"

    const-string v7, "30"

    const-string v8, "35"

    const-string v9, "40"

    const-string v10, "45"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/g;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/g;->f:Z

    iput-object p1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    iput-object p2, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->initialize()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/f;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->g()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/timepicker/g;->e:F

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget v1, v0, Lcom/google/android/material/timepicker/f;->f:I

    mul-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/timepicker/g;->d:F

    iget v0, v0, Lcom/google/android/material/timepicker/f;->g:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/timepicker/g;->j(IZ)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->k()V

    return-void
.end method

.method public b(FZ)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/g;->f:Z

    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget v2, v1, Lcom/google/android/material/timepicker/f;->f:I

    iget v3, v1, Lcom/google/android/material/timepicker/f;->e:I

    iget v1, v1, Lcom/google/android/material/timepicker/f;->g:I

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    iget-object p1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    iget p2, p0, Lcom/google/android/material/timepicker/g;->e:F

    invoke-virtual {p1, p2, v5}, Lcom/google/android/material/timepicker/TimePickerView;->k(FZ)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/g;->j(IZ)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-nez p2, :cond_1

    add-int/lit8 p1, p1, 0xf

    div-int/lit8 p1, p1, 0x1e

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    mul-int/lit8 p1, p1, 0x5

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/f;->l(I)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget p1, p1, Lcom/google/android/material/timepicker/f;->f:I

    mul-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/timepicker/g;->d:F

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    iget v0, p0, Lcom/google/android/material/timepicker/g;->d:F

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/timepicker/TimePickerView;->k(FZ)V

    :cond_2
    :goto_0
    iput-boolean v5, p0, Lcom/google/android/material/timepicker/g;->f:Z

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->k()V

    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/timepicker/g;->i(II)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/f;->m(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/g;->j(IZ)V

    return-void
.end method

.method public f(FZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/timepicker/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget v1, v0, Lcom/google/android/material/timepicker/f;->e:I

    iget v0, v0, Lcom/google/android/material/timepicker/f;->f:I

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v2, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget v3, v2, Lcom/google/android/material/timepicker/f;->g:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    add-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x6

    invoke-virtual {v2, p1}, Lcom/google/android/material/timepicker/f;->l(I)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget p1, p1, Lcom/google/android/material/timepicker/f;->f:I

    mul-int/lit8 p1, p1, 0x6

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Lcom/google/android/material/timepicker/g;->d:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->g()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    add-int/2addr p1, v2

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->g()I

    move-result v2

    div-int/2addr p1, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/timepicker/f;->h(I)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    invoke-virtual {p1}, Lcom/google/android/material/timepicker/f;->d()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->g()I

    move-result v2

    mul-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/timepicker/g;->e:F

    :goto_0
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->k()V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/timepicker/g;->i(II)V

    :cond_2
    return-void
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget v0, v0, Lcom/google/android/material/timepicker/f;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    return v0
.end method

.method public final h()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget v0, v0, Lcom/google/android/material/timepicker/f;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/material/timepicker/g;->h:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/timepicker/g;->g:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final i(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget v1, v0, Lcom/google/android/material/timepicker/f;->f:I

    if-ne v1, p2, :cond_0

    iget p2, v0, Lcom/google/android/material/timepicker/f;->e:I

    if-eq p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget v0, v0, Lcom/google/android/material/timepicker/f;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerView;->t()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->i(Lcom/google/android/material/timepicker/ClockHandView$d;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->q(Lcom/google/android/material/timepicker/TimePickerView$g;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->p(Lcom/google/android/material/timepicker/TimePickerView$f;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->n(Lcom/google/android/material/timepicker/ClockHandView$c;)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->l()V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->a()V

    return-void
.end method

.method public j(IZ)V
    .locals 4

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->j(Z)V

    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iput p1, v1, Lcom/google/android/material/timepicker/f;->g:I

    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/android/material/timepicker/g;->i:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/g;->h()[Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_2

    sget v3, Lw1/a$m;->V:I

    goto :goto_2

    :cond_2
    sget v3, Lw1/a$m;->T:I

    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView;->c([Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/timepicker/g;->d:F

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/google/android/material/timepicker/g;->e:F

    :goto_3
    invoke-virtual {v1, v0, p2}, Lcom/google/android/material/timepicker/TimePickerView;->k(FZ)V

    iget-object p2, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {p2, p1}, Lcom/google/android/material/timepicker/TimePickerView;->a(I)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance p2, Lcom/google/android/material/timepicker/a;

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lw1/a$m;->S:I

    invoke-direct {p2, v0, v1}, Lcom/google/android/material/timepicker/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/timepicker/TimePickerView;->m(Landroidx/core/view/AccessibilityDelegateCompat;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance p2, Lcom/google/android/material/timepicker/a;

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lw1/a$m;->U:I

    invoke-direct {p2, v0, v1}, Lcom/google/android/material/timepicker/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/timepicker/TimePickerView;->l(Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget v2, v1, Lcom/google/android/material/timepicker/f;->h:I

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/f;->d()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/timepicker/g;->c:Lcom/google/android/material/timepicker/f;

    iget v3, v3, Lcom/google/android/material/timepicker/f;->f:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/material/timepicker/TimePickerView;->b(III)V

    return-void
.end method

.method public final l()V
    .locals 2

    sget-object v0, Lcom/google/android/material/timepicker/g;->g:[Ljava/lang/String;

    const-string v1, "%d"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/timepicker/g;->m([Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/material/timepicker/g;->h:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/timepicker/g;->m([Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/material/timepicker/g;->i:[Ljava/lang/String;

    const-string v1, "%02d"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/timepicker/g;->m([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-static {v1, v2, p2}, Lcom/google/android/material/timepicker/f;->c(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/g;->b:Lcom/google/android/material/timepicker/TimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
