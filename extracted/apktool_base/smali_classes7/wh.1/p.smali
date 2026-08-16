.class public Lwh/p;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final d:Loh/s;

.field public static final e:Loh/s;


# instance fields
.field public b:Loh/s;

.field public c:Loh/E;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Lwh/p;->d:Loh/s;

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Lwh/p;->e:Loh/s;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    new-instance v0, Loh/s;

    invoke-direct {v0, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lwh/p;-><init>(Loh/s;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lwh/p;->b:Loh/s;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, Lwh/p;->c:Loh/E;

    :cond_0
    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/p;->b:Loh/s;

    return-void
.end method

.method public constructor <init>(Lwh/v;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Lwh/v;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lwh/p;-><init>([Lwh/v;)V

    return-void
.end method

.method public constructor <init>([Lwh/v;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, Lwh/p;->e:Loh/s;

    iput-object v0, p0, Lwh/p;->b:Loh/s;

    if-eqz p1, :cond_0

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lwh/p;->c:Loh/E;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lwh/p;->c:Loh/E;

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/Object;)Lwh/p;
    .locals 1

    instance-of v0, p0, Lwh/p;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/p;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/p;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/p;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lwh/p;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lwh/p;->c:Loh/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/s;
    .locals 1

    iget-object v0, p0, Lwh/p;->b:Loh/s;

    return-object v0
.end method

.method public x()[Lwh/v;
    .locals 4

    iget-object v0, p0, Lwh/p;->c:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lwh/v;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lwh/p;->c:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lwh/v;->u(Ljava/lang/Object;)Lwh/v;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
