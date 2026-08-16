.class public LSk/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Loh/x;

.field public static final c:Loh/x;


# instance fields
.field public a:LXh/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LXh/t;->h2:Loh/x;

    sput-object v0, LSk/k;->b:Loh/x;

    sget-object v0, LXh/t;->j2:Loh/x;

    sput-object v0, LSk/k;->c:Loh/x;

    return-void
.end method

.method public constructor <init>(LXh/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSk/k;->a:LXh/C;

    return-void
.end method


# virtual methods
.method public a()[LXh/a;
    .locals 4

    iget-object v0, p0, LSk/k;->a:LXh/C;

    invoke-virtual {v0}, LXh/C;->u()Loh/G;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/G;->size()I

    move-result v1

    new-array v1, v1, [LXh/a;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/G;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v2}, Loh/G;->H(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, LXh/a;->y(Ljava/lang/Object;)LXh/a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, LSk/k;->c()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->Y3:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LSk/n;

    iget-object v1, p0, LSk/k;->a:LXh/C;

    invoke-virtual {v1}, LXh/C;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, LXh/j;->w(Ljava/lang/Object;)LXh/j;

    move-result-object v1

    invoke-direct {v0, v1}, LSk/n;-><init>(LXh/j;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, LSk/k;->c()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->Z3:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LSk/k;->a:LXh/C;

    invoke-virtual {v0}, LXh/C;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/d;->w(Ljava/lang/Object;)LXh/d;

    move-result-object v0

    new-instance v1, Lli/h;

    invoke-virtual {v0}, LXh/d;->v()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object v0

    invoke-direct {v1, v0}, Lli/h;-><init>(Lhi/q;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, LSk/k;->c()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->X3:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LSk/k;->a:LXh/C;

    invoke-virtual {v0}, LXh/C;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, LSk/k;->c()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->a4:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LSk/k;->a:LXh/C;

    invoke-virtual {v0}, LXh/C;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/c;->w(Ljava/lang/Object;)LXh/c;

    move-result-object v0

    new-instance v1, Lli/g;

    invoke-virtual {v0}, LXh/c;->v()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object v0

    invoke-direct {v1, v0}, Lli/g;-><init>(Lhi/r;)V

    return-object v1

    :cond_3
    iget-object v0, p0, LSk/k;->a:LXh/C;

    invoke-virtual {v0}, LXh/C;->x()Loh/g;

    move-result-object v0

    return-object v0
.end method

.method public c()Loh/x;
    .locals 1

    iget-object v0, p0, LSk/k;->a:LXh/C;

    invoke-virtual {v0}, LXh/C;->v()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public d()LXh/C;
    .locals 1

    iget-object v0, p0, LSk/k;->a:LXh/C;

    return-object v0
.end method
