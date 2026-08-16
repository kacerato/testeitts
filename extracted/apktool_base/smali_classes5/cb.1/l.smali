.class public Lcb/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb/l$a;,
        Lcb/l$e;,
        Lcb/l$c;,
        Lcb/l$d;,
        Lcb/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcb/l$b<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/Object;


# instance fields
.field public b:I

.field public c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public transient i:Lcb/l$a;

.field public transient j:Lcb/l$a;

.field public transient k:Lcb/l$e;

.field public transient l:Lcb/l$e;

.field public transient m:Lcb/l$c;

.field public transient n:Lcb/l$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcb/l;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 1
    invoke-direct {p0, v0, v1}, Lcb/l;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    const v0, 0x3f4ccccd    # 0.8f

    .line 2
    invoke-direct {p0, p1, v0}, Lcb/l;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialCapacity",
            "loadFactor"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 4
    iput p2, p0, Lcb/l;->e:F

    .line 5
    invoke-static {p1, p2}, Lcb/m;->t(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 6
    iput p2, p0, Lcb/l;->f:I

    add-int/lit8 p2, p1, -0x1

    .line 7
    iput p2, p0, Lcb/l;->h:I

    int-to-long v0, p2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcb/l;->g:I

    .line 9
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lcb/l;->c:[Ljava/lang/Object;

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcb/l;->d:[Ljava/lang/Object;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFactor must be > 0 and < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcb/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/l<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p1, Lcb/l;->c:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcb/l;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcb/l;-><init>(IF)V

    .line 13
    iget-object v0, p1, Lcb/l;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcb/l;->c:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v0, p1, Lcb/l;->d:[Ljava/lang/Object;

    iget-object v1, p0, Lcb/l;->d:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget p1, p1, Lcb/l;->b:I

    iput p1, p0, Lcb/l;->b:I

    return-void
.end method


# virtual methods
.method public A(Lcb/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/l<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p1, Lcb/l;->b:I

    invoke-virtual {p0, v0}, Lcb/l;->m(I)V

    iget-object v0, p1, Lcb/l;->c:[Ljava/lang/Object;

    iget-object p1, p1, Lcb/l;->d:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcb/l;->z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final B(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Lcb/j;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/l;->c:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcb/l;->y(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcb/l;->d:[Ljava/lang/Object;

    aput-object p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcb/l;->h:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public C(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation build Lcb/j;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcb/l;->v(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcb/l;->c:[Ljava/lang/Object;

    iget-object v2, p0, Lcb/l;->d:[Ljava/lang/Object;

    aget-object v3, v2, p1

    iget v4, p0, Lcb/l;->h:I

    add-int/lit8 v5, p1, 0x1

    :goto_0
    and-int/2addr v5, v4

    aget-object v6, v1, v5

    if-eqz v6, :cond_2

    invoke-virtual {p0, v6}, Lcb/l;->y(Ljava/lang/Object;)I

    move-result v7

    sub-int v8, v5, v7

    and-int/2addr v8, v4

    sub-int v7, p1, v7

    and-int/2addr v7, v4

    if-le v8, v7, :cond_1

    aput-object v6, v1, p1

    aget-object v6, v2, v5

    aput-object v6, v2, p1

    move p1, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    aput-object v0, v1, p1

    aput-object v0, v2, p1

    iget p1, p0, Lcb/l;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcb/l;->b:I

    return-object v3
.end method

.method public final D(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSize"
        }
    .end annotation

    iget-object v0, p0, Lcb/l;->c:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcb/l;->e:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcb/l;->f:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcb/l;->h:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcb/l;->g:I

    iget-object v1, p0, Lcb/l;->c:[Ljava/lang/Object;

    iget-object v2, p0, Lcb/l;->d:[Ljava/lang/Object;

    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcb/l;->c:[Ljava/lang/Object;

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcb/l;->d:[Ljava/lang/Object;

    iget p1, p0, Lcb/l;->b:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    aget-object v3, v1, p1

    if-eqz v3, :cond_0

    aget-object v4, v2, p1

    invoke-virtual {p0, v3, v4}, Lcb/l;->B(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public E(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maximumCapacity"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lcb/l;->e:F

    invoke-static {p1, v0}, Lcb/m;->t(IF)I

    move-result p1

    iget-object v0, p0, Lcb/l;->c:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcb/l;->D(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public F(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "separator"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcb/l;->G(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public G(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "separator",
            "braces"
        }
    .end annotation

    iget v0, p0, Lcb/l;->b:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "{}"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_2

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcb/l;->c:[Ljava/lang/Object;

    iget-object v2, p0, Lcb/l;->d:[Ljava/lang/Object;

    array-length v3, v1

    :goto_1
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    const-string v6, "(this)"

    if-lez v3, :cond_6

    aget-object v3, v1, v4

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    if-ne v3, p0, :cond_4

    move-object v3, v6

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v2, v4

    if-ne v3, p0, :cond_5

    move-object v3, v6

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_a

    aget-object v4, v1, v3

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, p0, :cond_8

    move-object v4, v6

    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v2, v3

    if-ne v4, p0, :cond_9

    move-object v4, v6

    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    move v4, v3

    goto :goto_2

    :cond_a
    if-eqz p2, :cond_b

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public H()Lcb/l$e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/l$e<",
            "TV;>;"
        }
    .end annotation

    sget-boolean v0, Lcb/e;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcb/l$e;

    invoke-direct {v0, p0}, Lcb/l$e;-><init>(Lcb/l;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcb/l;->k:Lcb/l$e;

    if-nez v0, :cond_1

    new-instance v0, Lcb/l$e;

    invoke-direct {v0, p0}, Lcb/l$e;-><init>(Lcb/l;)V

    iput-object v0, p0, Lcb/l;->k:Lcb/l$e;

    new-instance v0, Lcb/l$e;

    invoke-direct {v0, p0}, Lcb/l$e;-><init>(Lcb/l;)V

    iput-object v0, p0, Lcb/l;->l:Lcb/l$e;

    :cond_1
    iget-object v0, p0, Lcb/l;->k:Lcb/l$e;

    iget-boolean v1, v0, Lcb/l$d;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcb/l$e;->b()V

    iget-object v0, p0, Lcb/l;->k:Lcb/l$e;

    iput-boolean v3, v0, Lcb/l$d;->f:Z

    iget-object v1, p0, Lcb/l;->l:Lcb/l$e;

    iput-boolean v2, v1, Lcb/l$d;->f:Z

    return-object v0

    :cond_2
    iget-object v0, p0, Lcb/l;->l:Lcb/l$e;

    invoke-virtual {v0}, Lcb/l$e;->b()V

    iget-object v0, p0, Lcb/l;->l:Lcb/l$e;

    iput-boolean v3, v0, Lcb/l$d;->f:Z

    iget-object v1, p0, Lcb/l;->k:Lcb/l$e;

    iput-boolean v2, v1, Lcb/l$d;->f:Z

    return-object v0
.end method

.method public clear()V
    .locals 2

    iget v0, p0, Lcb/l;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcb/l;->b:I

    iget-object v0, p0, Lcb/l;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcb/l;->d:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcb/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcb/l;

    iget v1, p1, Lcb/l;->b:I

    iget v3, p0, Lcb/l;->b:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcb/l;->c:[Ljava/lang/Object;

    iget-object v3, p0, Lcb/l;->d:[Ljava/lang/Object;

    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    if-eqz v6, :cond_4

    aget-object v7, v3, v5

    if-nez v7, :cond_3

    sget-object v7, Lcb/l;->o:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcb/l;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    return v2

    :cond_3
    invoke-virtual {p1, v6}, Lcb/l;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lcb/l;->b:I

    iget-object v1, p0, Lcb/l;->c:[Ljava/lang/Object;

    iget-object v2, p0, Lcb/l;->d:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcb/l;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcb/l;->t()Lcb/l$a;

    move-result-object v0

    return-object v0
.end method

.method public j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maximumCapacity"
        }
    .end annotation

    iget v0, p0, Lcb/l;->e:F

    invoke-static {p1, v0}, Lcb/m;->t(IF)I

    move-result p1

    iget-object v0, p0, Lcb/l;->c:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcb/l;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcb/l;->b:I

    invoke-virtual {p0, p1}, Lcb/l;->D(I)V

    return-void
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcb/l;->v(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(Ljava/lang/Object;Z)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lcb/j;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "identity"
        }
    .end annotation

    iget-object v0, p0, Lcb/l;->d:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcb/l;->c:[Ljava/lang/Object;

    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_5

    aget-object v2, p1, p2

    if-eqz v2, :cond_0

    aget-object v2, v0, p2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_1
    if-ltz p2, :cond_5

    aget-object v2, v0, p2

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_2
    if-ltz p2, :cond_5

    aget-object v2, v0, p2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public m(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additionalCapacity"
        }
    .end annotation

    iget v0, p0, Lcb/l;->b:I

    add-int/2addr v0, p1

    iget p1, p0, Lcb/l;->e:F

    invoke-static {v0, p1}, Lcb/m;->t(IF)I

    move-result p1

    iget-object v0, p0, Lcb/l;->c:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcb/l;->D(I)V

    :cond_0
    return-void
.end method

.method public n()Lcb/l$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/l$a<",
            "TK;TV;>;"
        }
    .end annotation

    sget-boolean v0, Lcb/e;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcb/l$a;

    invoke-direct {v0, p0}, Lcb/l$a;-><init>(Lcb/l;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcb/l;->i:Lcb/l$a;

    if-nez v0, :cond_1

    new-instance v0, Lcb/l$a;

    invoke-direct {v0, p0}, Lcb/l$a;-><init>(Lcb/l;)V

    iput-object v0, p0, Lcb/l;->i:Lcb/l$a;

    new-instance v0, Lcb/l$a;

    invoke-direct {v0, p0}, Lcb/l$a;-><init>(Lcb/l;)V

    iput-object v0, p0, Lcb/l;->j:Lcb/l$a;

    :cond_1
    iget-object v0, p0, Lcb/l;->i:Lcb/l$a;

    iget-boolean v1, v0, Lcb/l$d;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcb/l$a;->b()V

    iget-object v0, p0, Lcb/l;->i:Lcb/l$a;

    iput-boolean v3, v0, Lcb/l$d;->f:Z

    iget-object v1, p0, Lcb/l;->j:Lcb/l$a;

    iput-boolean v2, v1, Lcb/l$d;->f:Z

    return-object v0

    :cond_2
    iget-object v0, p0, Lcb/l;->j:Lcb/l$a;

    invoke-virtual {v0}, Lcb/l$a;->b()V

    iget-object v0, p0, Lcb/l;->j:Lcb/l$a;

    iput-boolean v3, v0, Lcb/l$d;->f:Z

    iget-object v1, p0, Lcb/l;->i:Lcb/l$a;

    iput-boolean v2, v1, Lcb/l$d;->f:Z

    return-object v0
.end method

.method public o(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lcb/j;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcb/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcb/l;

    iget v1, p1, Lcb/l;->b:I

    iget v3, p0, Lcb/l;->b:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcb/l;->c:[Ljava/lang/Object;

    iget-object v3, p0, Lcb/l;->d:[Ljava/lang/Object;

    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    if-eqz v6, :cond_3

    aget-object v7, v3, v5

    sget-object v8, Lcb/l;->o:Ljava/lang/Object;

    invoke-virtual {p1, v6, v8}, Lcb/l;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v7, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public p(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lcb/j;
        .end annotation
    .end param
    .annotation build Lcb/j;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "identity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcb/l;->d:[Ljava/lang/Object;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcb/l;->c:[Ljava/lang/Object;

    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_5

    aget-object v1, p1, p2

    if-eqz v1, :cond_0

    aget-object v2, v0, p2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    aget-object v1, v0, p2

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcb/l;->c:[Ljava/lang/Object;

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_5

    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcb/l;->c:[Ljava/lang/Object;

    aget-object p1, p1, p2

    return-object p1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcb/j;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TK;>(TT;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcb/l;->v(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcb/l;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lcb/j;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcb/l;->v(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcb/l;->d:[Ljava/lang/Object;

    aget-object p2, p2, p1

    :goto_0
    return-object p2
.end method

.method public t()Lcb/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/l$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcb/l;->n()Lcb/l$a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ", "

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcb/l;->G(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcb/l$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/l$c<",
            "TK;>;"
        }
    .end annotation

    sget-boolean v0, Lcb/e;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcb/l$c;

    invoke-direct {v0, p0}, Lcb/l$c;-><init>(Lcb/l;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcb/l;->m:Lcb/l$c;

    if-nez v0, :cond_1

    new-instance v0, Lcb/l$c;

    invoke-direct {v0, p0}, Lcb/l$c;-><init>(Lcb/l;)V

    iput-object v0, p0, Lcb/l;->m:Lcb/l$c;

    new-instance v0, Lcb/l$c;

    invoke-direct {v0, p0}, Lcb/l$c;-><init>(Lcb/l;)V

    iput-object v0, p0, Lcb/l;->n:Lcb/l$c;

    :cond_1
    iget-object v0, p0, Lcb/l;->m:Lcb/l$c;

    iget-boolean v1, v0, Lcb/l$d;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcb/l$c;->b()V

    iget-object v0, p0, Lcb/l;->m:Lcb/l$c;

    iput-boolean v3, v0, Lcb/l$d;->f:Z

    iget-object v1, p0, Lcb/l;->n:Lcb/l$c;

    iput-boolean v2, v1, Lcb/l$d;->f:Z

    return-object v0

    :cond_2
    iget-object v0, p0, Lcb/l;->n:Lcb/l$c;

    invoke-virtual {v0}, Lcb/l$c;->b()V

    iget-object v0, p0, Lcb/l;->n:Lcb/l$c;

    iput-boolean v3, v0, Lcb/l$d;->f:Z

    iget-object v1, p0, Lcb/l;->m:Lcb/l$c;

    iput-boolean v2, v1, Lcb/l$d;->f:Z

    return-object v0
.end method

.method public v(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcb/l;->c:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcb/l;->y(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcb/l;->h:I

    and-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x()Z
    .locals 1

    iget v0, p0, Lcb/l;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget p1, p0, Lcb/l;->g:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lcb/j;
        .end annotation
    .end param
    .annotation build Lcb/j;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcb/l;->v(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcb/l;->d:[Ljava/lang/Object;

    aget-object v1, p1, v0

    aput-object p2, p1, v0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iget-object v1, p0, Lcb/l;->c:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object p1, p0, Lcb/l;->d:[Ljava/lang/Object;

    aput-object p2, p1, v0

    iget p1, p0, Lcb/l;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcb/l;->b:I

    iget p2, p0, Lcb/l;->f:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcb/l;->D(I)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
