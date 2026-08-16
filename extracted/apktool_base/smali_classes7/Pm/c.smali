.class public LPm/c;
.super LWm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPm/c$a;
    }
.end annotation


# instance fields
.field public final a:LUm/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LWm/a;-><init>()V

    new-instance v0, LUm/c;

    invoke-direct {v0}, LUm/c;-><init>()V

    iput-object v0, p0, LPm/c;->a:LUm/c;

    return-void
.end method

.method public static synthetic h(LWm/h;I)Z
    .locals 0

    invoke-static {p0, p1}, LPm/c;->j(LWm/h;I)Z

    move-result p0

    return p0
.end method

.method public static j(LWm/h;I)Z
    .locals 2

    invoke-interface {p0}, LWm/h;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0}, LWm/h;->d()I

    move-result p0

    sget v1, LTm/d;->k:I

    if-ge p0, v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ge p1, p0, :cond_0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x3e

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(LWm/h;)LWm/c;
    .locals 3

    invoke-interface {p1}, LWm/h;->c()I

    move-result v0

    invoke-static {p1, v0}, LPm/c;->j(LWm/h;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, LWm/h;->getColumn()I

    move-result v1

    invoke-interface {p1}, LWm/h;->d()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, LWm/h;->b()Ljava/lang/CharSequence;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, LTm/d;->i(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v2, v1, 0x2

    :cond_0
    invoke-static {v2}, LWm/c;->a(I)LWm/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, LWm/c;->d()LWm/c;

    move-result-object p1

    return-object p1
.end method

.method public f(LUm/b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic getBlock()LUm/b;
    .locals 1

    invoke-virtual {p0}, LPm/c;->i()LUm/c;

    move-result-object v0

    return-object v0
.end method

.method public i()LUm/c;
    .locals 1

    iget-object v0, p0, LPm/c;->a:LUm/c;

    return-object v0
.end method
