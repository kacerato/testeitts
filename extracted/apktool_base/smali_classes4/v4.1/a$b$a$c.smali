.class public Lv4/a$b$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv4/a$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv4/a$b$a;


# direct methods
.method public constructor <init>(Lv4/a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lv4/a$b$a$c;->a:Lv4/a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lv4/a$b$a$c;->a:Lv4/a$b$a;

    iget-object v0, v0, Lv4/a$b$a;->b:Lv4/a$b;

    iget-object v0, v0, Lv4/a$b;->c:Lv4/a;

    invoke-static {v0}, Lv4/a;->g(Lv4/a;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Move back step quantity"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lv4/a$b$a$c;->a:Lv4/a$b$a;

    iget-object v1, v1, Lv4/a$b$a;->b:Lv4/a$b;

    iget-object v1, v1, Lv4/a$b;->c:Lv4/a;

    invoke-static {v1}, Lv4/a;->g(Lv4/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lv4/a$b$a$c;->a:Lv4/a$b$a;

    iget-object v1, v1, Lv4/a$b$a;->b:Lv4/a$b;

    iget-object v1, v1, Lv4/a$b;->c:Lv4/a;

    invoke-static {v1}, Lv4/a;->g(Lv4/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv4/a$b$a$c$a;

    invoke-direct {v2, p0, v0}, Lv4/a$b$a$c$a;-><init>(Lv4/a$b$a$c;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lv4/a$b$a$c;->a:Lv4/a$b$a;

    iget-object v0, v0, Lv4/a$b$a;->b:Lv4/a$b;

    iget-object v0, v0, Lv4/a$b;->c:Lv4/a;

    invoke-static {v0}, Lv4/a;->g(Lv4/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lv4/a$b$a$c$b;

    invoke-direct {v1, p0}, Lv4/a$b$a$c$b;-><init>(Lv4/a$b$a$c;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
