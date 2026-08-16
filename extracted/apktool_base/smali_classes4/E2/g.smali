.class public abstract LE2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LE2/e;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE2/g$c;,
        LE2/g$e;,
        LE2/g$d;,
        LE2/g$b;
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LE2/g;
    .locals 1

    sget-object v0, LE2/g$c;->a:LE2/g$c;

    return-object v0
.end method

.method public static b(D)LE2/g;
    .locals 3

    invoke-static {p0, p1}, LE2/d;->d(D)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    new-instance v0, LE2/g$d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, LE2/g$d;-><init>(DD)V

    return-object v0
.end method

.method public static f(DD)LE2/g$b;
    .locals 7

    invoke-static {p0, p1}, LE2/d;->d(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, LE2/d;->d(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    new-instance v0, LE2/g$b;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, LE2/g$b;-><init>(DDLE2/g$a;)V

    return-object v0
.end method

.method public static i(D)LE2/g;
    .locals 1

    invoke-static {p0, p1}, LE2/d;->d(D)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    new-instance v0, LE2/g$e;

    invoke-direct {v0, p0, p1}, LE2/g$e;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public abstract c()LE2/g;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract g()D
.end method

.method public abstract h(D)D
.end method
