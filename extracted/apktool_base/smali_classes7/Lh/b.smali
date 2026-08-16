.class public LLh/b;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final e:I = -0x1

.field public static final f:I = 0x0

.field public static final g:I = 0x1


# instance fields
.field public b:Lhi/q;

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    .line 1
    new-instance v0, Loh/K0;

    new-instance v1, Loh/C0;

    invoke-direct {v1, p2}, Loh/C0;-><init>([B)V

    invoke-direct {v0, p1, v1}, Loh/K0;-><init>(ILoh/g;)V

    invoke-direct {p0, v0}, LLh/b;-><init>(Loh/M;)V

    return-void
.end method

.method public constructor <init>(Lhi/q;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LLh/b;->b:Lhi/q;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, LLh/b;->c:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p1, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, LLh/b;->d:[B

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v(Ljava/lang/Object;)LLh/b;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, LLh/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, LLh/b;

    invoke-static {p0}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p0

    invoke-direct {v0, p0}, LLh/b;-><init>(Lhi/q;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_2

    new-instance v0, LLh/b;

    check-cast p0, Loh/M;

    invoke-direct {v0, p0}, LLh/b;-><init>(Loh/M;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, LLh/b;

    return-object p0
.end method

.method public static w(Loh/M;Z)LLh/b;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, LLh/b;->v(Ljava/lang/Object;)LLh/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    iget-object v0, p0, LLh/b;->c:[B

    if-eqz v0, :cond_0

    new-instance v0, Loh/K0;

    new-instance v1, Loh/C0;

    iget-object v2, p0, LLh/b;->c:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Loh/K0;-><init>(ILoh/g;)V

    return-object v0

    :cond_0
    iget-object v0, p0, LLh/b;->d:[B

    if-eqz v0, :cond_1

    new-instance v0, Loh/K0;

    new-instance v1, Loh/C0;

    iget-object v2, p0, LLh/b;->d:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Loh/K0;-><init>(ILoh/g;)V

    return-object v0

    :cond_1
    iget-object v0, p0, LLh/b;->b:Lhi/q;

    invoke-virtual {v0}, Lhi/q;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public u()[B
    .locals 4

    iget-object v0, p0, LLh/b;->b:Lhi/q;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t decode certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, LLh/b;->c:[B

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, LLh/b;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, LLh/b;->b:Lhi/q;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, LLh/b;->c:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
