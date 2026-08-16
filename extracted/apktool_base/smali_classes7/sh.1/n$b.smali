.class public Lsh/n$b;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsh/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Loh/s;

.field public final c:Lfi/d;

.field public final d:Loh/E;

.field public final e:Loh/G;


# direct methods
.method public constructor <init>(Lfi/d;Lhi/b;Loh/c;Loh/G;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {}, Lsh/n;->u()Loh/s;

    move-result-object v0

    iput-object v0, p0, Lsh/n$b;->b:Loh/s;

    iput-object p1, p0, Lsh/n$b;->c:Lfi/d;

    new-instance p1, Loh/G0;

    const/4 v0, 0x2

    new-array v0, v0, [Loh/g;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p1, v0}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, Lsh/n$b;->d:Loh/E;

    iput-object p4, p0, Lsh/n$b;->e:Loh/G;

    return-void
.end method

.method public synthetic constructor <init>(Lfi/d;Lhi/b;Loh/c;Loh/G;Lsh/n$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lsh/n$b;-><init>(Lfi/d;Lhi/b;Loh/c;Loh/G;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, Lsh/n$b;->b:Loh/s;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v1

    iput-object v1, p0, Lsh/n$b;->c:Lfi/d;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    iput-object v2, p0, Lsh/n$b;->d:Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    iput-object p1, p0, Lsh/n$b;->e:Loh/G;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect tag number on attributes for CertificationRequestInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect subjectPublicKeyInfo size for CertificationRequestInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size for CertificationRequestInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Loh/E;Lsh/n$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lsh/n$b;-><init>(Loh/E;)V

    return-void
.end method

.method private B()Loh/s;
    .locals 1

    iget-object v0, p0, Lsh/n$b;->b:Loh/s;

    return-object v0
.end method

.method public static synthetic u(Lsh/n$b;)Loh/s;
    .locals 0

    invoke-direct {p0}, Lsh/n$b;->B()Loh/s;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lsh/n$b;)Lfi/d;
    .locals 0

    invoke-direct {p0}, Lsh/n$b;->z()Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lsh/n$b;)Loh/G;
    .locals 0

    invoke-direct {p0}, Lsh/n$b;->y()Loh/G;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lsh/n$b;)Loh/E;
    .locals 0

    invoke-virtual {p0}, Lsh/n$b;->A()Loh/E;

    move-result-object p0

    return-object p0
.end method

.method private y()Loh/G;
    .locals 1

    iget-object v0, p0, Lsh/n$b;->e:Loh/G;

    return-object v0
.end method

.method private z()Lfi/d;
    .locals 1

    iget-object v0, p0, Lsh/n$b;->c:Lfi/d;

    return-object v0
.end method


# virtual methods
.method public final A()Loh/E;
    .locals 1

    iget-object v0, p0, Lsh/n$b;->d:Loh/E;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/n$b;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/n$b;->c:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/n$b;->d:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/K0;

    const/4 v2, 0x0

    iget-object v3, p0, Lsh/n$b;->e:Loh/G;

    invoke-direct {v1, v2, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method
