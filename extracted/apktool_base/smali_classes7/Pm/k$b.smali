.class public LPm/k$b;
.super LWm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPm/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LWm/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LWm/h;LWm/g;)LWm/f;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, LWm/h;->c()I

    move-result v2

    invoke-interface {p1}, LWm/h;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1}, LWm/h;->d()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_2

    move v4, v1

    :goto_0
    const/4 v5, 0x7

    if-gt v4, v5, :cond_2

    if-ne v4, v5, :cond_0

    invoke-interface {p2}, LWm/g;->a()LWm/d;

    move-result-object v5

    invoke-interface {v5}, LWm/d;->getBlock()LUm/b;

    move-result-object v5

    instance-of v5, v5, LUm/x;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, LPm/k;->h()[[Ljava/util/regex/Pattern;

    move-result-object v5

    aget-object v5, v5, v4

    aget-object v5, v5, v0

    invoke-static {}, LPm/k;->h()[[Ljava/util/regex/Pattern;

    move-result-object v6

    aget-object v6, v6, v4

    aget-object v6, v6, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v3, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p2, LPm/k;

    const/4 v2, 0x0

    invoke-direct {p2, v6, v2}, LPm/k;-><init>(Ljava/util/regex/Pattern;LPm/k$a;)V

    new-array v1, v1, [LWm/d;

    aput-object p2, v1, v0

    invoke-static {v1}, LWm/f;->d([LWm/d;)LWm/f;

    move-result-object p2

    invoke-interface {p1}, LWm/h;->getIndex()I

    move-result p1

    invoke-virtual {p2, p1}, LWm/f;->b(I)LWm/f;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    add-int/2addr v4, v1

    goto :goto_0

    :cond_2
    invoke-static {}, LWm/f;->c()LWm/f;

    move-result-object p1

    return-object p1
.end method
