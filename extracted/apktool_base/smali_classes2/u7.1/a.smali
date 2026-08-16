.class public Lu7/a;
.super Ls7/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls7/c<",
        "Ls7/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ls7/c;-><init>()V

    new-instance v0, Lv7/a;

    const-string v1, "S_A"

    invoke-direct {v0, v1}, Lv7/a;-><init>(Ljava/lang/String;)V

    invoke-super {p0, v0}, Ls7/c;->a(Ls7/c;)V

    new-instance v0, Lv7/b;

    const-string v1, "S_B"

    invoke-direct {v0, v1}, Lv7/b;-><init>(Ljava/lang/String;)V

    invoke-super {p0, v0}, Ls7/c;->a(Ls7/c;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Ls7/c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900f2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lu7/a$a;

    invoke-direct {v3, p0}, Lu7/a$a;-><init>(Lu7/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lu7/a$b;

    invoke-direct {v1, p0}, Lu7/a$b;-><init>(Lu7/a;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public q()V
    .locals 0

    invoke-super {p0}, Ls7/c;->q()V

    return-void
.end method

.method public y()V
    .locals 0

    invoke-super {p0}, Ls7/c;->y()V

    return-void
.end method
