.class public final Lu2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu2/f$a;,
        Lu2/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lu2/c;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-static {p0}, Li1/q0;->a(Landroid/content/Context;)Li1/q0;

    move-result-object p0

    invoke-virtual {p0}, Li1/q0;->b()Li1/w0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lu2/f$b;Lu2/f$a;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lu2/f$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lu2/f$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p0}, Li1/q0;->a(Landroid/content/Context;)Li1/q0;

    move-result-object p0

    invoke-virtual {p0}, Li1/q0;->c()Li1/C;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Li1/C;->a(Lu2/f$b;Lu2/f$a;)V

    return-void
.end method
