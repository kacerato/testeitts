.class public final Lcom/android/tools/r8/internal/h60;
.super Lcom/android/tools/r8/internal/aT;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final d:[Lcom/android/tools/r8/internal/xw0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/z10;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/aT;-><init>(Lcom/android/tools/r8/internal/z10;)V

    iget p2, p1, Lcom/android/tools/r8/internal/WS;->i:I

    iget p1, p1, Lcom/android/tools/r8/internal/WS;->k:I

    add-int/2addr p2, p1

    new-array p1, p2, [Lcom/android/tools/r8/internal/xw0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/h60;->d:[Lcom/android/tools/r8/internal/xw0;

    iget-boolean p1, p0, Lcom/android/tools/r8/internal/aT;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/aT;->b:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/z10;->a()I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/function/IntFunction;Lcom/android/tools/r8/internal/z7;Ljava/util/function/Function;Lcom/android/tools/r8/internal/uT;)Lcom/android/tools/r8/internal/f60;
    .locals 6

    .line 15
    invoke-interface {p2, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/android/tools/r8/graph/j0;

    .line 17
    new-instance p2, Lcom/android/tools/r8/internal/f60;

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aT;->a(I)I

    move-result v1

    sget-object v5, Lcom/android/tools/r8/internal/f60$a;->b:Lcom/android/tools/r8/internal/f60$a;

    move-object v0, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/f60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    .line 19
    iget-object p3, p0, Lcom/android/tools/r8/internal/h60;->d:[Lcom/android/tools/r8/internal/xw0;

    aget-object p3, p3, p1

    if-eqz p3, :cond_2

    .line 20
    sget-boolean p4, Lcom/android/tools/r8/internal/h60;->e:Z

    if-nez p4, :cond_1

    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 22
    :cond_2
    iget-object p3, p0, Lcom/android/tools/r8/internal/h60;->d:[Lcom/android/tools/r8/internal/xw0;

    aput-object p2, p3, p1

    return-object p2
.end method

.method public final a(ILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;
    .locals 2

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    return-object v0
.end method

.method public final a(ILcom/android/tools/r8/internal/pu0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/xw0;
    .locals 2

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j0;

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/h60;->d:[Lcom/android/tools/r8/internal/xw0;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aT;->a(I)I

    move-result v1

    invoke-direct {v0, v1, p2, p3}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/h60;->d:[Lcom/android/tools/r8/internal/xw0;

    aput-object v0, p2, p1

    return-object v0

    .line 11
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/pu0;)V

    if-eqz p3, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/j0;)V

    .line 14
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/h60;->e:Z

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object p1

    if-ne p3, p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/uT;)Lcom/android/tools/r8/internal/xw0;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/h60;->d:[Lcom/android/tools/r8/internal/xw0;

    aget-object p2, p2, p1

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aT;->a(I)I

    move-result v0

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/h60;->d:[Lcom/android/tools/r8/internal/xw0;

    aput-object p2, v0, p1

    :cond_0
    return-object p2
.end method
