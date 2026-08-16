.class public Lql/J$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lql/H;

.field public b:[B

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Lql/H;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lql/J$b;->b:[B

    iput-object v0, p0, Lql/J$b;->c:[B

    iput-object v0, p0, Lql/J$b;->d:[B

    iput-object p1, p0, Lql/J$b;->a:Lql/H;

    return-void
.end method

.method public static synthetic a(Lql/J$b;)Lql/H;
    .locals 0

    iget-object p0, p0, Lql/J$b;->a:Lql/H;

    return-object p0
.end method

.method public static synthetic b(Lql/J$b;)[B
    .locals 0

    iget-object p0, p0, Lql/J$b;->d:[B

    return-object p0
.end method

.method public static synthetic c(Lql/J$b;)[B
    .locals 0

    iget-object p0, p0, Lql/J$b;->b:[B

    return-object p0
.end method

.method public static synthetic d(Lql/J$b;)[B
    .locals 0

    iget-object p0, p0, Lql/J$b;->c:[B

    return-object p0
.end method


# virtual methods
.method public e()Lql/J;
    .locals 2

    new-instance v0, Lql/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lql/J;-><init>(Lql/J$b;Lql/J$a;)V

    return-object v0
.end method

.method public f([B)Lql/J$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/J$b;->d:[B

    return-object p0
.end method

.method public g([B)Lql/J$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/J$b;->c:[B

    return-object p0
.end method

.method public h([B)Lql/J$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/J$b;->b:[B

    return-object p0
.end method
