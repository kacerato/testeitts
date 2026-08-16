.class public Lw5/c$h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c$h0;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lw5/c$h0;


# direct methods
.method public constructor <init>(Lw5/c$h0;Landroid/widget/EditText;Ljava/lang/String;)V
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

    iput-object p1, p0, Lw5/c$h0$a;->d:Lw5/c$h0;

    iput-object p2, p0, Lw5/c$h0$a;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lw5/c$h0$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
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

    iget-object p1, p0, Lw5/c$h0$a;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x44800000    # 1024.0f

    invoke-static {p1, p2}, LNc/b;->v1(Ljava/lang/String;F)F

    move-result p1

    float-to-int p1, p1

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    if-lez p1, :cond_1

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lw5/c$h0$a$a;

    invoke-direct {v0, p0, p1}, Lw5/c$h0$a$a;-><init>(Lw5/c$h0$a;I)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lw5/c$h0$a;->d:Lw5/c$h0;

    iget-object p1, p1, Lw5/c$h0;->c:Landroid/content/Context;

    const-string p2, "Invalid resolution"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object p1, p0, Lw5/c$h0$a;->d:Lw5/c$h0;

    iget-object p1, p1, Lw5/c$h0;->f:Lw5/l;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lw5/l;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
