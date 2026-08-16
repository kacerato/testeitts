.class public LBd/b;
.super LAd/b;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String; = "FragmentPagerItem"

.field public static final g:Ljava/lang/String; = "FragmentPagerItem:Position"


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LAd/b;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p3, p0, LBd/b;->d:Ljava/lang/String;

    iput-object p4, p0, LBd/b;->e:Landroid/os/Bundle;

    return-void
.end method

.method public static c(Landroid/os/Bundle;)I
    .locals 1

    invoke-static {p0}, LBd/b;->d(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentPagerItem:Position"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "FragmentPagerItem:Position"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/CharSequence;FLjava/lang/Class;)LBd/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "F",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "LBd/b;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, p2, v0}, LBd/b;->g(Ljava/lang/CharSequence;FLjava/lang/Class;Landroid/os/Bundle;)LBd/b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/CharSequence;FLjava/lang/Class;Landroid/os/Bundle;)LBd/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "F",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "LBd/b;"
        }
    .end annotation

    new-instance v0, LBd/b;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2, p3}, LBd/b;-><init>(Ljava/lang/CharSequence;FLjava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static h(Ljava/lang/CharSequence;Ljava/lang/Class;)LBd/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "LBd/b;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1}, LBd/b;->f(Ljava/lang/CharSequence;FLjava/lang/Class;)LBd/b;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)LBd/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "LBd/b;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1, p2}, LBd/b;->g(Ljava/lang/CharSequence;FLjava/lang/Class;Landroid/os/Bundle;)LBd/b;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "FragmentPagerItem:Position"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public e(Landroid/content/Context;I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, LBd/b;->e:Landroid/os/Bundle;

    invoke-static {v0, p2}, LBd/b;->j(Landroid/os/Bundle;I)V

    iget-object p2, p0, LBd/b;->d:Ljava/lang/String;

    iget-object v0, p0, LBd/b;->e:Landroid/os/Bundle;

    invoke-static {p1, p2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
