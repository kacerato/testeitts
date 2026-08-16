.class public abstract LYc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;LYc/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "formatAllowed",
            "eventListener"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, LYc/c$a;

    invoke-direct {v0, p1}, LYc/c$a;-><init>(LYc/g;)V

    invoke-static {p0, v0}, Lv5/a;->x1(Ljava/lang/String;Lv5/a$i;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;LYc/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pathExample",
            "activity",
            "eventListener"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, LYc/c$b;

    invoke-direct {v0, p2, p1, p0}, LYc/c$b;-><init>(LYc/g;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1, v0}, LXc/b;->v(Landroid/app/Activity;LXc/a;)V

    :cond_0
    return-void
.end method
