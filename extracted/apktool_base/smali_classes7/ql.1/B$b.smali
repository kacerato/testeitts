.class public Lql/B$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lql/z;

.field public b:[B

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Lql/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lql/B$b;->b:[B

    iput-object v0, p0, Lql/B$b;->c:[B

    iput-object v0, p0, Lql/B$b;->d:[B

    iput-object p1, p0, Lql/B$b;->a:Lql/z;

    return-void
.end method

.method public static synthetic a(Lql/B$b;)Lql/z;
    .locals 0

    iget-object p0, p0, Lql/B$b;->a:Lql/z;

    return-object p0
.end method

.method public static synthetic b(Lql/B$b;)[B
    .locals 0

    iget-object p0, p0, Lql/B$b;->d:[B

    return-object p0
.end method

.method public static synthetic c(Lql/B$b;)[B
    .locals 0

    iget-object p0, p0, Lql/B$b;->b:[B

    return-object p0
.end method

.method public static synthetic d(Lql/B$b;)[B
    .locals 0

    iget-object p0, p0, Lql/B$b;->c:[B

    return-object p0
.end method


# virtual methods
.method public e()Lql/B;
    .locals 2

    new-instance v0, Lql/B;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lql/B;-><init>(Lql/B$b;Lql/B$a;)V

    return-object v0
.end method

.method public f([B)Lql/B$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/B$b;->d:[B

    return-object p0
.end method

.method public g([B)Lql/B$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/B$b;->c:[B

    return-object p0
.end method

.method public h([B)Lql/B$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/B$b;->b:[B

    return-object p0
.end method
