.class public LR7/d;
.super LR7/b;
.source "SourceFile"


# instance fields
.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "path"
        }
    .end annotation

    new-instance v0, LU7/b;

    invoke-direct {v0}, LU7/b;-><init>()V

    invoke-direct {p0, p2, v0}, LR7/b;-><init>(Ljava/lang/String;LF7/j;)V

    iput-object p1, p0, LR7/d;->o:Ljava/lang/String;

    iput-object p2, p0, LF7/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LR7/d;->o:Ljava/lang/String;

    return-object v0
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

    const v0, 0x7f0c007c

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, LT7/a;-><init>(Landroid/view/View;)V

    return-object p1
.end method
