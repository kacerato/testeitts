.class public Lhi/N;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:I = 0x80

.field public static final d:I = 0x40

.field public static final e:I = 0x20

.field public static final f:I = 0x10

.field public static final g:I = 0x8

.field public static final h:I = 0x4

.field public static final i:I = 0x2

.field public static final j:I = 0x1

.field public static final k:I = 0x8000


# instance fields
.field public b:Loh/c;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/r0;

    invoke-direct {v0, p1}, Loh/r0;-><init>(I)V

    iput-object v0, p0, Lhi/N;->b:Loh/c;

    return-void
.end method

.method public constructor <init>(Loh/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/N;->b:Loh/c;

    return-void
.end method

.method public static u(Lhi/C;)Lhi/N;
    .locals 1

    sget-object v0, Lhi/B;->g:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/N;->w(Ljava/lang/Object;)Lhi/N;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;)Lhi/N;
    .locals 1

    instance-of v0, p0, Lhi/N;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/N;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/N;

    invoke-static {p0}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/N;-><init>(Loh/c;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public n()I
    .locals 1

    iget-object v0, p0, Lhi/N;->b:Loh/c;

    invoke-virtual {v0}, Loh/c;->n()I

    move-result v0

    return v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/N;->b:Loh/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lhi/N;->b:Loh/c;

    invoke-virtual {v0}, Loh/c;->F()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const-string v3, "KeyUsage: 0x"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    goto :goto_0
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, Lhi/N;->b:Loh/c;

    invoke-virtual {v0}, Loh/c;->F()[B

    move-result-object v0

    return-object v0
.end method

.method public x(I)Z
    .locals 1

    iget-object v0, p0, Lhi/N;->b:Loh/c;

    invoke-virtual {v0}, Loh/c;->L()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
