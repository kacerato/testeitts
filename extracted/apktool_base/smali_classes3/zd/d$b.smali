.class public Lzd/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lzd/d;


# direct methods
.method public constructor <init>(Lzd/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzd/d$b;->b:Lzd/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lzd/d;Lzd/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lzd/d$b;-><init>(Lzd/d;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzd/d$b;->b:Lzd/d;

    iget-object v1, v1, Lzd/d;->b:Lzd/e;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lzd/d$b;->b:Lzd/d;

    iget-object v1, v1, Lzd/d;->b:Lzd/e;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lzd/d$b;->b:Lzd/d;

    invoke-static {p1}, Lzd/d;->c(Lzd/d;)Lzd/d$e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzd/d$b;->b:Lzd/d;

    invoke-static {p1}, Lzd/d;->c(Lzd/d;)Lzd/d$e;

    move-result-object p1

    invoke-interface {p1, v0}, Lzd/d$e;->a(I)V

    :cond_0
    iget-object p1, p0, Lzd/d$b;->b:Lzd/d;

    invoke-static {p1}, Lzd/d;->d(Lzd/d;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
