.class public LIh/d;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements LIh/c;


# static fields
.field public static final f:I = 0x10


# instance fields
.field public b:Loh/s;

.field public c:Lhi/b;

.field public d:[LIh/b;

.field public e:LIh/e;


# direct methods
.method public constructor <init>(Lhi/b;[LIh/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LIh/d;->b:Loh/s;

    new-instance v0, Loh/s;

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LIh/d;->b:Loh/s;

    iput-object p1, p0, LIh/d;->c:Lhi/b;

    invoke-virtual {p0, p2}, LIh/d;->v([LIh/b;)[LIh/b;

    move-result-object p1

    iput-object p1, p0, LIh/d;->d:[LIh/b;

    array-length p1, p2

    invoke-virtual {p0, p1}, LIh/d;->u(I)V

    return-void
.end method

.method public constructor <init>(Lhi/b;[LIh/b;LIh/e;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LIh/d;->b:Loh/s;

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LIh/d;->b:Loh/s;

    iput-object p1, p0, LIh/d;->c:Lhi/b;

    invoke-virtual {p0, p2}, LIh/d;->v([LIh/b;)[LIh/b;

    move-result-object p1

    iput-object p1, p0, LIh/d;->d:[LIh/b;

    iput-object p3, p0, LIh/d;->e:LIh/e;

    array-length p1, p2

    invoke-virtual {p0, p1}, LIh/d;->u(I)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LIh/d;->b:Loh/s;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, LIh/d;->b:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, LIh/d;->c:Lhi/b;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iget-object v1, p0, LIh/d;->b:Loh/s;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Loh/s;->J(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LIh/e;->u(Ljava/lang/Object;)LIh/e;

    move-result-object p1

    iput-object p1, p0, LIh/d;->e:LIh/e;

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result p1

    invoke-virtual {p0, p1}, LIh/d;->u(I)V

    invoke-virtual {v0}, Loh/E;->size()I

    move-result p1

    new-array p1, p1, [LIh/b;

    iput-object p1, p0, LIh/d;->d:[LIh/b;

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, LIh/d;->d:[LIh/b;

    invoke-virtual {v0, p1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, LIh/b;->w(Ljava/lang/Object;)LIh/b;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null or empty sequence passed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static z(Ljava/lang/Object;)LIh/d;
    .locals 1

    instance-of v0, p0, LIh/d;

    if-eqz v0, :cond_0

    check-cast p0, LIh/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LIh/d;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LIh/d;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, LIh/d;->b:Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0
.end method

.method public B()LIh/e;
    .locals 1

    iget-object v0, p0, LIh/d;->e:LIh/e;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LIh/d;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LIh/d;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    iget-object v2, p0, LIh/d;->d:[LIh/b;

    invoke-direct {v1, v2}, Loh/G0;-><init>([Loh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LIh/d;->e:LIh/e;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public final u(I)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong size in DataGroupHashValues : not in (2..16)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final v([LIh/b;)[LIh/b;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [LIh/b;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public x()[LIh/b;
    .locals 1

    iget-object v0, p0, LIh/d;->d:[LIh/b;

    invoke-virtual {p0, v0}, LIh/d;->v([LIh/b;)[LIh/b;

    move-result-object v0

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, LIh/d;->c:Lhi/b;

    return-object v0
.end method
