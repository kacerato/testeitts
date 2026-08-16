.class public LXh/B;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final f:Lhi/b;

.field public static final g:Lhi/b;

.field public static final h:Loh/s;

.field public static final i:Loh/s;


# instance fields
.field public b:Lhi/b;

.field public c:Lhi/b;

.field public d:Loh/s;

.field public e:Loh/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhi/b;

    sget-object v1, LBj/b;->i:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LXh/B;->f:Lhi/b;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->O0:Loh/x;

    invoke-direct {v1, v2, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v1, LXh/B;->g:Lhi/b;

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, LXh/B;->h:Loh/s;

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, LXh/B;->i:Loh/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, LXh/B;->f:Lhi/b;

    iput-object v0, p0, LXh/B;->b:Lhi/b;

    sget-object v0, LXh/B;->g:Lhi/b;

    iput-object v0, p0, LXh/B;->c:Lhi/b;

    sget-object v0, LXh/B;->h:Loh/s;

    iput-object v0, p0, LXh/B;->d:Loh/s;

    sget-object v0, LXh/B;->i:Loh/s;

    iput-object v0, p0, LXh/B;->e:Loh/s;

    return-void
.end method

.method public constructor <init>(Lhi/b;Lhi/b;Loh/s;Loh/s;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/B;->b:Lhi/b;

    iput-object p2, p0, LXh/B;->c:Lhi/b;

    iput-object p3, p0, LXh/B;->d:Loh/s;

    iput-object p4, p0, LXh/B;->e:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, LXh/B;->f:Lhi/b;

    iput-object v0, p0, LXh/B;->b:Lhi/b;

    sget-object v0, LXh/B;->g:Lhi/b;

    iput-object v0, p0, LXh/B;->c:Lhi/b;

    sget-object v0, LXh/B;->h:Loh/s;

    iput-object v0, p0, LXh/B;->d:Loh/s;

    sget-object v0, LXh/B;->i:Loh/s;

    iput-object v0, p0, LXh/B;->e:Loh/s;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-static {v1, v3}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v1

    iput-object v1, p0, LXh/B;->e:Loh/s;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v1, v3}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v1

    iput-object v1, p0, LXh/B;->d:Loh/s;

    goto :goto_1

    :cond_2
    invoke-static {v1, v3}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v1

    iput-object v1, p0, LXh/B;->c:Lhi/b;

    goto :goto_1

    :cond_3
    invoke-static {v1, v3}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v1

    iput-object v1, p0, LXh/B;->b:Lhi/b;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static v(Ljava/lang/Object;)LXh/B;
    .locals 1

    instance-of v0, p0, LXh/B;

    if-eqz v0, :cond_0

    check-cast p0, LXh/B;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/B;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/B;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/B;->b:Lhi/b;

    sget-object v2, LXh/B;->f:Lhi/b;

    invoke-virtual {v1, v2}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Loh/K0;

    const/4 v3, 0x0

    iget-object v4, p0, LXh/B;->b:Lhi/b;

    invoke-direct {v1, v2, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LXh/B;->c:Lhi/b;

    sget-object v3, LXh/B;->g:Lhi/b;

    invoke-virtual {v1, v3}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Loh/K0;

    iget-object v3, p0, LXh/B;->c:Lhi/b;

    invoke-direct {v1, v2, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, LXh/B;->d:Loh/s;

    sget-object v3, LXh/B;->h:Loh/s;

    invoke-virtual {v1, v3}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Loh/K0;

    const/4 v3, 0x2

    iget-object v4, p0, LXh/B;->d:Loh/s;

    invoke-direct {v1, v2, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, LXh/B;->e:Loh/s;

    sget-object v3, LXh/B;->i:Loh/s;

    invoke-virtual {v1, v3}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Loh/K0;

    const/4 v3, 0x3

    iget-object v4, p0, LXh/B;->e:Loh/s;

    invoke-direct {v1, v2, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_3
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/B;->b:Lhi/b;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/B;->c:Lhi/b;

    return-object v0
.end method

.method public y()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/B;->d:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/B;->e:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
