.class public final LOd/d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements LOd/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOd/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "LOd/d$a;",
        ">;",
        "LOd/k<",
        "LOd/e;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconSpinnerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconSpinnerAdapter.kt\ncom/skydoves/powerspinner/IconSpinnerAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1#2:136\n*E\n"
.end annotation


# instance fields
.field public a:I

.field public final b:Lcom/skydoves/powerspinner/PowerSpinnerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:LOd/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOd/g<",
            "LOd/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOd/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 1
    .param p1    # Lcom/skydoves/powerspinner/PowerSpinnerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "powerSpinnerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-virtual {p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSelectedIndex()I

    move-result v0

    iput v0, p0, LOd/d;->a:I

    iput-object p1, p0, LOd/d;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 p1, 0xc

    iput p1, p0, LOd/d;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOd/d;->e:Ljava/util/List;

    invoke-virtual {p0}, LOd/d;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, LOd/d;->a:I

    return-void
.end method

.method public b(I)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LOd/d;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOd/e;

    invoke-virtual {p0}, LOd/d;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v2

    invoke-virtual {v1}, LOd/e;->o()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LOd/d;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {v1}, LOd/e;->p()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0}, LOd/d;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, LOd/e;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    invoke-virtual {v1}, LOd/e;->n()I

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_6

    const/16 v5, 0x50

    if-eq v4, v5, :cond_5

    const v5, 0x800003

    if-eq v4, v5, :cond_4

    const v5, 0x800005

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, LOd/d;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v4

    invoke-virtual {v4, v3, v3, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, LOd/d;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, LOd/d;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v4

    invoke-virtual {v4, v3, v3, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, LOd/d;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {p0}, LOd/d;->getIndex()I

    move-result v2

    invoke-virtual {p0, p1}, LOd/d;->a(I)V

    invoke-virtual {p0}, LOd/d;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v4

    invoke-virtual {v1}, LOd/e;->q()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/skydoves/powerspinner/PowerSpinnerView;->q(ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, LOd/d;->d()LOd/g;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eq v6, v0, :cond_7

    goto :goto_3

    :cond_7
    move-object v5, v3

    :goto_3
    if-eqz v5, :cond_8

    iget-object v0, p0, LOd/d;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LOd/e;

    :cond_8
    invoke-interface {v4, v2, v3, p1, v1}, LOd/g;->a(ILjava/lang/Object;ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public c(LOd/g;)V
    .locals 0
    .param p1    # LOd/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOd/g<",
            "LOd/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LOd/d;->c:LOd/g;

    return-void
.end method

.method public d()LOd/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOd/g<",
            "LOd/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LOd/d;->c:LOd/g;

    return-object v0
.end method

.method public e()Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LOd/d;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    return-object v0
.end method

.method public f(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOd/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LOd/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LOd/d;->e:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public g(LOd/d$a;I)V
    .locals 1
    .param p1    # LOd/d$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LOd/d;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LOd/e;

    invoke-virtual {p0}, LOd/d;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, LOd/d$a;->a(LOd/e;Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    return-void
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, LOd/d;->a:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, LOd/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)LOd/d$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, LPd/a;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)LPd/a;

    move-result-object p1

    const-string p2, "ItemDefaultPowerSpinnerL\u2026nt,\n        false\n      )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, LOd/d$a;

    invoke-direct {p2, p1}, LOd/d$a;-><init>(LPd/a;)V

    invoke-virtual {p1}, LPd/a;->b()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    new-instance v1, LOd/d$b;

    invoke-direct {v1, p2, p0, p1}, LOd/d$b;-><init>(LOd/d$a;LOd/d;LPd/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, LOd/d$a;

    invoke-virtual {p0, p1, p2}, LOd/d;->g(LOd/d$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, LOd/d;->h(Landroid/view/ViewGroup;I)LOd/d$a;

    move-result-object p1

    return-object p1
.end method
