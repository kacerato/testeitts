.class public final LXg/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:I = 0x6


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    iput-object v1, p0, LXg/r;->a:[I

    new-array v1, v0, [I

    iput-object v1, p0, LXg/r;->b:[I

    new-array v0, v0, [I

    iput-object v0, p0, LXg/r;->c:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, LXg/r;->d:Z

    iput-boolean v0, p0, LXg/r;->e:Z

    iput v0, p0, LXg/r;->f:I

    iput v0, p0, LXg/r;->g:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, LXg/r;->g:I

    iget-object v1, p0, LXg/r;->h:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()[I
    .locals 2

    iget-boolean v0, p0, LXg/r;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LXg/r;->c:[I

    iget v1, p0, LXg/r;->f:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()[I
    .locals 2

    iget-boolean v0, p0, LXg/r;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LXg/r;->b:[I

    iget v1, p0, LXg/r;->f:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()[I
    .locals 2

    iget-object v0, p0, LXg/r;->a:[I

    iget v1, p0, LXg/r;->f:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LXg/r;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, LXg/r;->d:Z

    iput-boolean v0, p0, LXg/r;->e:Z

    iput v0, p0, LXg/r;->f:I

    iput v0, p0, LXg/r;->g:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, LXg/r;->h:[C

    invoke-virtual {p0}, LXg/r;->h()V

    invoke-virtual {p0}, LXg/r;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LXg/r;->h:[C

    iget v2, p0, LXg/r;->g:I

    aget-char v1, v1, v2

    const/16 v3, 0x66

    const-string v4, "\""

    if-eq v1, v3, :cond_2

    const/16 v3, 0x46

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'f\' or \'F\', but found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LXg/r;->h:[C

    iget v3, p0, LXg/r;->g:I

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " in \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    add-int/2addr v2, v1

    iput v2, p0, LXg/r;->g:I

    :goto_1
    invoke-virtual {p0}, LXg/r;->h()V

    invoke-virtual {p0}, LXg/r;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, LXg/r;->g()I

    move-result v2

    if-eqz v2, :cond_d

    iget-object v3, p0, LXg/r;->a:[I

    array-length v5, v3

    if-lt v0, v5, :cond_4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, LXg/r;->a:[I

    iget-object v3, p0, LXg/r;->b:[I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, LXg/r;->b:[I

    iget-object v3, p0, LXg/r;->c:[I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, LXg/r;->c:[I

    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, LXg/r;->a:[I

    aput v2, v3, v0

    :cond_5
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LXg/r;->f:I

    invoke-virtual {p0}, LXg/r;->h()V

    invoke-virtual {p0}, LXg/r;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    iget-object v3, p0, LXg/r;->h:[C

    iget v5, p0, LXg/r;->g:I

    aget-char v3, v3, v5

    const/16 v6, 0x2f

    if-ne v3, v6, :cond_c

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, LXg/r;->g:I

    invoke-virtual {p0}, LXg/r;->h()V

    invoke-virtual {p0}, LXg/r;->a()Z

    move-result v3

    const-string v5, "Unexpected end of input after \'/\' in  \""

    if-nez v3, :cond_b

    invoke-virtual {p0}, LXg/r;->g()I

    move-result v3

    if-eqz v3, :cond_7

    iget-object v7, p0, LXg/r;->b:[I

    aput v3, v7, v0

    iput-boolean v1, p0, LXg/r;->d:Z

    :cond_7
    invoke-virtual {p0}, LXg/r;->h()V

    invoke-virtual {p0}, LXg/r;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_2
    return-void

    :cond_8
    iget-object v3, p0, LXg/r;->h:[C

    iget v7, p0, LXg/r;->g:I

    aget-char v3, v3, v7

    if-ne v3, v6, :cond_c

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, LXg/r;->g:I

    invoke-virtual {p0}, LXg/r;->h()V

    invoke-virtual {p0}, LXg/r;->a()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, LXg/r;->g()I

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v1, p0, LXg/r;->e:Z

    if-eqz v3, :cond_c

    iget-object v5, p0, LXg/r;->c:[I

    aput v3, v5, v0

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read normal index from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_3
    move v0, v2

    goto/16 :goto_1

    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read vertex index in \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()I
    .locals 7

    iget-object v0, p0, LXg/r;->h:[C

    iget v1, p0, LXg/r;->g:I

    aget-char v0, v0, v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    add-int/2addr v1, v3

    iput v1, p0, LXg/r;->g:I

    invoke-virtual {p0}, LXg/r;->h()V

    invoke-virtual {p0}, LXg/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget-object v1, p0, LXg/r;->h:[C

    iget v2, p0, LXg/r;->g:I

    aget-char v1, v1, v2

    const/16 v5, 0x30

    if-lt v1, v5, :cond_2

    const/16 v6, 0x39

    if-gt v1, v6, :cond_2

    sub-int/2addr v1, v5

    add-int/2addr v2, v3

    iput v2, p0, LXg/r;->g:I

    move v4, v1

    :goto_1
    invoke-virtual {p0}, LXg/r;->a()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, LXg/r;->h:[C

    iget v2, p0, LXg/r;->g:I

    aget-char v1, v1, v2

    if-lt v1, v5, :cond_2

    if-gt v1, v6, :cond_2

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v4, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LXg/r;->g:I

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    neg-int v4, v4

    :cond_3
    return v4
.end method

.method public final h()V
    .locals 3

    :goto_0
    invoke-virtual {p0}, LXg/r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LXg/r;->h:[C

    iget v1, p0, LXg/r;->g:I

    aget-char v0, v0, v1

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LXg/r;->g:I

    goto :goto_0

    :cond_0
    return-void
.end method
