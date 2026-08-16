.class public Lp7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/a;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lp7/a;


# direct methods
.method public constructor <init>(Lp7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp7/a$a;->b:Lp7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lp7/a$a;->b:Lp7/a;

    invoke-static {p1}, Lp7/a;->d(Lp7/a;)V

    iget-object p1, p0, Lp7/a$a;->b:Lp7/a;

    invoke-static {p1}, Lp7/a;->e(Lp7/a;)V

    iget-object p1, p0, Lp7/a$a;->b:Lp7/a;

    invoke-static {p1}, Lp7/a;->f(Lp7/a;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lp7/a$a;->b:Lp7/a;

    invoke-static {p1}, Lp7/a;->h(Lp7/a;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lp7/a$a;->b:Lp7/a;

    invoke-static {p1}, Lp7/a;->h(Lp7/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lp7/a$a;->b:Lp7/a;

    invoke-static {p1}, Lp7/a;->i(Lp7/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lp7/a$a;->b:Lp7/a;

    invoke-static {v0}, Lp7/a;->h(Lp7/a;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lp7/a$a;->b:Lp7/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lp7/a;->g(Lp7/a;Z)Z

    :cond_0
    return-void
.end method
