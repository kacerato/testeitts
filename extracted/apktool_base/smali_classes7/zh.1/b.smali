.class public Lzh/b;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final l:I = 0x1

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3


# instance fields
.field public b:I

.field public c:Lzh/g;

.field public d:Lhi/w;

.field public e:Loh/s;

.field public f:Lzh/j;

.field public g:Lth/L;

.field public h:Lhi/W;

.field public i:Loh/G;

.field public j:Loh/E;

.field public k:Lhi/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lzh/b;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v4

    invoke-virtual {v4}, Loh/s;->O()I

    move-result v4

    iput v4, p0, Lzh/b;->b:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v4, v3

    goto :goto_0

    :catch_1
    move v4, v0

    :goto_0
    invoke-static {v2}, Lzh/g;->y(Ljava/lang/Object;)Lzh/g;

    move-result-object v2

    iput-object v2, p0, Lzh/b;->c:Lzh/g;

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Lhi/w;->w(Ljava/lang/Object;)Lhi/w;

    move-result-object v5

    iput-object v5, p0, Lzh/b;->d:Lhi/w;

    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v2

    iput-object v2, p0, Lzh/b;->e:Loh/s;

    const/4 v2, 0x3

    add-int/2addr v4, v2

    invoke-virtual {p1, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Lzh/j;->v(Ljava/lang/Object;)Lzh/j;

    move-result-object v5

    iput-object v5, p0, Lzh/b;->f:Lzh/j;

    :goto_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    instance-of v6, v4, Loh/M;

    if-eqz v6, :cond_4

    invoke-static {v4}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v4

    invoke-virtual {v4}, Loh/M;->g()I

    move-result v6

    if-eqz v6, :cond_3

    if-eq v6, v0, :cond_2

    if-eq v6, v3, :cond_1

    if-ne v6, v2, :cond_0

    invoke-static {v4, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v4

    iput-object v4, p0, Lzh/b;->j:Loh/E;

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v4, v1}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v4

    iput-object v4, p0, Lzh/b;->i:Loh/G;

    goto :goto_2

    :cond_2
    invoke-static {v4, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v4

    invoke-static {v4}, Lhi/W;->u(Ljava/lang/Object;)Lhi/W;

    move-result-object v4

    iput-object v4, p0, Lzh/b;->h:Lhi/W;

    goto :goto_2

    :cond_3
    invoke-static {v4, v1}, Lth/L;->w(Loh/M;Z)Lth/L;

    move-result-object v4

    iput-object v4, p0, Lzh/b;->g:Lth/L;

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-static {v4}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object v4

    iput-object v4, p0, Lzh/b;->k:Lhi/C;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_2
    move v4, v5

    goto :goto_1

    :cond_5
    return-void
.end method

.method public constructor <init>(Lzh/g;Lhi/w;Loh/s;Lzh/j;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lzh/b;->b:I

    iput-object p1, p0, Lzh/b;->c:Lzh/g;

    iput-object p2, p0, Lzh/b;->d:Lhi/w;

    iput-object p3, p0, Lzh/b;->e:Loh/s;

    iput-object p4, p0, Lzh/b;->f:Lzh/j;

    return-void
.end method

.method public static A(Loh/M;Z)Lzh/b;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lzh/b;->z(Ljava/lang/Object;)Lzh/b;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Object;)Lzh/b;
    .locals 1

    instance-of v0, p0, Lzh/b;

    if-eqz v0, :cond_0

    check-cast p0, Lzh/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lzh/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lzh/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Lhi/w;
    .locals 1

    iget-object v0, p0, Lzh/b;->d:Lhi/w;

    return-object v0
.end method

.method public C()Lhi/W;
    .locals 1

    iget-object v0, p0, Lzh/b;->h:Lhi/W;

    return-object v0
.end method

.method public D()Loh/G;
    .locals 1

    iget-object v0, p0, Lzh/b;->i:Loh/G;

    return-object v0
.end method

.method public E()Lzh/j;
    .locals 1

    iget-object v0, p0, Lzh/b;->f:Lzh/j;

    return-object v0
.end method

.method public F()Loh/s;
    .locals 1

    iget-object v0, p0, Lzh/b;->e:Loh/s;

    return-object v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lzh/b;->b:I

    return v0
.end method

.method public final H(Lzh/g;)V
    .locals 0

    iput-object p1, p0, Lzh/b;->c:Lzh/g;

    return-void
.end method

.method public final I(Lhi/w;)V
    .locals 0

    iput-object p1, p0, Lzh/b;->d:Lhi/w;

    return-void
.end method

.method public final J(I)V
    .locals 0

    iput p1, p0, Lzh/b;->b:I

    return-void
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget v1, p0, Lzh/b;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Loh/s;

    iget v3, p0, Lzh/b;->b:I

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lzh/b;->c:Lzh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lzh/b;->d:Lhi/w;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lzh/b;->e:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lzh/b;->f:Lzh/j;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lzh/b;->g:Lth/L;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v4, Loh/K0;

    invoke-direct {v4, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lzh/b;->h:Lhi/W;

    if-eqz v1, :cond_2

    new-instance v4, Loh/K0;

    invoke-direct {v4, v3, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Lzh/b;->i:Loh/G;

    if-eqz v1, :cond_3

    new-instance v2, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_3
    iget-object v1, p0, Lzh/b;->j:Loh/E;

    if-eqz v1, :cond_4

    new-instance v2, Loh/K0;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_4
    iget-object v1, p0, Lzh/b;->k:Lhi/C;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_5
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DVCSCertInfo {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lzh/b;->b:I

    const/4 v2, 0x1

    const-string v3, "\n"

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzh/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dvReqInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/b;->c:Lzh/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageImprint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/b;->d:Lhi/w;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/b;->e:Loh/s;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/b;->f:Lzh/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lzh/b;->g:Lth/L;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dvStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/b;->g:Lth/L;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lzh/b;->h:Lhi/W;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/b;->h:Lhi/W;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lzh/b;->i:Loh/G;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqSignature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/b;->i:Loh/G;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lzh/b;->j:Loh/E;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/b;->j:Loh/E;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lzh/b;->k:Lhi/C;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/b;->k:Lhi/C;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()[Lzh/n;
    .locals 1

    iget-object v0, p0, Lzh/b;->j:Loh/E;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lzh/n;->u(Loh/E;)[Lzh/n;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Lzh/g;
    .locals 1

    iget-object v0, p0, Lzh/b;->c:Lzh/g;

    return-object v0
.end method

.method public x()Lth/L;
    .locals 1

    iget-object v0, p0, Lzh/b;->g:Lth/L;

    return-object v0
.end method

.method public y()Lhi/C;
    .locals 1

    iget-object v0, p0, Lzh/b;->k:Lhi/C;

    return-object v0
.end method
