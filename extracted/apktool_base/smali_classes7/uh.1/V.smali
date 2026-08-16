.class public Luh/V;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final l:Loh/s;

.field public static final m:Loh/s;

.field public static final n:Loh/s;

.field public static final o:Loh/s;


# instance fields
.field public final b:Loh/s;

.field public final c:Loh/G;

.field public final d:Luh/o;

.field public final e:Loh/G;

.field public final f:Z

.field public final g:Z

.field public h:Loh/G;

.field public i:Loh/G;

.field public j:Z

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Luh/V;->l:Loh/s;

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Luh/V;->m:Loh/s;

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Luh/V;->n:Loh/s;

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x5

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Luh/V;->o:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Luh/V;->b:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/G;

    iput-object v0, p0, Luh/V;->c:Loh/G;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object v0

    iput-object v0, p0, Luh/V;->d:Luh/o;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/B;

    instance-of v2, v1, Loh/M;

    if-eqz v2, :cond_2

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    instance-of v2, v1, Loh/l0;

    iput-boolean v2, p0, Luh/V;->k:Z

    invoke-static {v1, v3}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v1

    iput-object v1, p0, Luh/V;->i:Loh/G;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v2, v1, Loh/l0;

    iput-boolean v2, p0, Luh/V;->j:Z

    invoke-static {v1, v3}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v1

    iput-object v1, p0, Luh/V;->h:Loh/G;

    goto :goto_0

    :cond_2
    instance-of v0, v1, Loh/G;

    if-eqz v0, :cond_3

    check-cast v1, Loh/G;

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SET expected, not encountered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz v0, :cond_5

    iput-object v0, p0, Luh/V;->e:Loh/G;

    iget-object p1, p0, Luh/V;->c:Loh/G;

    instance-of p1, p1, Loh/j0;

    iput-boolean p1, p0, Luh/V;->f:Z

    instance-of p1, v0, Loh/j0;

    iput-boolean p1, p0, Luh/V;->g:Z

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "signerInfos not set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/G;Luh/o;Loh/G;Loh/G;Loh/G;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p2}, Luh/o;->v()Loh/x;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4, p5}, Luh/V;->u(Loh/x;Loh/G;Loh/G;Loh/G;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Luh/V;->b:Loh/s;

    iput-object p1, p0, Luh/V;->c:Loh/G;

    iput-object p2, p0, Luh/V;->d:Luh/o;

    iput-object p3, p0, Luh/V;->h:Loh/G;

    iput-object p4, p0, Luh/V;->i:Loh/G;

    iput-object p5, p0, Luh/V;->e:Loh/G;

    instance-of p1, p1, Loh/j0;

    iput-boolean p1, p0, Luh/V;->f:Z

    instance-of p1, p4, Loh/j0;

    iput-boolean p1, p0, Luh/V;->k:Z

    instance-of p1, p3, Loh/j0;

    iput-boolean p1, p0, Luh/V;->j:Z

    instance-of p1, p5, Loh/j0;

    iput-boolean p1, p0, Luh/V;->g:Z

    return-void
.end method

.method public static B(Ljava/lang/Object;)Luh/V;
    .locals 1

    instance-of v0, p0, Luh/V;

    if-eqz v0, :cond_0

    check-cast p0, Luh/V;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/V;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/V;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Luh/o;
    .locals 1

    iget-object v0, p0, Luh/V;->d:Luh/o;

    return-object v0
.end method

.method public C()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/V;->e:Loh/G;

    return-object v0
.end method

.method public D()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/V;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/V;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/V;->c:Loh/G;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/V;->d:Luh/o;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/V;->h:Loh/G;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Luh/V;->j:Z

    if-eqz v3, :cond_0

    new-instance v3, Loh/l0;

    invoke-direct {v3, v2, v2, v1}, Loh/l0;-><init>(ZILoh/g;)V

    :goto_0
    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_0
    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Luh/V;->i:Loh/G;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Luh/V;->k:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    new-instance v3, Loh/l0;

    invoke-direct {v3, v2, v4, v1}, Loh/l0;-><init>(ZILoh/g;)V

    :goto_2
    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    goto :goto_3

    :cond_2
    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v1, p0, Luh/V;->e:Loh/G;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/V;->d:Luh/o;

    invoke-virtual {v1}, Luh/o;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Luh/V;->f:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Luh/V;->g:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Luh/V;->k:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Luh/V;->j:Z

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    new-instance v1, Loh/V0;

    invoke-direct {v1, v0}, Loh/V0;-><init>(Loh/h;)V

    return-object v1

    :cond_5
    :goto_4
    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public final u(Loh/x;Loh/G;Loh/G;Loh/G;)Loh/s;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p2

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Loh/M;

    if-eqz v6, :cond_0

    invoke-static {v5}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v5

    invoke-virtual {v5}, Loh/M;->g()I

    move-result v6

    if-ne v6, v0, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Loh/M;->g()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Loh/M;->g()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    move v3, v2

    move v4, v3

    :cond_4
    if-eqz v2, :cond_5

    new-instance p1, Loh/s;

    const-wide/16 p2, 0x5

    invoke-direct {p1, p2, p3}, Loh/s;-><init>(J)V

    return-object p1

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Loh/M;

    if-eqz p3, :cond_6

    move v1, v0

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    sget-object p1, Luh/V;->o:Loh/s;

    return-object p1

    :cond_8
    if-eqz v4, :cond_9

    sget-object p1, Luh/V;->n:Loh/s;

    return-object p1

    :cond_9
    if-eqz v3, :cond_a

    sget-object p1, Luh/V;->m:Loh/s;

    return-object p1

    :cond_a
    invoke-virtual {p0, p4}, Luh/V;->v(Loh/G;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p1, Luh/V;->m:Loh/s;

    return-object p1

    :cond_b
    sget-object p2, Luh/l;->m8:Loh/x;

    invoke-virtual {p2, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Luh/V;->m:Loh/s;

    return-object p1

    :cond_c
    sget-object p1, Luh/V;->l:Loh/s;

    return-object p1
.end method

.method public final v(Loh/G;)Z
    .locals 2

    invoke-virtual {p1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Luh/Y;->z(Ljava/lang/Object;)Luh/Y;

    move-result-object v0

    invoke-virtual {v0}, Luh/Y;->C()Loh/s;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Loh/s;->J(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public x()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/V;->i:Loh/G;

    return-object v0
.end method

.method public y()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/V;->h:Loh/G;

    return-object v0
.end method

.method public z()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/V;->c:Loh/G;

    return-object v0
.end method
