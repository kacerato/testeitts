.class public LPm/j$a;
.super LWm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPm/j;
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
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, LWm/h;->d()I

    move-result v2

    sget v3, LTm/d;->k:I

    if-lt v2, v3, :cond_0

    invoke-static {}, LWm/f;->c()LWm/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, LWm/h;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1}, LWm/h;->c()I

    move-result p1

    invoke-static {v2, p1}, LPm/j;->h(Ljava/lang/CharSequence;I)LPm/j;

    move-result-object v3

    if-eqz v3, :cond_1

    new-array p1, v1, [LWm/d;

    aput-object v3, p1, v0

    invoke-static {p1}, LWm/f;->d([LWm/d;)LWm/f;

    move-result-object p1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p1, p2}, LWm/f;->b(I)LWm/f;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v2, p1}, LPm/j;->i(Ljava/lang/CharSequence;I)I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {p2}, LWm/g;->b()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v3, LPm/j;

    invoke-direct {v3, p1, p2}, LPm/j;-><init>(ILjava/lang/String;)V

    new-array p1, v1, [LWm/d;

    aput-object v3, p1, v0

    invoke-static {p1}, LWm/f;->d([LWm/d;)LWm/f;

    move-result-object p1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p1, p2}, LWm/f;->b(I)LWm/f;

    move-result-object p1

    invoke-virtual {p1}, LWm/f;->e()LWm/f;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, LWm/f;->c()LWm/f;

    move-result-object p1

    return-object p1
.end method
