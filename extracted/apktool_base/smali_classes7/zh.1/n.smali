.class public Lzh/n;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lzh/a;

.field public c:Loh/E;

.field public d:Lzh/l;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lzh/a;->w(Ljava/lang/Object;)Lzh/a;

    move-result-object v0

    iput-object v0, p0, Lzh/n;->b:Lzh/a;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lzh/n;->v(Loh/g;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lzh/n;->c:Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzh/n;->v(Loh/g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lzh/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lzh/n;-><init>(Lzh/a;[Lzh/a;Lzh/l;)V

    return-void
.end method

.method public constructor <init>(Lzh/a;Lzh/l;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lzh/n;-><init>(Lzh/a;[Lzh/a;Lzh/l;)V

    return-void
.end method

.method public constructor <init>(Lzh/a;[Lzh/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lzh/n;-><init>(Lzh/a;[Lzh/a;Lzh/l;)V

    return-void
.end method

.method public constructor <init>(Lzh/a;[Lzh/a;Lzh/l;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lzh/n;->b:Lzh/a;

    if-eqz p2, :cond_0

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, Lzh/n;->c:Loh/E;

    :cond_0
    iput-object p3, p0, Lzh/n;->d:Lzh/l;

    return-void
.end method

.method public static u(Loh/E;)[Lzh/n;
    .locals 4

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lzh/n;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lzh/n;->y(Ljava/lang/Object;)Lzh/n;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static y(Ljava/lang/Object;)Lzh/n;
    .locals 1

    instance-of v0, p0, Lzh/n;

    if-eqz v0, :cond_0

    check-cast p0, Lzh/n;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lzh/n;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lzh/n;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Loh/M;Z)Lzh/n;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lzh/n;->y(Ljava/lang/Object;)Lzh/n;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lzh/l;
    .locals 1

    iget-object v0, p0, Lzh/n;->d:Lzh/l;

    return-object v0
.end method

.method public B()Lzh/a;
    .locals 1

    iget-object v0, p0, Lzh/n;->b:Lzh/a;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lzh/n;->b:Lzh/a;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lzh/n;->c:Loh/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lzh/n;->d:Lzh/l;

    if-eqz v1, :cond_1

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TargetEtcChain {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/n;->b:Lzh/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lzh/n;->c:Loh/E;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chain: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzh/n;->c:Loh/E;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lzh/n;->d:Lzh/l;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pathProcInput: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzh/n;->d:Lzh/l;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Loh/g;)V
    .locals 3

    invoke-static {p1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p1

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzh/l;->z(Loh/M;Z)Lzh/l;

    move-result-object p1

    iput-object p1, p0, Lzh/n;->d:Lzh/l;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public x()[Lzh/a;
    .locals 1

    iget-object v0, p0, Lzh/n;->c:Loh/E;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lzh/a;->u(Loh/E;)[Lzh/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
