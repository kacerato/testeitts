.class public LVh/q;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final g:Loh/s;


# instance fields
.field public b:Loh/s;

.field public c:Lhi/E;

.field public d:Loh/E;

.field public e:Lhi/C;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, LVh/q;->g:Loh/s;

    return-void
.end method

.method public constructor <init>(Lhi/E;Loh/E;Lhi/C;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, LVh/q;->g:Loh/s;

    iput-object v0, p0, LVh/q;->b:Loh/s;

    iput-object p1, p0, LVh/q;->c:Lhi/E;

    iput-object p2, p0, LVh/q;->d:Loh/E;

    iput-object p3, p0, LVh/q;->e:Lhi/C;

    return-void
.end method

.method public constructor <init>(Lhi/E;Loh/E;Lhi/z0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, LVh/q;->g:Loh/s;

    iput-object v0, p0, LVh/q;->b:Loh/s;

    iput-object p1, p0, LVh/q;->c:Lhi/E;

    iput-object p2, p0, LVh/q;->d:Loh/E;

    invoke-static {p3}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p1

    iput-object p1, p0, LVh/q;->e:Lhi/C;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 3
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

    iput-boolean v2, p0, LVh/q;->f:Z

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-static {v0, v2}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v0

    iput-object v0, p0, LVh/q;->b:Loh/s;

    move v0, v2

    goto :goto_0

    :cond_0
    sget-object v1, LVh/q;->g:Loh/s;

    iput-object v1, p0, LVh/q;->b:Loh/s;

    :goto_0
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/M;

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-static {v0, v2}, Lhi/E;->w(Loh/M;Z)Lhi/E;

    move-result-object v0

    iput-object v0, p0, LVh/q;->c:Lhi/E;

    move v0, v1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    check-cast v3, Loh/E;

    iput-object v3, p0, LVh/q;->d:Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    add-int/lit8 v0, v0, 0x2

    if-ne v3, v0, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v2}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object p1

    iput-object p1, p0, LVh/q;->e:Lhi/C;

    :cond_2
    return-void
.end method

.method public static u(Ljava/lang/Object;)LVh/q;
    .locals 1

    instance-of v0, p0, LVh/q;

    if-eqz v0, :cond_0

    check-cast p0, LVh/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LVh/q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/q;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)LVh/q;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, LVh/q;->u(Ljava/lang/Object;)LVh/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/s;
    .locals 1

    iget-object v0, p0, LVh/q;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LVh/q;->b:Loh/s;

    sget-object v2, LVh/q;->g:Loh/s;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LVh/q;->f:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Loh/K0;

    const/4 v3, 0x0

    iget-object v4, p0, LVh/q;->b:Loh/s;

    invoke-direct {v1, v2, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, LVh/q;->c:Lhi/E;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, LVh/q;->d:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/q;->e:Lhi/C;

    if-eqz v1, :cond_3

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_3
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public x()Lhi/C;
    .locals 1

    iget-object v0, p0, LVh/q;->e:Lhi/C;

    return-object v0
.end method

.method public y()Loh/E;
    .locals 1

    iget-object v0, p0, LVh/q;->d:Loh/E;

    return-object v0
.end method

.method public z()Lhi/E;
    .locals 1

    iget-object v0, p0, LVh/q;->c:Lhi/E;

    return-object v0
.end method
