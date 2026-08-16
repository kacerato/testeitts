.class public LN7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:LN7/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 1

    sget-object v0, LN7/f;->a:LN7/e;

    invoke-interface {v0}, LN7/e;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    sget-object v0, LN7/f;->a:LN7/e;

    invoke-interface {v0}, LN7/e;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, LN7/f;->a:LN7/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 1

    sget-object v0, LN7/f;->a:LN7/e;

    invoke-interface {v0}, LN7/e;->d()Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    sget-object v0, LN7/f;->a:LN7/e;

    invoke-interface {v0, p0}, LN7/e;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f(LN7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageToMainListener"
        }
    .end annotation

    sput-object p0, LN7/f;->a:LN7/e;

    return-void
.end method

.method public static g()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, LN7/f;->a:LN7/e;

    return-void
.end method
