.class public Lql/I$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lql/H;

.field public b:I

.field public c:I

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:Lql/a;

.field public i:[B


# direct methods
.method public constructor <init>(Lql/H;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lql/I$b;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lql/I$b;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lql/I$b;->d:[B

    iput-object v0, p0, Lql/I$b;->e:[B

    iput-object v0, p0, Lql/I$b;->f:[B

    iput-object v0, p0, Lql/I$b;->g:[B

    iput-object v0, p0, Lql/I$b;->h:Lql/a;

    iput-object v0, p0, Lql/I$b;->i:[B

    iput-object p1, p0, Lql/I$b;->a:Lql/H;

    return-void
.end method

.method public static synthetic a(Lql/I$b;)Lql/H;
    .locals 0

    iget-object p0, p0, Lql/I$b;->a:Lql/H;

    return-object p0
.end method

.method public static synthetic b(Lql/I$b;)[B
    .locals 0

    iget-object p0, p0, Lql/I$b;->i:[B

    return-object p0
.end method

.method public static synthetic c(Lql/I$b;)[B
    .locals 0

    iget-object p0, p0, Lql/I$b;->d:[B

    return-object p0
.end method

.method public static synthetic d(Lql/I$b;)[B
    .locals 0

    iget-object p0, p0, Lql/I$b;->e:[B

    return-object p0
.end method

.method public static synthetic e(Lql/I$b;)[B
    .locals 0

    iget-object p0, p0, Lql/I$b;->f:[B

    return-object p0
.end method

.method public static synthetic f(Lql/I$b;)[B
    .locals 0

    iget-object p0, p0, Lql/I$b;->g:[B

    return-object p0
.end method

.method public static synthetic g(Lql/I$b;)Lql/a;
    .locals 0

    iget-object p0, p0, Lql/I$b;->h:Lql/a;

    return-object p0
.end method

.method public static synthetic h(Lql/I$b;)I
    .locals 0

    iget p0, p0, Lql/I$b;->b:I

    return p0
.end method

.method public static synthetic i(Lql/I$b;)I
    .locals 0

    iget p0, p0, Lql/I$b;->c:I

    return p0
.end method


# virtual methods
.method public j()Lql/I;
    .locals 2

    new-instance v0, Lql/I;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lql/I;-><init>(Lql/I$b;Lql/I$a;)V

    return-object v0
.end method

.method public k(Lql/a;)Lql/I$b;
    .locals 0

    iput-object p1, p0, Lql/I$b;->h:Lql/a;

    return-object p0
.end method

.method public l(I)Lql/I$b;
    .locals 0

    iput p1, p0, Lql/I$b;->b:I

    return-object p0
.end method

.method public m(I)Lql/I$b;
    .locals 0

    iput p1, p0, Lql/I$b;->c:I

    return-object p0
.end method

.method public n([B)Lql/I$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/I$b;->i:[B

    return-object p0
.end method

.method public o([B)Lql/I$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/I$b;->f:[B

    return-object p0
.end method

.method public p([B)Lql/I$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/I$b;->g:[B

    return-object p0
.end method

.method public q([B)Lql/I$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/I$b;->e:[B

    return-object p0
.end method

.method public r([B)Lql/I$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/I$b;->d:[B

    return-object p0
.end method
