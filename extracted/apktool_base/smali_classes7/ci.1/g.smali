.class public Lci/g;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final g:Loh/x;


# instance fields
.field public b:Loh/s;

.field public c:Loh/E;

.field public d:Lci/e;

.field public e:Lci/f;

.field public f:Lci/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loh/x;

    const-string v1, "1.3.6.1.5.5.11.0.2.1"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lci/g;->g:Loh/x;

    return-void
.end method

.method public constructor <init>(Lci/e;Lci/f;Lci/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lci/g;->b:Loh/s;

    new-instance v0, Loh/G0;

    invoke-virtual {p3}, Lci/b;->v()Lhi/b;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/G0;-><init>(Loh/g;)V

    iput-object v0, p0, Lci/g;->c:Loh/E;

    iput-object p1, p0, Lci/g;->d:Lci/e;

    iput-object p2, p0, Lci/g;->e:Lci/f;

    new-instance p1, Lci/d;

    new-instance p2, Lci/c;

    invoke-direct {p2, p3}, Lci/c;-><init>(Lci/b;)V

    invoke-direct {p1, p2}, Lci/d;-><init>(Lci/c;)V

    iput-object p1, p0, Lci/g;->f:Lci/d;

    return-void
.end method

.method public constructor <init>(Lci/g;Lci/d;Lci/b;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lci/g;->b:Loh/s;

    iget-object v0, p1, Lci/g;->b:Loh/s;

    iput-object v0, p0, Lci/g;->b:Loh/s;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lci/b;->v()Lhi/b;

    move-result-object p3

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p1, Lci/g;->c:Loh/E;

    invoke-virtual {v1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v2, p3}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3}, Loh/h;->a(Loh/g;)V

    new-instance p3, Loh/G0;

    invoke-direct {p3, v0}, Loh/G0;-><init>(Loh/h;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p3, p1, Lci/g;->c:Loh/E;

    :goto_1
    iput-object p3, p0, Lci/g;->c:Loh/E;

    iget-object p3, p1, Lci/g;->d:Lci/e;

    iput-object p3, p0, Lci/g;->d:Lci/e;

    iget-object p1, p1, Lci/g;->e:Lci/f;

    iput-object p1, p0, Lci/g;->e:Lci/f;

    iput-object p2, p0, Lci/g;->f:Lci/d;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lci/g;->b:Loh/s;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong sequence size in constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Loh/s;->J(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-object v1, p0, Lci/g;->b:Loh/s;

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    iput-object v1, p0, Lci/g;->c:Loh/E;

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_5

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    instance-of v4, v3, Loh/M;

    if-eqz v4, :cond_4

    check-cast v3, Loh/M;

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v4

    if-eqz v4, :cond_3

    if-ne v4, v2, :cond_2

    invoke-static {v3, v0}, Lci/f;->y(Loh/M;Z)Lci/f;

    move-result-object v3

    iput-object v3, p0, Lci/g;->e:Lci/f;

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag in getInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v3, v0}, Lci/e;->w(Loh/M;Z)Lci/e;

    move-result-object v3

    iput-object v3, p0, Lci/g;->d:Lci/e;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object in getInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lci/d;->w(Ljava/lang/Object;)Lci/d;

    move-result-object p1

    iput-object p1, p0, Lci/g;->f:Lci/d;

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incompatible version"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lhi/b;Lci/e;Lci/f;Lci/d;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lci/g;->b:Loh/s;

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lci/g;->c:Loh/E;

    iput-object p2, p0, Lci/g;->d:Lci/e;

    iput-object p3, p0, Lci/g;->e:Lci/f;

    iput-object p4, p0, Lci/g;->f:Lci/d;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lci/g;
    .locals 1

    instance-of v0, p0, Lci/g;

    if-eqz v0, :cond_0

    check-cast p0, Lci/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lci/g;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lci/g;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Loh/M;Z)Lci/g;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lci/g;->y(Ljava/lang/Object;)Lci/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lci/g;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lci/g;->c:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lci/g;->d:Lci/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lci/g;->e:Lci/f;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lci/g;->f:Lci/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EvidenceRecord: Oid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lci/g;->g:Loh/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lci/b;Z)Lci/g;
    .locals 2

    if-eqz p2, :cond_0

    new-instance p2, Lci/c;

    invoke-direct {p2, p1}, Lci/c;-><init>(Lci/b;)V

    new-instance v0, Lci/g;

    iget-object v1, p0, Lci/g;->f:Lci/d;

    invoke-virtual {v1, p2}, Lci/d;->u(Lci/c;)Lci/d;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lci/g;-><init>(Lci/g;Lci/d;Lci/b;)V

    return-object v0

    :cond_0
    iget-object p2, p0, Lci/g;->f:Lci/d;

    invoke-virtual {p2}, Lci/d;->v()[Lci/c;

    move-result-object p2

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lci/c;->v()[Lci/b;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lci/b;->v()Lhi/b;

    move-result-object v0

    invoke-virtual {p1}, Lci/b;->v()Lhi/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p2, v1

    invoke-virtual {v1, p1}, Lci/c;->u(Lci/b;)Lci/c;

    move-result-object p1

    aput-object p1, p2, v0

    new-instance p1, Lci/g;

    new-instance v0, Lci/d;

    invoke-direct {v0, p2}, Lci/d;-><init>([Lci/c;)V

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lci/g;-><init>(Lci/g;Lci/d;Lci/b;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mismatch of digest algorithm in addArchiveTimeStamp"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v()Lci/d;
    .locals 1

    iget-object v0, p0, Lci/g;->f:Lci/d;

    return-object v0
.end method

.method public x()[Lhi/b;
    .locals 4

    iget-object v0, p0, Lci/g;->c:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lhi/b;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lci/g;->c:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
