.class public Lw5/c$H0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c$H0;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/c$H0;


# direct methods
.method public constructor <init>(Lw5/c$H0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$H0$a;->a:Lw5/c$H0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Lw5/c$H0$a;->a:Lw5/c$H0;

    invoke-static {v0}, Lw5/c$H0;->a(Lw5/c$H0;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw5/c$H0$a;->a:Lw5/c$H0;

    invoke-static {v0}, Lw5/c$H0;->a(Lw5/c$H0;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lw5/c$H0$a;->a:Lw5/c$H0;

    invoke-static {p1}, Lw5/c$H0;->b(Lw5/c$H0;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lw5/c$H0$a;->a:Lw5/c$H0;

    invoke-static {p1}, Lw5/c$H0;->b(Lw5/c$H0;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    new-instance v0, Lw5/c$H0$a$a;

    invoke-direct {v0, p0}, Lw5/c$H0$a$a;-><init>(Lw5/c$H0$a;)V

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void
.end method

.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lw5/c$H0$a;->a:Lw5/c$H0;

    invoke-static {v0}, Lw5/c$H0;->c(Lw5/c$H0;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw5/c$H0$a;->a:Lw5/c$H0;

    invoke-static {v0}, Lw5/c$H0;->c(Lw5/c$H0;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    new-instance v1, Lw5/c$H0$a$b;

    invoke-direct {v1, p0}, Lw5/c$H0$a$b;-><init>(Lw5/c$H0$a;)V

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
