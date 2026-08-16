.class public Lcom/google/android/material/datepicker/z;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/z$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/material/datepicker/z$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/datepicker/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/k<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    return-void
.end method

.method public static synthetic g(Lcom/google/android/material/datepicker/z;)Lcom/google/android/material/datepicker/k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/k;->r()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->n()I

    move-result v0

    return v0
.end method

.method public final h(I)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/datepicker/z$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/z$a;-><init>(Lcom/google/android/material/datepicker/z;I)V

    return-object v0
.end method

.method public i(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/k;->r()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->m()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/p;->d:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public j(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/k;->r()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->m()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/p;->d:I

    add-int/2addr v0, p1

    return v0
.end method

.method public k(Lcom/google/android/material/datepicker/z$b;I)V
    .locals 7
    .param p1    # Lcom/google/android/material/datepicker/z$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/z;->j(I)I

    move-result p2

    iget-object v0, p1, Lcom/google/android/material/datepicker/z$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lw1/a$m;->B0:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/material/datepicker/z$b;->a:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/google/android/material/datepicker/z$b;->a:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/k;->s()Lcom/google/android/material/datepicker/c;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/datepicker/y;->t()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, v0, Lcom/google/android/material/datepicker/c;->f:Lcom/google/android/material/datepicker/b;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/material/datepicker/c;->d:Lcom/google/android/material/datepicker/b;

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    invoke-virtual {v4}, Lcom/google/android/material/datepicker/k;->g()Lcom/google/android/material/datepicker/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/material/datepicker/f;->L()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p2, :cond_1

    iget-object v3, v0, Lcom/google/android/material/datepicker/c;->e:Lcom/google/android/material/datepicker/b;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/google/android/material/datepicker/z$b;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Lcom/google/android/material/datepicker/b;->f(Landroid/widget/TextView;)V

    iget-object p1, p1, Lcom/google/android/material/datepicker/z$b;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/z;->h(I)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/z$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lw1/a$k;->v0:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/google/android/material/datepicker/z$b;

    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/z$b;-><init>(Landroid/widget/TextView;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/material/datepicker/z$b;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/z;->k(Lcom/google/android/material/datepicker/z$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/z;->l(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/z$b;

    move-result-object p1

    return-object p1
.end method
