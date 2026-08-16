.class public Lql/C$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lql/z;

.field public b:J

.field public c:[B

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lql/K;",
            ">;"
        }
    .end annotation
.end field

.field public e:[B


# direct methods
.method public constructor <init>(Lql/z;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lql/C$b;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lql/C$b;->c:[B

    iput-object v0, p0, Lql/C$b;->d:Ljava/util/List;

    iput-object v0, p0, Lql/C$b;->e:[B

    iput-object p1, p0, Lql/C$b;->a:Lql/z;

    return-void
.end method

.method public static synthetic a(Lql/C$b;)Lql/z;
    .locals 0

    iget-object p0, p0, Lql/C$b;->a:Lql/z;

    return-object p0
.end method

.method public static synthetic b(Lql/C$b;)[B
    .locals 0

    iget-object p0, p0, Lql/C$b;->e:[B

    return-object p0
.end method

.method public static synthetic c(Lql/C$b;)J
    .locals 2

    iget-wide v0, p0, Lql/C$b;->b:J

    return-wide v0
.end method

.method public static synthetic d(Lql/C$b;)[B
    .locals 0

    iget-object p0, p0, Lql/C$b;->c:[B

    return-object p0
.end method

.method public static synthetic e(Lql/C$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lql/C$b;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public f()Lql/C;
    .locals 2

    new-instance v0, Lql/C;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lql/C;-><init>(Lql/C$b;Lql/C$a;)V

    return-object v0
.end method

.method public g(J)Lql/C$b;
    .locals 0

    iput-wide p1, p0, Lql/C$b;->b:J

    return-object p0
.end method

.method public h([B)Lql/C$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/C$b;->c:[B

    return-object p0
.end method

.method public i(Ljava/util/List;)Lql/C$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lql/K;",
            ">;)",
            "Lql/C$b;"
        }
    .end annotation

    iput-object p1, p0, Lql/C$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public j([B)Lql/C$b;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/C$b;->e:[B

    return-object p0
.end method
