.class public Lw5/c$q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv5/a$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c;->e(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lw5/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$insideProjectFullPath",
            "val$callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$q0;->a:Landroid/content/Context;

    iput-object p2, p0, Lw5/c$q0;->b:Ljava/lang/String;

    iput-object p3, p0, Lw5/c$q0;->c:Lw5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "inProjectPath"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lw5/c$H0;

    iget-object v1, p0, Lw5/c$q0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    const-string v1, "New cubemap name"

    invoke-virtual {v0, v1}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lw5/c$q0;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-static {p1, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_cb"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    iget-object p1, p0, Lw5/c$q0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f11006d

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lw5/c$q0$a;

    invoke-direct {v2, p0, v1, p2}, Lw5/c$q0$a;-><init>(Lw5/c$q0;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    iget-object p1, p0, Lw5/c$q0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110037

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lw5/c$q0$b;

    invoke-direct {p2, p0}, Lw5/c$q0$b;-><init>(Lw5/c$q0;)V

    invoke-virtual {v0, p1, p2}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {v0}, Lw5/c$H0;->h()V

    :cond_0
    return-void
.end method
