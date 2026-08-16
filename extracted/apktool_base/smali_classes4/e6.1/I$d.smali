.class public final Le6/I$d;
.super Le7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le6/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Le7/b;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Le6/I$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le6/I$d;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Le6/I$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Le6/I$d;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic d(Le6/I$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Le6/I$d;->c:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    const v0, 0x7f090434

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le6/I$d;->b:Landroid/widget/TextView;

    const v0, 0x7f090438

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le6/I$d;->c:Landroid/widget/TextView;

    return-void
.end method
