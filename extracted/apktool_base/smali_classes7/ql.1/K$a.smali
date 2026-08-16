.class public Lql/K$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lql/H;

.field public b:Lql/p;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lql/E;",
            ">;"
        }
    .end annotation
.end field

.field public d:[B


# direct methods
.method public constructor <init>(Lql/H;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lql/K$a;->b:Lql/p;

    iput-object v0, p0, Lql/K$a;->c:Ljava/util/List;

    iput-object v0, p0, Lql/K$a;->d:[B

    iput-object p1, p0, Lql/K$a;->a:Lql/H;

    return-void
.end method

.method public static synthetic a(Lql/K$a;)Lql/H;
    .locals 0

    iget-object p0, p0, Lql/K$a;->a:Lql/H;

    return-object p0
.end method

.method public static synthetic b(Lql/K$a;)[B
    .locals 0

    iget-object p0, p0, Lql/K$a;->d:[B

    return-object p0
.end method

.method public static synthetic c(Lql/K$a;)Lql/p;
    .locals 0

    iget-object p0, p0, Lql/K$a;->b:Lql/p;

    return-object p0
.end method

.method public static synthetic d(Lql/K$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lql/K$a;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public e()Lql/K;
    .locals 1

    new-instance v0, Lql/K;

    invoke-direct {v0, p0}, Lql/K;-><init>(Lql/K$a;)V

    return-object v0
.end method

.method public f(Ljava/util/List;)Lql/K$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lql/E;",
            ">;)",
            "Lql/K$a;"
        }
    .end annotation

    iput-object p1, p0, Lql/K$a;->c:Ljava/util/List;

    return-object p0
.end method

.method public g([B)Lql/K$a;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/K$a;->d:[B

    return-object p0
.end method

.method public h(Lql/p;)Lql/K$a;
    .locals 0

    iput-object p1, p0, Lql/K$a;->b:Lql/p;

    return-object p0
.end method
