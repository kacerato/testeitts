.class public LVh/l;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final h:Loh/s;


# instance fields
.field public b:Z

.field public c:Loh/s;

.field public d:LVh/j;

.field public e:Loh/n;

.field public f:Loh/E;

.field public g:Lhi/C;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, LVh/l;->h:Loh/s;

    return-void
.end method

.method public constructor <init>(LVh/j;Loh/n;Loh/E;Lhi/C;)V
    .locals 6

    .line 1
    sget-object v1, LVh/l;->h:Loh/s;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LVh/l;-><init>(Loh/s;LVh/j;Loh/n;Loh/E;Lhi/C;)V

    return-void
.end method

.method public constructor <init>(LVh/j;Loh/n;Loh/E;Lhi/z0;)V
    .locals 6

    .line 2
    sget-object v1, LVh/l;->h:Loh/s;

    invoke-static {p2}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v3

    invoke-static {p4}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LVh/l;-><init>(Loh/s;LVh/j;Loh/n;Loh/E;Lhi/C;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/M;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v2, p0, LVh/l;->b:Z

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-static {v0, v2}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v0

    iput-object v0, p0, LVh/l;->c:Loh/s;

    move v0, v2

    goto :goto_0

    :cond_0
    sget-object v1, LVh/l;->h:Loh/s;

    iput-object v1, p0, LVh/l;->c:Loh/s;

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, LVh/j;->u(Ljava/lang/Object;)LVh/j;

    move-result-object v3

    iput-object v3, p0, LVh/l;->d:LVh/j;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v1

    iput-object v1, p0, LVh/l;->e:Loh/n;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/E;

    iput-object v1, p0, LVh/l;->f:Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v2}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object p1

    iput-object p1, p0, LVh/l;->g:Lhi/C;

    :cond_1
    return-void
.end method

.method public constructor <init>(Loh/s;LVh/j;Loh/n;Loh/E;Lhi/C;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LVh/l;->c:Loh/s;

    iput-object p2, p0, LVh/l;->d:LVh/j;

    iput-object p3, p0, LVh/l;->e:Loh/n;

    iput-object p4, p0, LVh/l;->f:Loh/E;

    iput-object p5, p0, LVh/l;->g:Lhi/C;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LVh/l;
    .locals 1

    instance-of v0, p0, LVh/l;

    if-eqz v0, :cond_0

    check-cast p0, LVh/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LVh/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/l;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)LVh/l;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, LVh/l;->u(Ljava/lang/Object;)LVh/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/E;
    .locals 1

    iget-object v0, p0, LVh/l;->f:Loh/E;

    return-object v0
.end method

.method public B()Loh/s;
    .locals 1

    iget-object v0, p0, LVh/l;->c:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-boolean v1, p0, LVh/l;->b:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, LVh/l;->c:Loh/s;

    sget-object v3, LVh/l;->h:Loh/s;

    invoke-virtual {v1, v3}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Loh/K0;

    const/4 v3, 0x0

    iget-object v4, p0, LVh/l;->c:Loh/s;

    invoke-direct {v1, v2, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, LVh/l;->d:LVh/j;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/l;->e:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/l;->f:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/l;->g:Lhi/C;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public x()Loh/n;
    .locals 1

    iget-object v0, p0, LVh/l;->e:Loh/n;

    return-object v0
.end method

.method public y()LVh/j;
    .locals 1

    iget-object v0, p0, LVh/l;->d:LVh/j;

    return-object v0
.end method

.method public z()Lhi/C;
    .locals 1

    iget-object v0, p0, LVh/l;->g:Lhi/C;

    return-object v0
.end method
