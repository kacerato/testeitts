.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$e;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/view/LayoutInflater;

.field public final c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "data",
            "callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;",
            ">;",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->b:Landroid/view/LayoutInflater;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$e;

    return-void
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$e;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$e;

    return-object p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public i(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public j(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-object v0, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->a:Landroid/widget/TextView;

    const-string v1, "Starting..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$d;->a:[I

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const-string v2, "Importing: "

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "%"

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    iget-object v1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->b:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->b:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a:Ljava/lang/String;

    invoke-static {v1}, LT5/b;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    move-result-object v1

    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->thumbnail:Ljava/lang/String;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->thumbnail:Ljava/lang/String;

    invoke-static {v1, v6}, LT5/b;->I(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->images:Ljava/util/List;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v6, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->images:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v1, v6}, LT5/b;->I(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_5
    const v1, 0x7f0701ce

    if-eqz v6, :cond_6

    iget-object v7, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->c:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v6, v1, v1, v8}, LVc/e;->a0(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;)V

    goto :goto_3

    :cond_6
    iget-object v6, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->c:Landroid/widget/ImageView;

    invoke-static {v6, v1}, LVc/e;->U(Landroid/widget/ImageView;I)V

    :goto_3
    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->d:Landroid/view/View;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$c;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->d:Landroid/view/View;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->c()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->d:Landroid/view/View;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$a;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Lb6/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Lb6/a;->b(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0162

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;

    invoke-direct {p2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;Landroid/view/View;)V

    return-object p2
.end method

.method public l(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayDownloads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->i(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->k(Landroid/view/ViewGroup;I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;

    move-result-object p1

    return-object p1
.end method
