.class public Lhi/y;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/z;

.field public c:Lhi/c0;

.field public d:Lhi/F;


# direct methods
.method public constructor <init>(Lhi/z;Lhi/c0;Lhi/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/y;->b:Lhi/z;

    iput-object p2, p0, Lhi/y;->c:Lhi/c0;

    iput-object p3, p0, Lhi/y;->d:Lhi/F;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v2

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-static {v2, v0}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object v2

    iput-object v2, p0, Lhi/y;->d:Lhi/F;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered in structure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v3, Lhi/c0;

    invoke-static {v2, v0}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v2

    invoke-direct {v3, v2}, Lhi/c0;-><init>(Loh/c;)V

    iput-object v3, p0, Lhi/y;->c:Lhi/c0;

    goto :goto_1

    :cond_2
    invoke-static {v2, v4}, Lhi/z;->w(Loh/M;Z)Lhi/z;

    move-result-object v2

    iput-object v2, p0, Lhi/y;->b:Lhi/z;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static y(Ljava/lang/Object;)Lhi/y;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lhi/y;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, Lhi/y;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, Lhi/y;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DistributionPoint: "

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

    :cond_2
    :goto_0
    check-cast p0, Lhi/y;

    return-object p0
.end method

.method public static z(Loh/M;Z)Lhi/y;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/y;->y(Ljava/lang/Object;)Lhi/y;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lhi/c0;
    .locals 1

    iget-object v0, p0, Lhi/y;->c:Lhi/c0;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/y;->b:Lhi/z;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v1}, Loh/K0;-><init>(ILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/y;->c:Lhi/c0;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lhi/y;->d:Lhi/F;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lhi/y;->b:Lhi/z;

    if-eqz v2, :cond_0

    const-string v3, "distributionPoint"

    invoke-virtual {v2}, Lhi/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v3, v2}, Lhi/y;->u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lhi/y;->c:Lhi/c0;

    if-eqz v2, :cond_1

    const-string v3, "reasons"

    invoke-virtual {v2}, Loh/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v3, v2}, Lhi/y;->u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lhi/y;->d:Lhi/F;

    if-eqz v2, :cond_2

    const-string v3, "cRLIssuer"

    invoke-virtual {v2}, Lhi/F;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v3, v2}, Lhi/y;->u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public v()Lhi/F;
    .locals 1

    iget-object v0, p0, Lhi/y;->d:Lhi/F;

    return-object v0
.end method

.method public x()Lhi/z;
    .locals 1

    iget-object v0, p0, Lhi/y;->b:Lhi/z;

    return-object v0
.end method
