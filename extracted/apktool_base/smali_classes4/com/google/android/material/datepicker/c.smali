.class public final Lcom/google/android/material/datepicker/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/datepicker/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/google/android/material/datepicker/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/google/android/material/datepicker/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/google/android/material/datepicker/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/google/android/material/datepicker/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/google/android/material/datepicker/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Lcom/google/android/material/datepicker/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lw1/a$c;->aa:I

    const-class v1, Lcom/google/android/material/datepicker/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, LX1/b;->g(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    sget-object v1, Lw1/a$o;->fl:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lw1/a$o;->jl:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/b;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/datepicker/b;

    sget v1, Lw1/a$o;->hl:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/b;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/c;->g:Lcom/google/android/material/datepicker/b;

    sget v1, Lw1/a$o;->il:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/b;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/c;->b:Lcom/google/android/material/datepicker/b;

    sget v1, Lw1/a$o;->kl:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/b;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/c;->c:Lcom/google/android/material/datepicker/b;

    sget v1, Lw1/a$o;->ml:I

    invoke-static {p1, v0, v1}, LX1/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sget v3, Lw1/a$o;->ol:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/b;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/b;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/c;->d:Lcom/google/android/material/datepicker/b;

    sget v3, Lw1/a$o;->nl:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/b;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/b;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/c;->e:Lcom/google/android/material/datepicker/b;

    sget v3, Lw1/a$o;->pl:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/android/material/datepicker/b;->a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->f:Lcom/google/android/material/datepicker/b;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
