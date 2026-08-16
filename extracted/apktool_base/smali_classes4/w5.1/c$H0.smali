.class public Lw5/c$H0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "H0"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/content/DialogInterface$OnClickListener;

.field public e:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/c$H0;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lw5/c$H0;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lw5/c$H0;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic b(Lw5/c$H0;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lw5/c$H0;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public static synthetic c(Lw5/c$H0;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lw5/c$H0;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "listener"
        }
    .end annotation

    iput-object p2, p0, Lw5/c$H0;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lw5/c$H0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "listener"
        }
    .end annotation

    iput-object p2, p0, Lw5/c$H0;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)Lw5/c$H0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$H0;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public g(Landroid/widget/EditText;)Lw5/c$H0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$H0;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lw5/c$H0;->c:Landroid/widget/EditText;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw5/c$H0;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lw5/c$H0;->b:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Lw5/c$H0$a;

    invoke-direct {v2, p0}, Lw5/c$H0$a;-><init>(Lw5/c$H0;)V

    invoke-static {v1, v0, v2}, LZ6/f;->x1(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V

    return-void
.end method
