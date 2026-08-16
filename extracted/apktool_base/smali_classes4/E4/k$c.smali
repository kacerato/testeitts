.class public LE4/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE4/k;->t1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le7/a$a<",
        "Le8/c;",
        "LE4/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LE4/k;


# direct methods
.method public constructor <init>(LE4/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LE4/k$c;->a:LE4/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(LE4/k$c;Le8/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LE4/k$c;->e(Le8/c;Landroid/view/View;)V

    return-void
.end method

.method private synthetic e(Le8/c;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, LE4/k$c;->a:LE4/k;

    invoke-static {p2, p1}, LE4/k;->r1(LE4/k;Le8/c;)V

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
            "officialClass",
            "position"
        }
    .end annotation

    check-cast p1, LE4/g;

    check-cast p2, Le8/c;

    invoke-virtual {p0, p1, p2, p3}, LE4/k$c;->d(LE4/g;Le8/c;I)V

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

    invoke-virtual {p0, p1, p2}, LE4/k$c;->f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LE4/g;

    move-result-object p1

    return-object p1
.end method

.method public d(LE4/g;Le8/c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "officialClass",
            "position"
        }
    .end annotation

    iget-object p3, p1, LE4/g;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, LE4/g;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, LE4/k$c;->a:LE4/k;

    invoke-virtual {p2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, v0}, LE4/k;->q1(LE4/k;LE4/g;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, LE4/l;

    invoke-direct {p3, p0, p2}, LE4/l;-><init>(LE4/k$c;Le8/c;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
