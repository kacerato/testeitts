.class public LPm/j;
.super LWm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPm/j$a;
    }
.end annotation


# instance fields
.field public final a:LUm/m;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, LWm/a;-><init>()V

    new-instance v0, LUm/m;

    invoke-direct {v0}, LUm/m;-><init>()V

    iput-object v0, p0, LPm/j;->a:LUm/m;

    invoke-virtual {v0, p1}, LUm/m;->r(I)V

    iput-object p2, p0, LPm/j;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic h(Ljava/lang/CharSequence;I)LPm/j;
    .locals 0

    invoke-static {p0, p1}, LPm/j;->j(Ljava/lang/CharSequence;I)LPm/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/CharSequence;I)I
    .locals 0

    invoke-static {p0, p1}, LPm/j;->k(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/CharSequence;I)LPm/j;
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x23

    invoke-static {v1, p0, p1, v0}, LTm/d;->k(CLjava/lang/CharSequence;II)I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x6

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt p1, v3, :cond_1

    new-instance p0, LPm/j;

    const-string p1, ""

    invoke-direct {p0, v0, p1}, LPm/j;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    return-object v2

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v2, p1}, LTm/d;->n(Ljava/lang/CharSequence;II)I

    move-result v2

    invoke-static {v1, p0, v2, p1}, LTm/d;->l(CLjava/lang/CharSequence;II)I

    move-result v1

    invoke-static {p0, v1, p1}, LTm/d;->n(Ljava/lang/CharSequence;II)I

    move-result v3

    if-eq v3, v1, :cond_3

    new-instance v1, LPm/j;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p0, p1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, LPm/j;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_3
    new-instance v1, LPm/j;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, p1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, LPm/j;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_4
    :goto_0
    return-object v2
.end method

.method public static k(Ljava/lang/CharSequence;I)I
    .locals 4

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, v3}, LPm/j;->l(Ljava/lang/CharSequence;IC)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    add-int/2addr p1, v2

    invoke-static {p0, p1, v1}, LPm/j;->l(Ljava/lang/CharSequence;IC)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Ljava/lang/CharSequence;IC)Z
    .locals 1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, p0, p1, v0}, LTm/d;->k(CLjava/lang/CharSequence;II)I

    move-result p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p0, p1, p2}, LTm/d;->m(Ljava/lang/CharSequence;II)I

    move-result p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public d(LWm/h;)LWm/c;
    .locals 0

    invoke-static {}, LWm/c;->d()LWm/c;

    move-result-object p1

    return-object p1
.end method

.method public e(LVm/a;)V
    .locals 2

    iget-object v0, p0, LPm/j;->b:Ljava/lang/String;

    iget-object v1, p0, LPm/j;->a:LUm/m;

    invoke-interface {p1, v0, v1}, LVm/a;->a(Ljava/lang/String;LUm/v;)V

    return-void
.end method

.method public getBlock()LUm/b;
    .locals 1

    iget-object v0, p0, LPm/j;->a:LUm/m;

    return-object v0
.end method
