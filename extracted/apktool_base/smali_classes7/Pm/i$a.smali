.class public LPm/i$a;
.super LWm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPm/i;
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

    invoke-static {}, LWm/f;->c()LWm/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, LWm/h;->c()I

    move-result v0

    invoke-interface {p1}, LWm/h;->b()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v0, p2}, LPm/i;->h(Ljava/lang/CharSequence;II)LPm/i;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [LWm/d;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-static {p2}, LWm/f;->d([LWm/d;)LWm/f;

    move-result-object p2

    invoke-static {p1}, LPm/i;->i(LPm/i;)LUm/k;

    move-result-object p1

    invoke-virtual {p1}, LUm/k;->s()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, LWm/f;->b(I)LWm/f;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, LWm/f;->c()LWm/f;

    move-result-object p1

    return-object p1
.end method
