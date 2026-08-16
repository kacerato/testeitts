.class public Lzh/g;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final p:I = 0x4


# instance fields
.field public b:I

.field public c:Lzh/m;

.field public d:Ljava/math/BigInteger;

.field public e:Lzh/j;

.field public f:Lhi/F;

.field public g:Lhi/W;

.field public h:Lhi/F;

.field public i:Lhi/F;

.field public j:Lhi/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 6

    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lzh/g;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/s;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v2

    invoke-virtual {v2}, Loh/s;->O()I

    move-result v2

    iput v2, p0, Lzh/g;->b:I

    move v2, v0

    goto :goto_0

    :cond_0
    iput v0, p0, Lzh/g;->b:I

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lzh/m;->u(Ljava/lang/Object;)Lzh/m;

    move-result-object v2

    iput-object v2, p0, Lzh/g;->c:Lzh/m;

    :goto_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v4, v2, Loh/s;

    if-eqz v4, :cond_1

    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v2

    invoke-virtual {v2}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lzh/g;->d:Ljava/math/BigInteger;

    goto :goto_2

    :cond_1
    instance-of v4, v2, Loh/n;

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {v2}, Lzh/j;->v(Ljava/lang/Object;)Lzh/j;

    move-result-object v2

    iput-object v2, p0, Lzh/g;->e:Lzh/j;

    goto :goto_2

    :cond_3
    instance-of v4, v2, Loh/M;

    if-eqz v4, :cond_2

    invoke-static {v2}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v2

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v4

    if-eqz v4, :cond_8

    if-eq v4, v0, :cond_7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    invoke-static {v2, v1}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object v2

    iput-object v2, p0, Lzh/g;->j:Lhi/C;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag number encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v2, v1}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object v2

    iput-object v2, p0, Lzh/g;->i:Lhi/F;

    goto :goto_2

    :cond_6
    invoke-static {v2, v1}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object v2

    iput-object v2, p0, Lzh/g;->h:Lhi/F;

    goto :goto_2

    :cond_7
    invoke-static {v2, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v2

    invoke-static {v2}, Lhi/W;->u(Ljava/lang/Object;)Lhi/W;

    move-result-object v2

    iput-object v2, p0, Lzh/g;->g:Lhi/W;

    goto :goto_2

    :cond_8
    invoke-static {v2, v1}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object v2

    iput-object v2, p0, Lzh/g;->f:Lhi/F;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method public static y(Ljava/lang/Object;)Lzh/g;
    .locals 1

    instance-of v0, p0, Lzh/g;

    if-eqz v0, :cond_0

    check-cast p0, Lzh/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lzh/g;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lzh/g;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Loh/M;Z)Lzh/g;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lzh/g;->y(Ljava/lang/Object;)Lzh/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lzh/g;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public B()Lhi/W;
    .locals 1

    iget-object v0, p0, Lzh/g;->g:Lhi/W;

    return-object v0
.end method

.method public C()Lzh/j;
    .locals 1

    iget-object v0, p0, Lzh/g;->e:Lzh/j;

    return-object v0
.end method

.method public D()Lhi/F;
    .locals 1

    iget-object v0, p0, Lzh/g;->f:Lhi/F;

    return-object v0
.end method

.method public E()Lzh/m;
    .locals 1

    iget-object v0, p0, Lzh/g;->c:Lzh/m;

    return-object v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lzh/g;->b:I

    return v0
.end method

.method public r()Loh/B;
    .locals 14

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    new-instance v5, Loh/h;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Loh/h;-><init>(I)V

    iget v6, p0, Lzh/g;->b:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    new-instance v6, Loh/s;

    iget v8, p0, Lzh/g;->b:I

    int-to-long v8, v8

    invoke-direct {v6, v8, v9}, Loh/s;-><init>(J)V

    invoke-virtual {v5, v6}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v6, p0, Lzh/g;->c:Lzh/m;

    invoke-virtual {v5, v6}, Loh/h;->a(Loh/g;)V

    iget-object v6, p0, Lzh/g;->d:Ljava/math/BigInteger;

    if-eqz v6, :cond_1

    new-instance v6, Loh/s;

    iget-object v8, p0, Lzh/g;->d:Ljava/math/BigInteger;

    invoke-direct {v6, v8}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v6}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v6, p0, Lzh/g;->e:Lzh/j;

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Loh/h;->a(Loh/g;)V

    :cond_2
    filled-new-array {v2, v7, v1, v4, v3}, [I

    move-result-object v6

    iget-object v8, p0, Lzh/g;->f:Lhi/F;

    iget-object v9, p0, Lzh/g;->g:Lhi/W;

    iget-object v10, p0, Lzh/g;->h:Lhi/F;

    iget-object v11, p0, Lzh/g;->i:Lhi/F;

    iget-object v12, p0, Lzh/g;->j:Lhi/C;

    new-array v13, v0, [Loh/g;

    aput-object v8, v13, v2

    aput-object v9, v13, v7

    aput-object v10, v13, v1

    aput-object v11, v13, v4

    aput-object v12, v13, v3

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    aget v3, v6, v1

    aget-object v4, v13, v1

    if-eqz v4, :cond_3

    new-instance v8, Loh/K0;

    invoke-direct {v8, v2, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v5, v8}, Loh/h;->a(Loh/g;)V

    :cond_3
    add-int/2addr v1, v7

    goto :goto_0

    :cond_4
    new-instance v0, Loh/G0;

    invoke-direct {v0, v5}, Loh/G0;-><init>(Loh/h;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DVCSRequestInformation {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lzh/g;->b:I

    const/4 v2, 0x1

    const-string v3, "\n"

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzh/g;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/g;->c:Lzh/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lzh/g;->d:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/g;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lzh/g;->e:Lzh/j;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/g;->e:Lzh/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lzh/g;->f:Lhi/F;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requester: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/g;->f:Lhi/F;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lzh/g;->g:Lhi/W;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/g;->g:Lhi/W;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lzh/g;->h:Lhi/F;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dvcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/g;->h:Lhi/F;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lzh/g;->i:Lhi/F;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataLocations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/g;->i:Lhi/F;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Lzh/g;->j:Lhi/C;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/g;->j:Lhi/C;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lhi/F;
    .locals 1

    iget-object v0, p0, Lzh/g;->h:Lhi/F;

    return-object v0
.end method

.method public v()Lhi/F;
    .locals 1

    iget-object v0, p0, Lzh/g;->i:Lhi/F;

    return-object v0
.end method

.method public x()Lhi/C;
    .locals 1

    iget-object v0, p0, Lzh/g;->j:Lhi/C;

    return-object v0
.end method
