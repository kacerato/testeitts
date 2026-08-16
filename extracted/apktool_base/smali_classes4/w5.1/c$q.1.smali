.class public Lw5/c$q;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/y$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c;->J(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq7/a;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lw5/l;


# direct methods
.method public constructor <init>(Lq7/a;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$loadingBar",
            "val$context",
            "val$insideProjectFullPath",
            "val$callbacks"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$q;->a:Lq7/a;

    iput-object p2, p0, Lw5/c$q;->b:Landroid/content/Context;

    iput-object p3, p0, Lw5/c$q;->c:Ljava/lang/String;

    iput-object p4, p0, Lw5/c$q;->d:Lw5/l;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/y$k;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    iget-object p1, p0, Lw5/c$q;->a:Lq7/a;

    invoke-virtual {p1}, Lq7/a;->p1()V

    new-instance p1, Lw5/c$H0;

    iget-object v0, p0, Lw5/c$q;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lw5/c$q;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lw5/c$q;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    const-string v1, "World"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    iget-object v1, p0, Lw5/c$q;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$q$a;

    invoke-direct {v2, p0, v0}, Lw5/c$q$a;-><init>(Lw5/c$q;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1, v2}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    iget-object v0, p0, Lw5/c$q;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lw5/c$q$b;

    invoke-direct {v1, p0}, Lw5/c$q$b;-><init>(Lw5/c$q;)V

    invoke-virtual {p1, v0, v1}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p1}, Lw5/c$H0;->h()V

    return-void
.end method
