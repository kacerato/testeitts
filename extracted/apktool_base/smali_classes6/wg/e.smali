.class public Lwg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lwg/e;->c:Ljava/lang/String;

    .line 3
    const-string v1, "UTF-8"

    iput-object v1, p0, Lwg/e;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lwg/e;->a:[B

    const/16 v1, 0x3e8

    .line 5
    iput v1, p0, Lwg/e;->b:I

    .line 6
    iput-object v0, p0, Lwg/e;->e:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lwg/e;-><init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lwg/e;->c:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lwg/e;->d:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lwg/e;->a:[B

    .line 12
    iput p4, p0, Lwg/e;->b:I

    .line 13
    iput-object p5, p0, Lwg/e;->e:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lwg/e;->e:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwg/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwg/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lwg/e;->b:I

    return v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lwg/e;->a:[B

    return-object v0
.end method

.method public f([B)V
    .locals 0

    iput-object p1, p0, Lwg/e;->e:[B

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwg/e;->c:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwg/e;->d:Ljava/lang/String;

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lwg/e;->b:I

    return-void
.end method

.method public j([B)V
    .locals 0

    iput-object p1, p0, Lwg/e;->a:[B

    return-void
.end method
