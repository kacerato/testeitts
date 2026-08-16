.class public LR7/a;
.super LR7/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "@@AD@@"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LR7/b;-><init>(Ljava/lang/String;LF7/j;)V

    return-void
.end method


# virtual methods
.method public A(Landroid/content/Context;LT7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "viewHolder"
        }
    .end annotation

    return-void
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)LT7/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance p1, LT7/a;

    const v0, 0x7f0c00b5

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, LT7/a;-><init>(Landroid/view/View;)V

    return-object p1
.end method
