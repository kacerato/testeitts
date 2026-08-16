.class public LPm/p;
.super LWm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPm/p$c;,
        LPm/p$b;,
        LPm/p$a;
    }
.end annotation


# instance fields
.field public final a:LUm/t;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(LUm/t;)V
    .locals 0

    invoke-direct {p0}, LWm/a;-><init>()V

    iput-object p1, p0, LPm/p;->a:LUm/t;

    return-void
.end method

.method public static synthetic h(Ljava/lang/CharSequence;IIZ)LPm/p$b;
    .locals 0

    invoke-static {p0, p1, p2, p3}, LPm/p;->m(Ljava/lang/CharSequence;IIZ)LPm/p$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(LUm/t;LUm/t;)Z
    .locals 0

    invoke-static {p0, p1}, LPm/p;->l(LUm/t;LUm/t;)Z

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static k(Ljava/lang/CharSequence;I)Z
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_0

    const/16 p1, 0x20

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public static l(LUm/t;LUm/t;)Z
    .locals 1

    instance-of v0, p0, LUm/d;

    if-eqz v0, :cond_0

    instance-of v0, p1, LUm/d;

    if-eqz v0, :cond_0

    check-cast p0, LUm/d;

    invoke-virtual {p0}, LUm/d;->s()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    check-cast p1, LUm/d;

    invoke-virtual {p1}, LUm/d;->s()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p0, p1}, LPm/p;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, LUm/w;

    if-eqz v0, :cond_1

    instance-of v0, p1, LUm/w;

    if-eqz v0, :cond_1

    check-cast p0, LUm/w;

    invoke-virtual {p0}, LUm/w;->s()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    check-cast p1, LUm/w;

    invoke-virtual {p1}, LUm/w;->s()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p0, p1}, LPm/p;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Ljava/lang/CharSequence;IIZ)LPm/p$b;
    .locals 7

    invoke-static {p0, p1}, LPm/p;->n(Ljava/lang/CharSequence;I)LPm/p$c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, LPm/p$c;->a:LUm/t;

    iget v0, v0, LPm/p$c;->b:I

    sub-int p1, v0, p1

    add-int/2addr p2, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    move v3, p2

    :goto_0
    const/4 v4, 0x1

    if-ge v0, p1, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    invoke-static {v3}, LTm/d;->a(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move p0, v4

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-eqz p3, :cond_5

    instance-of p1, v2, LUm/w;

    if-eqz p1, :cond_4

    move-object p1, v2

    check-cast p1, LUm/w;

    invoke-virtual {p1}, LUm/w;->t()I

    move-result p1

    if-eq p1, v4, :cond_4

    return-object v1

    :cond_4
    if-nez p0, :cond_5

    return-object v1

    :cond_5
    if-eqz p0, :cond_6

    sub-int p0, v3, p2

    sget p1, LTm/d;->k:I

    if-le p0, p1, :cond_7

    :cond_6
    add-int/lit8 v3, p2, 0x1

    :cond_7
    new-instance p0, LPm/p$b;

    invoke-direct {p0, v2, v3}, LPm/p$b;-><init>(LUm/t;I)V

    return-object p0
.end method

.method public static n(Ljava/lang/CharSequence;I)LPm/p$c;
    .locals 2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1}, LPm/p;->o(Ljava/lang/CharSequence;I)LPm/p$c;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, LPm/p;->k(Ljava/lang/CharSequence;I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, LUm/d;

    invoke-direct {p0}, LUm/d;-><init>()V

    invoke-virtual {p0, v0}, LUm/d;->t(C)V

    new-instance v0, LPm/p$c;

    invoke-direct {v0, p0, p1}, LPm/p$c;-><init>(LUm/t;I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Ljava/lang/CharSequence;I)LPm/p$c;
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    return-object v3

    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x9

    if-le v1, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-lt v1, v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    invoke-static {p0, v0}, LPm/p;->k(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, p1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, LUm/w;

    invoke-direct {p1}, LUm/w;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, LUm/w;->v(I)V

    invoke-virtual {p1, v4}, LUm/w;->u(C)V

    new-instance p0, LPm/p$c;

    invoke-direct {p0, p1, v0}, LPm/p$c;-><init>(LUm/t;I)V

    return-object p0

    :cond_2
    return-object v3

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(LWm/h;)LWm/c;
    .locals 2

    invoke-interface {p1}, LWm/h;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, LPm/p;->b:Z

    const/4 v0, 0x0

    iput v0, p0, LPm/p;->c:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LPm/p;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, LPm/p;->c:I

    add-int/2addr v0, v1

    iput v0, p0, LPm/p;->c:I

    :cond_1
    :goto_0
    invoke-interface {p1}, LWm/h;->getIndex()I

    move-result p1

    invoke-static {p1}, LWm/c;->b(I)LWm/c;

    move-result-object p1

    return-object p1
.end method

.method public f(LUm/b;)Z
    .locals 2

    instance-of p1, p1, LUm/u;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, LPm/p;->b:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, LPm/p;->c:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, LPm/p;->a:LUm/t;

    invoke-virtual {p1, v0}, LUm/t;->r(Z)V

    iput-boolean v0, p0, LPm/p;->b:Z

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public getBlock()LUm/b;
    .locals 1

    iget-object v0, p0, LPm/p;->a:LUm/t;

    return-object v0
.end method
