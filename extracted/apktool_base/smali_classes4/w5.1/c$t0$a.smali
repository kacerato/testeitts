.class public Lw5/c$t0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c$t0;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lw5/c$t0;


# direct methods
.method public constructor <init>(Lw5/c$t0;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$input",
            "val$terrainName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$t0$a;->d:Lw5/c$t0;

    iput-object p2, p0, Lw5/c$t0$a;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lw5/c$t0$a;->c:Ljava/lang/String;

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

    iget-object p1, p0, Lw5/c$t0$a;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "Invalid resolution"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lw5/c$t0$a;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p2, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    const/high16 v2, 0x44800000    # 1024.0f

    invoke-static {p2, v2}, LNc/b;->v1(Ljava/lang/String;F)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, v2}, LNc/b;->v1(Ljava/lang/String;F)F

    move-result p1

    float-to-int p1, p1

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw5/c$t0$a$a;

    invoke-direct {v1, p0, p2, p1}, Lw5/c$t0$a$a;-><init>(Lw5/c$t0$a;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw5/c$t0$a;->d:Lw5/c$t0;

    iget-object p1, p1, Lw5/c$t0;->c:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object p1, p0, Lw5/c$t0$a;->d:Lw5/c$t0;

    iget-object p1, p1, Lw5/c$t0;->e:Lw5/l;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lw5/l;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lw5/c$t0$a;->d:Lw5/c$t0;

    iget-object p1, p1, Lw5/c$t0;->c:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void
.end method
