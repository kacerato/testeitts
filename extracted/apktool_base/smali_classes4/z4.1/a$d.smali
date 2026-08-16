.class public Lz4/a$d;
.super Lz4/a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/view/View;


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

    invoke-direct {p0, p1}, Lz4/a$f;-><init>(Landroid/view/View;)V

    const v0, 0x7f090544

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz4/a$d;->a:Landroid/widget/TextView;

    const v0, 0x7f090536

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lz4/a$d;->b:Landroid/widget/ImageView;

    const v0, 0x7f09018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz4/a$d;->c:Landroid/widget/TextView;

    const v0, 0x7f0901a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz4/a$d;->d:Landroid/widget/TextView;

    const v0, 0x7f090303

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lz4/a$d;->e:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lz4/a$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lz4/a$d;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic b(Lz4/a$d;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lz4/a$d;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic c(Lz4/a$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lz4/a$d;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic d(Lz4/a$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lz4/a$d;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic e(Lz4/a$d;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lz4/a$d;->e:Landroid/view/View;

    return-object p0
.end method
