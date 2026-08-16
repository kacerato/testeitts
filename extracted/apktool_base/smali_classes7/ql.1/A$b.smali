.class public Lql/A$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lql/z;

.field public b:J

.field public c:J

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:Lql/b;

.field public i:[B

.field public j:Lql/H;


# direct methods
.method public constructor <init>(Lql/z;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lql/A$b;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lql/A$b;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lql/A$b;->d:[B

    iput-object v0, p0, Lql/A$b;->e:[B

    iput-object v0, p0, Lql/A$b;->f:[B

    iput-object v0, p0, Lql/A$b;->g:[B

    iput-object v0, p0, Lql/A$b;->h:Lql/b;

    iput-object v0, p0, Lql/A$b;->i:[B

    iput-object v0, p0, Lql/A$b;->j:Lql/H;

    iput-object p1, p0, Lql/A$b;->a:Lql/z;

    return-void
.end method

.method public static synthetic a(Lql/A$b;)Lql/z;
    .locals 0

    iget-object p0, p0, Lql/A$b;->a:Lql/z;

    return-object p0
.end method

.method public static synthetic b(Lql/A$b;)[B
    .locals 0

    iget-object p0, p0, Lql/A$b;->i:[B

    return-object p0
.end method

.method public static synthetic c(Lql/A$b;)Lql/H;
    .locals 0

    iget-object p0, p0, Lql/A$b;->j:Lql/H;

    return-object p0
.end method

.method public static synthetic d(Lql/A$b;)J
    .locals 2

    iget-wide v0, p0, Lql/A$b;->b:J

    return-wide v0
.end method

.method public static synthetic e(Lql/A$b;)[B
    .locals 0

    iget-object p0, p0, Lql/A$b;->d:[B

    return-object p0
.end method

.method public static synthetic f(Lql/A$b;)[B
    .locals 0

    iget-object p0, p0, Lql/A$b;->e:[B

    return-object p0
.end method

.method public static synthetic g(Lql/A$b;)[B
    .locals 0

    iget-object p0, p0, Lql/A$b;->f:[B

    return-object p0
.end method

.method public static synthetic h(Lql/A$b;)[B
    .locals 0

    iget-object p0, p0, Lql/A$b;->g:[B

    return-object p0
.end method

.method public static synthetic i(Lql/A$b;)Lql/b;
    .locals 0

    iget-object p0, p0, Lql/A$b;->h:Lql/b;

    return-object p0
.end method

.method public static synthetic j(Lql/A$b;)J
    .locals 2

    iget-wide v0, p0, Lql/A$b;->c:J

    return-wide v0
.end method


# virtual methods
.method public k()Lql/A;
    .locals 2

    new-instance v0, Lql/A;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lql/A;-><init>(Lql/A$b;Lql/A$a;)V

    return-object v0
.end method

.method public l(Lql/b;)Lql/A$b;
    .locals 6

    invoke-virtual {p1}, Lql/b;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lql/b;

    iget-object v1, p0, Lql/A$b;->a:Lql/z;

    invoke-virtual {v1}, Lql/z;->a()I

    move-result v1

    const-wide/16 v2, 0x1

    shl-long v4, v2, v1

    sub-long/2addr v4, v2

    invoke-direct {v0, p1, v4, v5}, Lql/b;-><init>(Lql/b;J)V

    iput-object v0, p0, Lql/A$b;->h:Lql/b;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lql/A$b;->h:Lql/b;

    :goto_0
    return-object p0
.end method

.method public m(J)Lql/A$b;
    .locals 0

    iput-wide p1, p0, Lql/A$b;->b:J

    return-object p0
.end method

.method public n(J)Lql/A$b;
    .locals 0

    iput-wide p1, p0, Lql/A$b;->c:J

    return-object p0
.end method

.method public o([B)Lql/A$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/A$b;->i:[B

    iget-object p1, p0, Lql/A$b;->a:Lql/z;

    invoke-virtual {p1}, Lql/z;->j()Lql/H;

    move-result-object p1

    iput-object p1, p0, Lql/A$b;->j:Lql/H;

    return-object p0
.end method

.method public p([B)Lql/A$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/A$b;->f:[B

    return-object p0
.end method

.method public q([B)Lql/A$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/A$b;->g:[B

    return-object p0
.end method

.method public r([B)Lql/A$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/A$b;->e:[B

    return-object p0
.end method

.method public s([B)Lql/A$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/A$b;->d:[B

    return-object p0
.end method
