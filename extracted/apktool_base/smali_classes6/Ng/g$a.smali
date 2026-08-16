.class public final LNg/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTg/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:LTg/e;

.field public c:I

.field public d:B

.field public e:I

.field public f:I

.field public g:S


# direct methods
.method public constructor <init>(LTg/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNg/g$a;->b:LTg/e;

    return-void
.end method


# virtual methods
.method public K(LTg/c;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, LNg/g$a;->f:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, LNg/g$a;->b:LTg/e;

    iget-short v3, p0, LNg/g$a;->g:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, LTg/e;->skip(J)V

    const/4 v0, 0x0

    iput-short v0, p0, LNg/g$a;->g:S

    iget-byte v0, p0, LNg/g$a;->d:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, LNg/g$a;->c()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, LNg/g$a;->b:LTg/e;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, LTg/y;->K(LTg/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    :cond_2
    iget p3, p0, LNg/g$a;->f:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, LNg/g$a;->f:I

    return-wide p1
.end method

.method public a0()LTg/z;
    .locals 1

    iget-object v0, p0, LNg/g$a;->b:LTg/e;

    invoke-interface {v0}, LTg/y;->a0()LTg/z;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LNg/g$a;->e:I

    iget-object v1, p0, LNg/g$a;->b:LTg/e;

    invoke-static {v1}, LNg/g;->h(LTg/e;)I

    move-result v1

    iput v1, p0, LNg/g$a;->f:I

    iput v1, p0, LNg/g$a;->c:I

    iget-object v1, p0, LNg/g$a;->b:LTg/e;

    invoke-interface {v1}, LTg/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v2, p0, LNg/g$a;->b:LTg/e;

    invoke-interface {v2}, LTg/e;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, LNg/g$a;->d:B

    sget-object v2, LNg/g;->f:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, LNg/g$a;->e:I

    iget v4, p0, LNg/g$a;->c:I

    iget-byte v5, p0, LNg/g$a;->d:B

    const/4 v6, 0x1

    invoke-static {v6, v3, v4, v1, v5}, LNg/d;->b(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, LNg/g$a;->b:LTg/e;

    invoke-interface {v2}, LTg/e;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, LNg/g$a;->e:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    invoke-static {v1, v0}, LNg/d;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s != TYPE_CONTINUATION"

    invoke-static {v1, v0}, LNg/d;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
