.class public final Lokhttp3/y;
.super Lokhttp3/D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/y$a;,
        Lokhttp3/y$b;
    }
.end annotation


# static fields
.field public static final f:Lokhttp3/x;

.field public static final g:Lokhttp3/x;

.field public static final h:Lokhttp3/x;

.field public static final i:Lokhttp3/x;

.field public static final j:Lokhttp3/x;

.field public static final k:[B

.field public static final l:[B

.field public static final m:[B


# instance fields
.field public final a:LTg/f;

.field public final b:Lokhttp3/x;

.field public final c:Lokhttp3/x;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/y$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/x;->c(Ljava/lang/String;)Lokhttp3/x;

    move-result-object v0

    sput-object v0, Lokhttp3/y;->f:Lokhttp3/x;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/x;->c(Ljava/lang/String;)Lokhttp3/x;

    move-result-object v0

    sput-object v0, Lokhttp3/y;->g:Lokhttp3/x;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/x;->c(Ljava/lang/String;)Lokhttp3/x;

    move-result-object v0

    sput-object v0, Lokhttp3/y;->h:Lokhttp3/x;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/x;->c(Ljava/lang/String;)Lokhttp3/x;

    move-result-object v0

    sput-object v0, Lokhttp3/y;->i:Lokhttp3/x;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/x;->c(Ljava/lang/String;)Lokhttp3/x;

    move-result-object v0

    sput-object v0, Lokhttp3/y;->j:Lokhttp3/x;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lokhttp3/y;->k:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lokhttp3/y;->l:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lokhttp3/y;->m:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(LTg/f;Lokhttp3/x;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTg/f;",
            "Lokhttp3/x;",
            "Ljava/util/List<",
            "Lokhttp3/y$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/D;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/y;->e:J

    iput-object p1, p0, Lokhttp3/y;->a:LTg/f;

    iput-object p2, p0, Lokhttp3/y;->b:Lokhttp3/x;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LTg/f;->b0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/x;->c(Ljava/lang/String;)Lokhttp3/x;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/y;->c:Lokhttp3/x;

    invoke-static {p3}, LGg/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/y;->d:Ljava/util/List;

    return-void
.end method

.method public static i(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    if-eq v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "%22"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "%0D"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "%0A"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private o(LTg/d;Z)J
    .locals 12
    .param p1    # LTg/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance p1, LTg/c;

    invoke-direct {p1}, LTg/c;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lokhttp3/y;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_6

    iget-object v6, p0, Lokhttp3/y;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/y$b;

    iget-object v7, v6, Lokhttp3/y$b;->a:Lokhttp3/u;

    iget-object v6, v6, Lokhttp3/y$b;->b:Lokhttp3/D;

    sget-object v8, Lokhttp3/y;->m:[B

    invoke-interface {p1, v8}, LTg/d;->write([B)LTg/d;

    iget-object v8, p0, Lokhttp3/y;->a:LTg/f;

    invoke-interface {p1, v8}, LTg/d;->D(LTg/f;)LTg/d;

    sget-object v8, Lokhttp3/y;->l:[B

    invoke-interface {p1, v8}, LTg/d;->write([B)LTg/d;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lokhttp3/u;->l()I

    move-result v8

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_1

    invoke-virtual {v7, v9}, Lokhttp3/u;->g(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v10

    sget-object v11, Lokhttp3/y;->k:[B

    invoke-interface {v10, v11}, LTg/d;->write([B)LTg/d;

    move-result-object v10

    invoke-virtual {v7, v9}, Lokhttp3/u;->n(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v10

    sget-object v11, Lokhttp3/y;->l:[B

    invoke-interface {v10, v11}, LTg/d;->write([B)LTg/d;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lokhttp3/D;->b()Lokhttp3/x;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v8

    invoke-virtual {v7}, Lokhttp3/x;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v7

    sget-object v8, Lokhttp3/y;->l:[B

    invoke-interface {v7, v8}, LTg/d;->write([B)LTg/d;

    :cond_2
    invoke-virtual {v6}, Lokhttp3/D;->a()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    invoke-interface {p1, v9}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v9

    invoke-interface {v9, v7, v8}, LTg/d;->J(J)LTg/d;

    move-result-object v9

    sget-object v10, Lokhttp3/y;->l:[B

    invoke-interface {v9, v10}, LTg/d;->write([B)LTg/d;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, LTg/c;->c()V

    return-wide v9

    :cond_4
    :goto_3
    sget-object v9, Lokhttp3/y;->l:[B

    invoke-interface {p1, v9}, LTg/d;->write([B)LTg/d;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    :cond_5
    invoke-virtual {v6, p1}, Lokhttp3/D;->h(LTg/d;)V

    :goto_4
    invoke-interface {p1, v9}, LTg/d;->write([B)LTg/d;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    sget-object v1, Lokhttp3/y;->m:[B

    invoke-interface {p1, v1}, LTg/d;->write([B)LTg/d;

    iget-object v2, p0, Lokhttp3/y;->a:LTg/f;

    invoke-interface {p1, v2}, LTg/d;->D(LTg/f;)LTg/d;

    invoke-interface {p1, v1}, LTg/d;->write([B)LTg/d;

    sget-object v1, Lokhttp3/y;->l:[B

    invoke-interface {p1, v1}, LTg/d;->write([B)LTg/d;

    if-eqz p2, :cond_7

    invoke-virtual {v0}, LTg/c;->Q()J

    move-result-wide p1

    add-long/2addr v3, p1

    invoke-virtual {v0}, LTg/c;->c()V

    :cond_7
    return-wide v3
.end method


# virtual methods
.method public a()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lokhttp3/y;->e:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/y;->o(LTg/d;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/y;->e:J

    return-wide v0
.end method

.method public b()Lokhttp3/x;
    .locals 1

    iget-object v0, p0, Lokhttp3/y;->c:Lokhttp3/x;

    return-object v0
.end method

.method public h(LTg/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/y;->o(LTg/d;Z)J

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/y;->a:LTg/f;

    invoke-virtual {v0}, LTg/f;->b0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Lokhttp3/y$b;
    .locals 1

    iget-object v0, p0, Lokhttp3/y;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/y$b;

    return-object p1
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/y$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/y;->d:Ljava/util/List;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lokhttp3/y;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public n()Lokhttp3/x;
    .locals 1

    iget-object v0, p0, Lokhttp3/y;->b:Lokhttp3/x;

    return-object v0
.end method
