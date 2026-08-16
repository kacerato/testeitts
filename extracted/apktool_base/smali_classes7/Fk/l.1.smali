.class public LFk/l;
.super LFk/j;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4


# instance fields
.field public final b:I

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(ILoh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LFk/j;-><init>()V

    iput p1, p0, LFk/l;->b:I

    iput-object p2, p0, LFk/l;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, LFk/j;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, LFk/l;->b:I

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LFk/l;->c:Loh/g;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid choice value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Loh/t;->F(Ljava/lang/Object;)Loh/t;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static C(Ljava/lang/Object;)LFk/l;
    .locals 2

    instance-of v0, p0, LFk/l;

    if-eqz v0, :cond_0

    check-cast p0, LFk/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/l;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/l;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static D(LFk/M;)LFk/l;
    .locals 2

    new-instance v0, LFk/l;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, LFk/l;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static E(Loh/y;)LFk/l;
    .locals 2

    new-instance v0, LFk/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LFk/l;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static F([B)LFk/l;
    .locals 2

    new-instance v0, LFk/l;

    new-instance v1, Loh/C0;

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, v1}, LFk/l;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static v(Loh/y;)LFk/l;
    .locals 2

    new-instance v0, LFk/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LFk/l;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static w([B)LFk/l;
    .locals 2

    new-instance v0, LFk/l;

    new-instance v1, Loh/C0;

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    const/4 p0, 0x2

    invoke-direct {v0, p0, v1}, LFk/l;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static x(Loh/y;)LFk/l;
    .locals 2

    new-instance v0, LFk/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, LFk/l;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static y([B)LFk/l;
    .locals 2

    new-instance v0, LFk/l;

    new-instance v1, Loh/C0;

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    const/4 p0, 0x3

    invoke-direct {v0, p0, v1}, LFk/l;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static z()LFk/l;
    .locals 3

    new-instance v0, LFk/l;

    const/4 v1, 0x1

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, LFk/l;-><init>(ILoh/g;)V

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, LFk/l;->b:I

    return v0
.end method

.method public B()Loh/g;
    .locals 1

    iget-object v0, p0, LFk/l;->c:Loh/g;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/K0;

    iget v1, p0, LFk/l;->b:I

    iget-object v2, p0, LFk/l;->c:Loh/g;

    invoke-direct {v0, v1, v2}, Loh/K0;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public u()[B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, LFk/l;->b:I

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, LFk/l;->c:Loh/g;

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    invoke-virtual {v2, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v4

    invoke-virtual {v4}, Loh/y;->H()[B

    move-result-object v4

    invoke-virtual {v2, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    new-array v1, v1, [B

    aput-byte v3, v1, v0

    invoke-static {v1, v4, v2}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown point choice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, LFk/l;->c:Loh/g;

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    array-length v4, v2

    add-int/2addr v4, v1

    new-array v4, v4, [B

    aput-byte v3, v4, v0

    array-length v3, v2

    invoke-static {v2, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move-object v0, v4

    goto :goto_1

    :cond_2
    iget-object v2, p0, LFk/l;->c:Loh/g;

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    array-length v4, v2

    add-int/2addr v4, v1

    new-array v4, v4, [B

    aput-byte v3, v4, v0

    array-length v3, v2

    invoke-static {v2, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "x Only not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
