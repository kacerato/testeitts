.class public LMh/g;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lfi/b;

.field public d:Lhi/E;

.field public e:Lhi/K;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfi/b;Lhi/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LMh/g;->b:Ljava/lang/String;

    iput-object p2, p0, LMh/g;->c:Lfi/b;

    iput-object p3, p0, LMh/g;->d:Lhi/E;

    const/4 p1, 0x0

    iput-object p1, p0, LMh/g;->e:Lhi/K;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfi/b;Lhi/K;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LMh/g;->b:Ljava/lang/String;

    iput-object p2, p0, LMh/g;->c:Lfi/b;

    const/4 p1, 0x0

    iput-object p1, p0, LMh/g;->d:Lhi/E;

    iput-object p3, p0, LMh/g;->e:Lhi/K;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_5

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x80

    invoke-static {v0, v3}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object v0

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v3

    if-eq v3, v1, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-ne v3, v2, :cond_1

    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    instance-of v3, v0, Loh/M;

    if-eqz v3, :cond_0

    invoke-static {v0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v0

    iput-object v0, p0, LMh/g;->d:Lhi/E;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lhi/K;->u(Ljava/lang/Object;)Lhi/K;

    move-result-object v0

    iput-object v0, p0, LMh/g;->e:Lhi/K;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v0, v1}, Lfi/b;->v(Loh/M;Z)Lfi/b;

    move-result-object v0

    iput-object v0, p0, LMh/g;->c:Lfi/b;

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Loh/C;->G(Loh/M;Z)Loh/C;

    move-result-object v0

    invoke-virtual {v0}, Loh/C;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LMh/g;->b:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(Ljava/lang/Object;)LMh/g;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, LMh/g;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, LMh/g;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, LMh/g;-><init>(Loh/E;)V

    return-object v0

    :cond_1
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

    :cond_2
    :goto_0
    check-cast p0, LMh/g;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 6

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v2, p0, LMh/g;->b:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Loh/K0;

    new-instance v4, Loh/F0;

    iget-object v5, p0, LMh/g;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Loh/F0;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v2, p0, LMh/g;->c:Lfi/b;

    if-eqz v2, :cond_1

    new-instance v4, Loh/K0;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v2, p0, LMh/g;->d:Lhi/E;

    if-eqz v2, :cond_2

    new-instance v4, Loh/K0;

    invoke-direct {v4, v3, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_2
    new-instance v2, Loh/K0;

    iget-object v4, p0, LMh/g;->e:Lhi/K;

    invoke-direct {v2, v3, v1, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :goto_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/K;
    .locals 1

    iget-object v0, p0, LMh/g;->e:Lhi/K;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LMh/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public x()Lhi/E;
    .locals 1

    iget-object v0, p0, LMh/g;->d:Lhi/E;

    return-object v0
.end method

.method public y()Lfi/b;
    .locals 1

    iget-object v0, p0, LMh/g;->c:Lfi/b;

    return-object v0
.end method
