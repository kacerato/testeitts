.class public Lon/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lon/q;

.field public final b:Lon/a;

.field public final c:Lon/i;

.field public final d:Lon/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lon/q;

    invoke-direct {v0}, Lon/q;-><init>()V

    iput-object v0, p0, Lon/p;->a:Lon/q;

    new-instance v0, Lon/a;

    invoke-direct {v0}, Lon/a;-><init>()V

    iput-object v0, p0, Lon/p;->b:Lon/a;

    new-instance v0, Lon/i;

    invoke-direct {v0}, Lon/i;-><init>()V

    iput-object v0, p0, Lon/p;->c:Lon/i;

    new-instance v0, Lon/o;

    invoke-direct {v0}, Lon/o;-><init>()V

    iput-object v0, p0, Lon/p;->d:Lon/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)[Ljn/v;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lon/p;->a:Lon/q;

    invoke-virtual {v0, p1}, Lon/q;->a(Ljava/io/File;)Lon/d;

    move-result-object p1

    iget-object v0, p1, Lon/d;->a:Lon/j;

    iget-object v1, p1, Lon/d;->c:[Lon/m;

    iget v2, v0, Lon/j;->b:I

    new-array v2, v2, [Ljn/v;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, v0, Lon/j;->b:I

    if-ge v4, v6, :cond_2

    iget-object v6, p1, Lon/d;->d:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lon/g;

    iget-object v7, p1, Lon/d;->e:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lon/e;

    iget-object v8, p1, Lon/d;->f:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v7}, Lon/e;->a()I

    move-result v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v9, :cond_1

    iget-object v9, p0, Lon/p;->b:Lon/a;

    invoke-virtual {v9, v7}, Lon/a;->a(Lon/e;)V

    iget-object v9, p0, Lon/p;->c:Lon/i;

    invoke-virtual {v9, v5, v7, v8}, Lon/i;->a(ILon/e;Ljava/util/List;)V

    iget-object v8, p0, Lon/p;->d:Lon/o;

    invoke-virtual {v8, v7, v1, v5}, Lon/o;->a(Lon/e;[Lon/m;I)V

    new-instance v8, Ljn/y;

    invoke-direct {v8}, Ljn/y;-><init>()V

    iget-object v9, v7, Lon/e;->c:[Ljn/q;

    array-length v9, v9

    iput v9, v8, Ljn/y;->d:I

    const v9, 0x8000

    iput v9, v8, Ljn/y;->e:I

    iget v9, v6, Lon/g;->i:F

    iget v10, v6, Lon/g;->c:F

    mul-float/2addr v9, v10

    iput v9, v8, Ljn/y;->b:F

    iget v9, v6, Lon/g;->j:F

    mul-float/2addr v9, v10

    iput v9, v8, Ljn/y;->c:F

    iget-object v9, v8, Ljn/y;->a:[F

    iget-object v10, v6, Lon/g;->n:Lmn/d;

    iget v11, v10, Lmn/d;->a:F

    const/high16 v12, -0x41000000    # -0.5f

    mul-float/2addr v11, v12

    iget-object v6, v6, Lon/g;->m:Lmn/d;

    iget v13, v6, Lmn/d;->a:F

    add-float/2addr v11, v13

    aput v11, v9, v3

    iget v11, v10, Lmn/d;->b:F

    mul-float/2addr v11, v12

    iget v13, v6, Lmn/d;->b:F

    add-float/2addr v11, v13

    const/4 v13, 0x1

    aput v11, v9, v13

    iget v10, v10, Lmn/d;->c:F

    mul-float/2addr v10, v12

    iget v6, v6, Lmn/d;->c:F

    add-float/2addr v10, v6

    const/4 v6, 0x2

    aput v10, v9, v6

    new-instance v6, Ljn/v;

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9}, Ljn/v;-><init>(Ljn/y;I)V

    iget-object v8, v7, Lon/e;->c:[Ljn/q;

    array-length v9, v8

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_0

    aget-object v11, v8, v10

    const-wide/16 v12, 0x0

    invoke-virtual {v6, v11, v3, v12, v13}, Ljn/v;->c(Ljn/q;IJ)J

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    aput-object v6, v2, v4

    invoke-virtual {v7}, Lon/e;->a()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistent number of nodes in data file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and connecton files: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v2
.end method
