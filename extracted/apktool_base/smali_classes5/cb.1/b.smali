.class public Lcb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb/b$b;,
        Lcb/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public e:Lcb/b$a;

.field public f:Lcb/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcb/o$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 1
    invoke-direct {p0, v0, v1}, Lcb/b;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcb/b;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcb/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 10
    iget-boolean v0, p1, Lcb/b;->d:Z

    iget v1, p1, Lcb/b;->c:I

    iget-object v2, p1, Lcb/b;->b:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcb/b;-><init>(ZILjava/lang/Class;)V

    .line 11
    iget v0, p1, Lcb/b;->c:I

    iput v0, p0, Lcb/b;->c:I

    .line 12
    iget-object p1, p1, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcb/b;->b:[Ljava/lang/Object;

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrayType"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 9
    invoke-direct {p0, v0, v1, p1}, Lcb/b;-><init>(ZILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ordered",
            "capacity"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcb/b;->d:Z

    .line 5
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcb/b;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ordered",
            "capacity",
            "arrayType"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcb/b;->d:Z

    .line 8
    invoke-static {p3, p2}, Lcb/c;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcb/b;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ordered",
            "array",
            "start",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;II)V"
        }
    .end annotation

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcb/b;-><init>(ZILjava/lang/Class;)V

    .line 15
    iput p4, p0, Lcb/b;->c:I

    .line 16
    iget-object p1, p0, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 13
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcb/b;-><init>(Z[Ljava/lang/Object;II)V

    return-void
.end method

.method public static varargs S([Ljava/lang/Object;)Lcb/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcb/b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcb/b;

    invoke-direct {v0, p0}, Lcb/b;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static w(Ljava/lang/Class;)Lcb/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrayType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcb/b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcb/b;

    invoke-direct {v0, p0}, Lcb/b;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static x(ZILjava/lang/Class;)Lcb/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ordered",
            "capacity",
            "arrayType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcb/b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcb/b;

    invoke-direct {v0, p0, p1, p2}, Lcb/b;-><init>(ZILjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public A(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    aget-object v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcb/b;->c:I

    iget-boolean v3, p0, Lcb/b;->d:Z

    if-eqz v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    aget-object v0, v1, v0

    aput-object v0, v1, p1

    :goto_0
    iget p1, p0, Lcb/b;->c:I

    const/4 v0, 0x0

    aput-object v0, v1, p1

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcb/b;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public B(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-ge p2, v0, :cond_3

    if-gt p1, p2, :cond_2

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    sub-int v3, v0, v2

    iget-boolean v4, p0, Lcb/b;->d:Z

    if-eqz v4, :cond_0

    add-int/2addr v2, p1

    sub-int p2, v0, v2

    invoke-static {v1, v2, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int v2, v0, p2

    invoke-static {v1, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move p1, v3

    :goto_1
    if-ge p1, v0, :cond_1

    const/4 p2, 0x0

    aput-object p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iput v3, p0, Lcb/b;->c:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start can\'t be > end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcb/b;->c:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(Ljava/lang/Object;Z)Z
    .locals 5
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p0, Lcb/b;->c:I

    move v3, v1

    :goto_0
    if-ge v3, p2, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcb/b;->A(I)Ljava/lang/Object;

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p2, p0, Lcb/b;->c:I

    move v3, v1

    :goto_2
    if-ge v3, p2, :cond_4

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_3

    invoke-virtual {p0, v3}, Lcb/b;->A(I)Ljava/lang/Object;

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return v1
.end method

.method public D(I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcb/c;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcb/b;->b:[Ljava/lang/Object;

    return-object p1
.end method

.method public E()V
    .locals 7

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    add-int/lit8 v2, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    sub-int v4, v2, v3

    aget-object v5, v0, v3

    aget-object v6, v0, v4

    aput-object v6, v0, v3

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F(Lcb/o;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/o<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lcb/e;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcb/o$a;

    invoke-direct {v0, p0, p1}, Lcb/o$a;-><init>(Ljava/lang/Iterable;Lcb/o;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcb/b;->f:Lcb/o$a;

    if-nez v0, :cond_1

    new-instance v0, Lcb/o$a;

    invoke-direct {v0, p0, p1}, Lcb/o$a;-><init>(Ljava/lang/Iterable;Lcb/o;)V

    iput-object v0, p0, Lcb/b;->f:Lcb/o$a;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0, p1}, Lcb/o$a;->a(Ljava/lang/Iterable;Lcb/o;)V

    :goto_0
    iget-object p1, p0, Lcb/b;->f:Lcb/o$a;

    return-object p1
.end method

.method public G(Ljava/util/Comparator;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comparator",
            "kthLowest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    invoke-static {}, Lcb/s;->c()Lcb/s;

    move-result-object v0

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v2, p0, Lcb/b;->c:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcb/s;->d([Ljava/lang/Object;Ljava/util/Comparator;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string p2, "nth_lowest must be greater than 0, 1 = first, 2 = second..."

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(Ljava/util/Comparator;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comparator",
            "kthLowest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    invoke-static {}, Lcb/s;->c()Lcb/s;

    move-result-object v0

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v2, p0, Lcb/b;->c:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcb/s;->e([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string p2, "nth_lowest must be greater than 0, 1 = first, 2 = second..."

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcb/b;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public J(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcb/b;->R(I)V

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcb/b;->D(I)[Ljava/lang/Object;

    :cond_0
    iput p1, p0, Lcb/b;->c:I

    iget-object p1, p0, Lcb/b;->b:[Ljava/lang/Object;

    return-object p1
.end method

.method public L()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcb/b;->c:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcb/b;->D(I)[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method public M()V
    .locals 5

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-static {v1}, Lcb/h;->G(I)I

    move-result v2

    aget-object v3, v0, v1

    aget-object v4, v0, v2

    aput-object v4, v0, v1

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public N()V
    .locals 4

    invoke-static {}, Lcb/t;->a()Lcb/t;

    move-result-object v0

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcb/b;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcb/t;->e([Ljava/lang/Object;II)V

    return-void
.end method

.method public O(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aget-object v2, v0, p2

    aput-object v2, v0, p1

    aput-object v1, v0, p2

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcb/b;->c:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first can\'t be >= size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcb/b;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public P(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)[TV;"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    invoke-static {p1, v0}, Lcb/c;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcb/b;->c:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "separator"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    new-instance v1, Lcb/u;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcb/u;-><init>(I)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcb/u;->n(Ljava/lang/Object;)Lcb/u;

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lcb/b;->c:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, p1}, Lcb/u;->o(Ljava/lang/String;)Lcb/u;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lcb/u;->n(Ljava/lang/Object;)Lcb/u;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcb/u;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public R(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSize"
        }
    .end annotation

    if-ltz p1, :cond_2

    iget v0, p0, Lcb/b;->c:I

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    move v0, p1

    :goto_0
    iget v1, p0, Lcb/b;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcb/b;->c:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    int-to-float v0, v1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcb/b;->D(I)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcb/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcb/b;->c:I

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v3, p0, Lcb/b;->c:I

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value1",
            "value2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-lt v2, v3, :cond_0

    int-to-float v0, v1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcb/b;->D(I)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcb/b;->c:I

    aput-object p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcb/b;->c:I

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value1",
            "value2",
            "value3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-lt v2, v3, :cond_0

    int-to-float v0, v1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcb/b;->D(I)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcb/b;->c:I

    aput-object p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    aput-object p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    aput-object p3, v0, p1

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcb/b;->c:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcb/b;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p1, Lcb/b;

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Lcb/b;

    iget-boolean v1, p1, Lcb/b;->d:Z

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcb/b;->c:I

    iget v3, p1, Lcb/b;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget-object p1, p1, Lcb/b;->b:[Ljava/lang/Object;

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_8

    aget-object v5, v3, v4

    aget-object v6, p1, v4

    if-nez v5, :cond_5

    if-nez v6, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    return v2

    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return v0
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value1",
            "value2",
            "value3",
            "value4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    add-int/lit8 v2, v1, 0x3

    array-length v3, v0

    if-lt v2, v3, :cond_0

    int-to-float v0, v1

    const v1, 0x3fe66666    # 1.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcb/b;->D(I)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcb/b;->c:I

    aput-object p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    aput-object p2, v0, p1

    add-int/lit8 p1, v1, 0x2

    aput-object p3, v0, p1

    add-int/lit8 p1, v1, 0x3

    aput-object p4, v0, p1

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcb/b;->c:I

    return-void
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Lcb/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget p1, p1, Lcb/b;->c:I

    invoke-virtual {p0, v0, v1, p1}, Lcb/b;->j([Ljava/lang/Object;II)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcb/b;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Lcb/b;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "start",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "+TT;>;II)V"
        }
    .end annotation

    add-int v0, p2, p3

    iget v1, p1, Lcb/b;->c:I

    if-gt v0, v1, :cond_0

    iget-object p1, p1, Lcb/b;->b:[Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcb/b;->j([Ljava/lang/Object;II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start + count must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " <= "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcb/b;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 5

    iget-boolean v0, p0, Lcb/b;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public varargs i([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcb/b;->j([Ljava/lang/Object;II)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcb/b;->c:I

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

    invoke-virtual {p0}, Lcb/b;->t()Lcb/b$b;

    move-result-object v0

    return-object v0
.end method

.method public j([Ljava/lang/Object;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "start",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    add-int/2addr v1, p3

    array-length v2, v0

    if-le v1, v2, :cond_0

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcb/b;->c:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcb/b;->D(I)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    iget v2, p0, Lcb/b;->c:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcb/b;->c:I

    return-void
.end method

.method public k(Ljava/lang/Object;Z)Z
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcb/b;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ltz v1, :cond_4

    add-int/lit8 p2, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move v1, p2

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v1, :cond_4

    add-int/lit8 p2, v1, -0x1

    aget-object v1, v0, v1

    if-ne v1, p1, :cond_3

    return v2

    :cond_3
    move v1, p2

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public l(Lcb/b;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "identity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "+TT;>;Z)Z"
        }
    .end annotation

    iget-object v0, p1, Lcb/b;->b:[Ljava/lang/Object;

    iget p1, p1, Lcb/b;->c:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p2}, Lcb/b;->k(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public m(Lcb/b;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "identity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "+TT;>;Z)Z"
        }
    .end annotation

    iget-object v0, p1, Lcb/b;->b:[Ljava/lang/Object;

    iget p1, p1, Lcb/b;->c:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p2}, Lcb/b;->k(Ljava/lang/Object;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public n(I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additionalCapacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lcb/b;->c:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcb/b;->b:[Ljava/lang/Object;

    array-length p1, p1

    if-le v0, p1, :cond_0

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcb/b;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcb/b;->D(I)[Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcb/b;->b:[Ljava/lang/Object;

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcb/b;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p1, Lcb/b;

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Lcb/b;

    iget-boolean v1, p1, Lcb/b;->d:Z

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcb/b;->c:I

    iget v3, p1, Lcb/b;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcb/b;->b:[Ljava/lang/Object;

    iget-object p1, p1, Lcb/b;->b:[Ljava/lang/Object;

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_6

    aget-object v5, v3, v4

    aget-object v6, p1, v4

    if-eq v5, v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public p(Ljava/lang/Object;Z)I
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p0, Lcb/b;->c:I

    :goto_0
    if-ge v1, p2, :cond_4

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p2, p0, Lcb/b;->c:I

    :goto_2
    if-ge v1, p2, :cond_4

    aget-object v2, v0, v1

    if-ne v2, p1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcb/b;->c:I

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-gt p1, v0, :cond_2

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcb/b;->D(I)[Ljava/lang/Object;

    move-result-object v1

    :cond_0
    iget-boolean v0, p0, Lcb/b;->d:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcb/b;->c:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcb/b;->c:I

    aget-object v2, v1, p1

    aput-object v2, v1, v0

    :goto_0
    iget v0, p0, Lcb/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcb/b;->c:I

    aput-object p2, v1, p1

    return-void

    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcb/b;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public s(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "count"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-gt p1, v0, :cond_1

    add-int/2addr v0, p2

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcb/b;->c:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcb/b;->D(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    add-int/2addr p2, p1

    iget v2, p0, Lcb/b;->c:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcb/b;->c:I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcb/b;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcb/t;->a()Lcb/t;

    move-result-object v0

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcb/b;->c:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcb/t;->g([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method

.method public t()Lcb/b$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/b$b<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lcb/e;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcb/b$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcb/b$b;-><init>(Lcb/b;Z)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcb/b;->e:Lcb/b$a;

    if-nez v0, :cond_1

    new-instance v0, Lcb/b$a;

    invoke-direct {v0, p0}, Lcb/b$a;-><init>(Lcb/b;)V

    iput-object v0, p0, Lcb/b;->e:Lcb/b$a;

    :cond_1
    iget-object v0, p0, Lcb/b;->e:Lcb/b$a;

    invoke-virtual {v0}, Lcb/b$a;->a()Lcb/b$b;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcb/b;->P(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcb/b;->c:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    new-instance v1, Lcb/u;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcb/u;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcb/u;->a(C)Lcb/u;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcb/u;->n(Ljava/lang/Object;)Lcb/u;

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lcb/b;->c:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcb/u;->o(Ljava/lang/String;)Lcb/u;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lcb/u;->n(Ljava/lang/Object;)Lcb/u;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Lcb/u;->a(C)Lcb/u;

    invoke-virtual {v1}, Lcb/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Object;Z)I
    .locals 2
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    iget-object v0, p0, Lcb/b;->b:[Ljava/lang/Object;

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p0, Lcb/b;->c:I

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_4

    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p2, p0, Lcb/b;->c:I

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_4

    aget-object v1, v0, p2

    if-ne v1, p1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public v()Z
    .locals 1

    iget v0, p0, Lcb/b;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Ljava/lang/Object;
    .locals 3
    .annotation build Lcb/j;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcb/h;->H(II)I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public z(Lcb/b;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "identity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "+TT;>;Z)Z"
        }
    .end annotation

    iget v0, p0, Lcb/b;->c:I

    iget-object v1, p0, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget p2, p1, Lcb/b;->c:I

    move v4, v0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_5

    invoke-virtual {p1, v3}, Lcb/b;->get(I)Ljava/lang/Object;

    move-result-object v5

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_1

    aget-object v7, v1, v6

    if-ne v5, v7, :cond_0

    invoke-virtual {p0, v6}, Lcb/b;->A(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget p2, p1, Lcb/b;->c:I

    move v4, v0

    move v3, v2

    :goto_3
    if-ge v3, p2, :cond_5

    invoke-virtual {p1, v3}, Lcb/b;->get(I)Ljava/lang/Object;

    move-result-object v5

    move v6, v2

    :goto_4
    if-ge v6, v4, :cond_4

    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0, v6}, Lcb/b;->A(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    if-eq v4, v0, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method
