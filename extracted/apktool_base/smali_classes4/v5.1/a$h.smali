.class public Lv5/a$h;
.super Lh7/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic y:Landroid/widget/Button;

.field public final synthetic z:Lv5/a;


# direct methods
.method public constructor <init>(Lv5/a;Landroid/app/Activity;Ln7/e;Ln7/d;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "activity",
            "explorerDataProvider",
            "filter",
            "val$doneButton"
        }
    .end annotation

    iput-object p1, p0, Lv5/a$h;->z:Lv5/a;

    iput-object p5, p0, Lv5/a$h;->y:Landroid/widget/Button;

    invoke-direct {p0, p2, p3, p4}, Lh7/d;-><init>(Landroid/app/Activity;Ln7/e;Ln7/d;)V

    return-void
.end method


# virtual methods
.method public s(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation

    return-void
.end method

.method public t(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation

    return-void
.end method

.method public u(Ljava/io/File;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lv5/a$h;->z:Lv5/a;

    iget-object v0, p0, Lv5/a$h;->y:Landroid/widget/Button;

    invoke-static {p2, p1, v0}, Lv5/a;->v1(Lv5/a;Ljava/io/File;Landroid/widget/Button;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lv5/a$h;->z:Lv5/a;

    const/4 p2, 0x0

    iget-object v0, p0, Lv5/a$h;->y:Landroid/widget/Button;

    invoke-static {p1, p2, v0}, Lv5/a;->v1(Lv5/a;Ljava/io/File;Landroid/widget/Button;)V

    :goto_0
    return-void
.end method

.method public v(Ljava/io/File;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation

    return-void
.end method
