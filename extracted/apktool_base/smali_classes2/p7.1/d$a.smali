.class public Lp7/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/d;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lp7/d;


# direct methods
.method public constructor <init>(Lp7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->d(Lp7/d;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lp7/d;->e(Lp7/d;Z)Z

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->f(Lp7/d;)V

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->g(Lp7/d;)V

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->d(Lp7/d;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->h(Lp7/d;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->j(Lp7/d;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->j(Lp7/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->k(Lp7/d;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {v2}, Lp7/d;->j(Lp7/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1, v1}, Lp7/d;->i(Lp7/d;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->l(Lp7/d;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->n(Lp7/d;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->n(Lp7/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1}, Lp7/d;->k(Lp7/d;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {v2}, Lp7/d;->n(Lp7/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lp7/d$a;->b:Lp7/d;

    invoke-static {p1, v1}, Lp7/d;->m(Lp7/d;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
