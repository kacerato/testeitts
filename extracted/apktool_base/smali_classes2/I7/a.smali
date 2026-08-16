.class public LI7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;

.field public b:Landroid/view/LayoutInflater;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userReview",
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, LI7/a;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, LI7/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(LI7/a;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;
    .locals 0

    iget-object p0, p0, LI7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/view/View;)Landroid/view/View;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentView"
        }
    .end annotation

    iget-object v0, p0, LI7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;->e()J

    move-result-wide v2

    const v0, 0x7f090525

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LI7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LI7/a$a;

    invoke-direct {v1, p0}, LI7/a$a;-><init>(LI7/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f09018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LI7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;->b()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/d;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090595

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v7, LL7/b;

    iget-object v1, p0, LI7/a;->c:Landroid/content/Context;

    invoke-direct {v7, v1}, LL7/b;-><init>(Landroid/content/Context;)V

    new-instance v8, LL7/a;

    iget-object v1, p0, LI7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, LI7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;->g()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, LL7/a;-><init>(JLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v8}, LL7/b;->a(LL7/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, LJ7/a$d;

    invoke-direct {v0}, LJ7/a$d;-><init>()V

    iget-object v1, v0, LJ7/a$d;->b:LJ7/a$d$b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v2}, LJ7/a$d$a;->d(II)V

    iget-object v1, v0, LJ7/a$d;->a:LJ7/a$d$c;

    const/16 v2, 0x8

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, LJ7/a$d$a;->d(II)V

    new-instance v1, LJ7/a;

    iget-object v2, p0, LI7/a;->c:Landroid/content/Context;

    new-instance v3, LI7/a$b;

    invoke-direct {v3, p0}, LI7/a$b;-><init>(LI7/a;)V

    invoke-direct {v1, v2, v3, v0}, LJ7/a;-><init>(Landroid/content/Context;LJ7/a$c;LJ7/a$d;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, LJ7/a;->i(Z)V

    iget-object v0, p0, LI7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;->c()I

    move-result v0

    const v2, 0x7f0904ba

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, LJ7/a;->e(ILandroid/widget/LinearLayout;)V

    return-object p1
.end method

.method public c()Landroid/view/View;
    .locals 3

    iget-object v0, p0, LI7/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0113

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, LI7/a;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentReview"
        }
    .end annotation

    invoke-virtual {p0, p1}, LI7/a;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
