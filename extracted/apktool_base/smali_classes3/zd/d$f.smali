.class public Lzd/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd/d$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lzd/d$f;->a:Landroid/view/LayoutInflater;

    .line 4
    iput p2, p0, Lzd/d$f;->b:I

    .line 5
    iput p3, p0, Lzd/d$f;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILzd/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lzd/d$f;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroidx/viewpager/widget/PagerAdapter;)Landroid/view/View;
    .locals 5

    iget v0, p0, Lzd/d$f;->b:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v3, p0, Lzd/d$f;->a:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget v0, p0, Lzd/d$f;->c:I

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    :cond_1
    if-nez v1, :cond_2

    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p1
.end method
