.class public final LOd/b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements LOd/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOd/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "LOd/b$a;",
        ">;",
        "LOd/k<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSpinnerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpinnerAdapter.kt\ncom/skydoves/powerspinner/DefaultSpinnerAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n1#2:97\n*E\n"
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
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
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

    iput v0, p0, LOd/b;->a:I

    iput-object p1, p0, LOd/b;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LOd/b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, LOd/b;->a:I

    return-void
.end method

.method public b(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LOd/b;->getIndex()I

    move-result v1

    invoke-virtual {p0, p1}, LOd/b;->a(I)V

    invoke-virtual {p0}, LOd/b;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v2

    iget-object v3, p0, LOd/b;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1, v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->q(ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, LOd/b;->d()LOd/g;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x0

    if-eq v4, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_2

    iget-object v0, p0, LOd/b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, LOd/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v5, p1, v0}, LOd/g;->a(ILjava/lang/Object;ILjava/lang/Object;)V

    :cond_3
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
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LOd/b;->c:LOd/g;

    return-void
.end method

.method public d()LOd/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOd/g<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LOd/b;->c:LOd/g;

    return-object v0
.end method

.method public e()Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LOd/b;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

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
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LOd/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LOd/b;->d:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public g(LOd/b$a;I)V
    .locals 1
    .param p1    # LOd/b$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LOd/b;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0}, LOd/b;->e()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, LOd/b$a;->a(Ljava/lang/CharSequence;Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    return-void
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, LOd/b;->a:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, LOd/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)LOd/b$a;
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

    new-instance p2, LOd/b$a;

    invoke-direct {p2, p1}, LOd/b$a;-><init>(LPd/a;)V

    invoke-virtual {p1}, LPd/a;->b()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    new-instance v1, LOd/b$b;

    invoke-direct {v1, p2, p0, p1}, LOd/b$b;-><init>(LOd/b$a;LOd/b;LPd/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, LOd/b$a;

    invoke-virtual {p0, p1, p2}, LOd/b;->g(LOd/b$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, LOd/b;->h(Landroid/view/ViewGroup;I)LOd/b$a;

    move-result-object p1

    return-object p1
.end method
