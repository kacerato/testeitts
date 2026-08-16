.class public Lmn/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljn/v;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mesh"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "/home/piotr/workspaces/recast/recastnavigation/RecastDemo/Bin/astar.obj"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljn/v;->N()I

    move-result v3

    const-string v4, "\n"

    const-string v5, " "

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljn/v;->I(I)Ljn/s;

    move-result-object v3

    if-eqz v3, :cond_0

    move v6, v0

    :goto_1
    iget-object v7, v3, Ljn/s;->c:Ljn/q;

    iget-object v7, v7, Ljn/q;->a:Ljn/r;

    iget v7, v7, Ljn/r;->h:I

    if-ge v6, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "v "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Ljn/s;->c:Ljn/q;

    iget-object v8, v8, Ljn/q;->b:[F

    mul-int/lit8 v9, v6, 0x3

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Ljn/s;->c:Ljn/q;

    iget-object v8, v8, Ljn/q;->b:[F

    add-int/lit8 v10, v9, 0x1

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Ljn/s;->c:Ljn/q;

    iget-object v8, v8, Ljn/q;->b:[F

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    move v3, v0

    :goto_2
    invoke-virtual {p1}, Ljn/v;->N()I

    move-result v6

    if-ge v3, v6, :cond_5

    invoke-virtual {p1, v3}, Ljn/v;->I(I)Ljn/s;

    move-result-object v6

    if-eqz v6, :cond_4

    move v7, v0

    :goto_3
    iget-object v8, v6, Ljn/s;->c:Ljn/q;

    iget-object v8, v8, Ljn/q;->a:Ljn/r;

    iget v9, v8, Ljn/r;->g:I

    if-ge v7, v9, :cond_3

    const-string v8, "f "

    invoke-virtual {v1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v8, v6, Ljn/s;->c:Ljn/q;

    iget-object v8, v8, Ljn/q;->c:[Ljn/G;

    aget-object v8, v8, v7

    move v9, v0

    :goto_4
    iget v10, v8, Ljn/G;->e:I

    if-ge v9, v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Ljn/G;->b:[I

    aget v11, v11, v9

    add-int/2addr v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_2
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    iget v6, v8, Ljn/r;->h:I

    add-int/2addr v2, v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    return-void
.end method
