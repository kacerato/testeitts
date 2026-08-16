.class public LE4/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE4/d;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le7/a$a<",
        "Ljava/lang/String;",
        "LE4/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LE4/d;


# direct methods
.method public constructor <init>(LE4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LE4/d$e;->a:LE4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(LE4/d$e;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LE4/d$e;->e(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le7/b;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "category",
            "position"
        }
    .end annotation

    check-cast p1, LE4/g;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, LE4/d$e;->d(LE4/g;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LE4/d$e;->f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LE4/g;

    move-result-object p1

    return-object p1
.end method

.method public d(LE4/g;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "category",
            "position"
        }
    .end annotation

    iget-object p3, p0, LE4/d$e;->a:LE4/d;

    invoke-static {p3}, LE4/d;->v1(LE4/d;)Ljava/util/Map;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p1, LE4/g;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, LE4/g;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " classes)"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, LE4/d$e;->a:LE4/d;

    invoke-static {p3, p1, p2}, LE4/d;->t1(LE4/d;LE4/g;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, LE4/f;

    invoke-direct {p3, p0, p2}, LE4/f;-><init>(LE4/d$e;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic e(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, LE4/d$e;->a:LE4/d;

    invoke-static {p2, p1}, LE4/d;->w1(LE4/d;Ljava/lang/String;)V

    return-void
.end method

.method public f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LE4/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    const v0, 0x7f0c0049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, LE4/g;

    invoke-direct {p2, p1}, LE4/g;-><init>(Landroid/view/View;)V

    return-object p2
.end method
