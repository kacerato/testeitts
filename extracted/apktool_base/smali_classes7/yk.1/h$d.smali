.class public Lyk/h$d;
.super Lyk/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final g:I

.field public final h:[Z

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lyk/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lyk/h;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2}, Lyk/c;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lyk/c;->o()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Lyk/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lyk/h$d;->g:I

    iput-boolean v1, p0, Lyk/h$d;->i:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lyk/h$d;->h:[Z

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lyk/h$d;->g:I

    if-ltz v0, :cond_b

    invoke-virtual {p2}, Lyk/c;->v()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    and-int/lit16 v2, v0, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lyk/h$d;->i:Z

    invoke-virtual {p2}, Lyk/c;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lyk/h$d;->h:[Z

    invoke-virtual {p2}, Lyk/c;->v()Z

    move-result v2

    const/4 v4, 0x7

    if-eqz v2, :cond_3

    const/4 v2, 0x6

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    invoke-virtual {p2}, Lyk/c;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v5, v1

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyk/c;

    invoke-virtual {v6}, Lyk/c;->d()Lyk/f$a;

    move-result-object v7

    sget-object v8, Lyk/f$a;->EXTENSION:Lyk/f$a;

    if-ne v7, v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lyk/c;->e()I

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v6}, Lyk/c;->x()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lyk/h$d;->h:[Z

    add-int/lit8 v7, v5, 0x1

    aput-boolean v3, v6, v5

    :goto_4
    move v5, v7

    goto :goto_3

    :cond_6
    if-gez v2, :cond_8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_7

    move v2, v4

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "expecting mask byte sequence"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    iget-object v6, p0, Lyk/h$d;->h:[Z

    add-int/lit8 v7, v5, 0x1

    invoke-static {}, Lyk/h;->c()[I

    move-result-object v8

    aget v8, v8, v2

    and-int/2addr v8, v0

    if-lez v8, :cond_9

    move v8, v3

    goto :goto_6

    :cond_9
    move v8, v1

    :goto_6
    aput-boolean v8, v6, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_a
    :goto_7
    return-void

    :cond_b
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "expecting preamble byte of sequence"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic w(Lyk/h$d;)[Z
    .locals 0

    iget-object p0, p0, Lyk/h$d;->h:[Z

    return-object p0
.end method

.method public static synthetic x(Lyk/h$d;)Z
    .locals 0

    iget-boolean p0, p0, Lyk/h$d;->i:Z

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEQ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyk/h$d;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Ext "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyk/h$d;->h:[Z

    if-nez v1, :cond_1

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lyk/h$d;->h:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    const-string v2, "1"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v2, "0"

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lyk/h$d;->i:Z

    return v0
.end method

.method public z(I)Z
    .locals 1

    iget-object v0, p0, Lyk/h$d;->h:[Z

    aget-boolean p1, v0, p1

    return p1
.end method
