.class public Lzh/l;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:[Lhi/W;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>([Lhi/W;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzh/l;->c:Z

    iput-boolean v0, p0, Lzh/l;->d:Z

    iput-boolean v0, p0, Lzh/l;->e:Z

    invoke-virtual {p0, p1}, Lzh/l;->u([Lhi/W;)[Lhi/W;

    move-result-object p1

    iput-object p1, p0, Lzh/l;->b:[Lhi/W;

    return-void
.end method

.method public constructor <init>([Lhi/W;ZZZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzh/l;->c:Z

    iput-boolean v0, p0, Lzh/l;->d:Z

    iput-boolean v0, p0, Lzh/l;->e:Z

    invoke-virtual {p0, p1}, Lzh/l;->u([Lhi/W;)[Lhi/W;

    move-result-object p1

    iput-object p1, p0, Lzh/l;->b:[Lhi/W;

    iput-boolean p2, p0, Lzh/l;->c:Z

    iput-boolean p3, p0, Lzh/l;->d:Z

    iput-boolean p4, p0, Lzh/l;->e:Z

    return-void
.end method

.method public static v(Loh/E;)[Lhi/W;
    .locals 4

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lhi/W;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/W;->u(Ljava/lang/Object;)Lhi/W;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static y(Ljava/lang/Object;)Lzh/l;
    .locals 6

    instance-of v0, p0, Lzh/l;

    if-eqz v0, :cond_0

    check-cast p0, Lzh/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_6

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    new-instance v2, Lzh/l;

    invoke-static {v1}, Lzh/l;->v(Loh/E;)[Lhi/W;

    move-result-object v1

    invoke-direct {v2, v1}, Lzh/l;-><init>([Lhi/W;)V

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Loh/E;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    instance-of v5, v4, Loh/e;

    if-eqz v5, :cond_1

    invoke-static {v4}, Loh/e;->G(Ljava/lang/Object;)Loh/e;

    move-result-object v4

    invoke-virtual {v4}, Loh/e;->J()Z

    move-result v4

    invoke-virtual {v2, v4}, Lzh/l;->F(Z)V

    goto :goto_1

    :cond_1
    instance-of v5, v4, Loh/M;

    if-eqz v5, :cond_4

    invoke-static {v4}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v4

    invoke-virtual {v4}, Loh/M;->g()I

    move-result v5

    if-eqz v5, :cond_3

    if-ne v5, v1, :cond_2

    invoke-static {v4, v0}, Loh/e;->H(Loh/M;Z)Loh/e;

    move-result-object v4

    invoke-virtual {v4}, Loh/e;->J()Z

    move-result v4

    invoke-virtual {v2, v4}, Lzh/l;->E(Z)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v4, v0}, Loh/e;->H(Loh/M;Z)Loh/e;

    move-result-object v4

    invoke-virtual {v4}, Loh/e;->J()Z

    move-result v4

    invoke-virtual {v2, v4}, Lzh/l;->D(Z)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v2

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Loh/M;Z)Lzh/l;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lzh/l;->y(Ljava/lang/Object;)Lzh/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lzh/l;->d:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lzh/l;->e:Z

    return v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lzh/l;->c:Z

    return v0
.end method

.method public final D(Z)V
    .locals 0

    iput-boolean p1, p0, Lzh/l;->d:Z

    return-void
.end method

.method public final E(Z)V
    .locals 0

    iput-boolean p1, p0, Lzh/l;->e:Z

    return-void
.end method

.method public final F(Z)V
    .locals 0

    iput-boolean p1, p0, Lzh/l;->c:Z

    return-void
.end method

.method public r()Loh/B;
    .locals 6

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/h;

    iget-object v2, p0, Lzh/l;->b:[Lhi/W;

    array-length v2, v2

    invoke-direct {v1, v2}, Loh/h;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lzh/l;->b:[Lhi/W;

    array-length v5, v4

    if-eq v3, v5, :cond_0

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Loh/G0;

    invoke-direct {v3, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    iget-boolean v1, p0, Lzh/l;->c:Z

    if-eqz v1, :cond_1

    invoke-static {v1}, Loh/e;->I(Z)Loh/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-boolean v1, p0, Lzh/l;->d:Z

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    invoke-static {v1}, Loh/e;->I(Z)Loh/e;

    move-result-object v1

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-boolean v1, p0, Lzh/l;->e:Z

    if-eqz v1, :cond_3

    new-instance v3, Loh/K0;

    invoke-static {v1}, Loh/e;->I(Z)Loh/e;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_3
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathProcInput: {\nacceptablePolicySet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzh/l;->b:[Lhi/W;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ninhibitPolicyMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lzh/l;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nexplicitPolicyReqd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lzh/l;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ninhibitAnyPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lzh/l;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u([Lhi/W;)[Lhi/W;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Lhi/W;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public x()[Lhi/W;
    .locals 1

    iget-object v0, p0, Lzh/l;->b:[Lhi/W;

    invoke-virtual {p0, v0}, Lzh/l;->u([Lhi/W;)[Lhi/W;

    move-result-object v0

    return-object v0
.end method
