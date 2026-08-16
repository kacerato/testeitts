.class public Lw6/a$c;
.super Lw6/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/LinearLayout;

.field public final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-direct {p0, p1}, Lw6/a$d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lw6/a$c;->a:Landroid/view/View;

    const v0, 0x7f0900cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lw6/a$c;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f090544

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lw6/a$c;->b:Landroid/widget/TextView;

    const v0, 0x7f090536

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lw6/a$c;->c:Landroid/widget/ImageView;

    const v0, 0x7f0901a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lw6/a$c;->e:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lw6/a$c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lw6/a$c;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic b(Lw6/a$c;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lw6/a$c;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic c(Lw6/a$c;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lw6/a$c;->d:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic d(Lw6/a$c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lw6/a$c;->a:Landroid/view/View;

    return-object p0
.end method
