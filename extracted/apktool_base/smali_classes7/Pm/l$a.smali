.class public LPm/l$a;
.super LWm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPm/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LWm/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LWm/h;LWm/g;)LWm/f;
    .locals 2

    invoke-interface {p1}, LWm/h;->d()I

    move-result p2

    sget v0, LTm/d;->k:I

    if-lt p2, v0, :cond_0

    invoke-interface {p1}, LWm/h;->a()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, LWm/h;->e()LWm/d;

    move-result-object p2

    invoke-interface {p2}, LWm/d;->getBlock()LUm/b;

    move-result-object p2

    instance-of p2, p2, LUm/x;

    if-nez p2, :cond_0

    new-instance p2, LPm/l;

    invoke-direct {p2}, LPm/l;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [LWm/d;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, LWm/f;->d([LWm/d;)LWm/f;

    move-result-object p2

    invoke-interface {p1}, LWm/h;->getColumn()I

    move-result p1

    sget v0, LTm/d;->k:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, LWm/f;->a(I)LWm/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LWm/f;->c()LWm/f;

    move-result-object p1

    return-object p1
.end method
