.class public Lw5/c$t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c;->X(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lw5/l;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lw5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$input",
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

    iput-object p1, p0, Lw5/c$t0;->b:Landroid/widget/EditText;

    iput-object p2, p0, Lw5/c$t0;->c:Landroid/content/Context;

    iput-object p3, p0, Lw5/c$t0;->d:Ljava/lang/String;

    iput-object p4, p0, Lw5/c$t0;->e:Lw5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lw5/c$t0;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".ivo"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lw5/c$t0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lw5/c$t0;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lw5/c$H0;

    iget-object v0, p0, Lw5/c$t0;->c:Landroid/content/Context;

    invoke-direct {p2, v0}, Lw5/c$H0;-><init>(Landroid/content/Context;)V

    new-instance v0, Lbd/a;

    const-string v1, "Resolution"

    const-string v2, "Resolu\u00e7\u00e3o"

    invoke-direct {v0, v1, v2}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lw5/c$H0;->f(Ljava/lang/CharSequence;)Lw5/c$H0;

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lw5/c$t0;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    const-string v1, "1024x720"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Lw5/c$H0;->g(Landroid/widget/EditText;)Lw5/c$H0;

    iget-object v1, p0, Lw5/c$t0;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw5/c$t0$a;

    invoke-direct {v2, p0, v0, p1}, Lw5/c$t0$a;-><init>(Lw5/c$t0;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lw5/c$H0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    iget-object p1, p0, Lw5/c$t0;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110037

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lw5/c$t0$b;

    invoke-direct {v0, p0}, Lw5/c$t0$b;-><init>(Lw5/c$t0;)V

    invoke-virtual {p2, p1, v0}, Lw5/c$H0;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;

    invoke-virtual {p2}, Lw5/c$H0;->h()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw5/c$t0;->c:Landroid/content/Context;

    const-string p2, "Texture already exists"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
