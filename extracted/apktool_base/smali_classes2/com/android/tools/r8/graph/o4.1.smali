.class public Lcom/android/tools/r8/graph/o4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/graph/E0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:[B

.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/h4;

.field public final b:Ljava/util/function/Consumer;

.field public final c:Lcom/android/tools/r8/graph/V;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, -0x35014542    # -8346975.0f

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/graph/o4;->d:[B

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/h4;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/V;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/h4;",
            "Ljava/util/function/Consumer<",
            "TT;>;",
            "Lcom/android/tools/r8/graph/V<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/o4;->a:Lcom/android/tools/r8/graph/h4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/o4;->b:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/tools/r8/graph/o4;->c:Lcom/android/tools/r8/graph/V;

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/android/tools/r8/graph/L4;
    .locals 1

    .line 41
    const-string v0, "<init>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    const-string v0, "<clinit>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const v0, -0x60001

    and-int/2addr p0, v0

    .line 43
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/h4;)Lcom/android/tools/r8/graph/e1;
    .locals 5

    .line 57
    sget-boolean v0, Lcom/android/tools/r8/graph/o4;->e:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 60
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/tools/r8/graph/t0;

    const/4 v1, 0x0

    .line 61
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 62
    new-instance v2, Lcom/android/tools/r8/graph/t0;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/R2;

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    :cond_3
    new-instance p1, Lcom/android/tools/r8/graph/e1;

    invoke-virtual {p3, p0}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;ILcom/android/tools/r8/internal/tu0;)Lcom/android/tools/r8/graph/i4;
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/tools/r8/graph/o4;->e:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 52
    :cond_1
    :goto_0
    iget-object v0, p3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 53
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 54
    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_2
    new-instance v0, Lcom/android/tools/r8/graph/cf;

    invoke-direct {v0, p4, p5}, Lcom/android/tools/r8/graph/cf;-><init>(ILcom/android/tools/r8/internal/tu0;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/i4;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/i4;
    .locals 8

    .line 44
    sget-boolean v0, Lcom/android/tools/r8/graph/o4;->e:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 45
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 46
    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/graph/i4;

    new-instance v7, Lcom/android/tools/r8/graph/df;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p4

    move v4, p1

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/graph/df;-><init>(Ljava/util/List;Ljava/util/function/BiFunction;ILjava/lang/String;Lcom/android/tools/r8/graph/h4;)V

    invoke-direct {v0, p3, v7}, Lcom/android/tools/r8/graph/i4;-><init>(Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public static synthetic a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/Integer;Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/graph/r0;
    .locals 1

    .line 56
    new-instance v0, Lcom/android/tools/r8/graph/N2;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/android/tools/r8/graph/N2;-><init>(ILcom/android/tools/r8/graph/e1;ILcom/android/tools/r8/internal/tu0;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/u0;
    .locals 3

    if-eqz p0, :cond_8

    .line 64
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 66
    sget-object p1, Lcom/android/tools/r8/graph/u0;->f:[Lcom/android/tools/r8/graph/u0;

    .line 67
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    .line 68
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/r0;

    .line 69
    sget-boolean v2, Lcom/android/tools/r8/graph/u0;->h:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/r0;->n0()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 70
    :cond_3
    :goto_0
    iget-object v2, v1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    iget-object p1, v1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_5

    goto :goto_2

    .line 72
    :cond_5
    new-instance p0, Lcom/android/tools/r8/internal/If;

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple annotations of type `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_6
    :goto_2
    sget-object p1, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/tools/r8/graph/r0;

    sget-object p1, Lcom/android/tools/r8/graph/u0;->f:[Lcom/android/tools/r8/graph/u0;

    .line 75
    invoke-static {p0}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p1, Lcom/android/tools/r8/graph/u0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    return-object p1

    .line 76
    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/List;Ljava/util/function/BiFunction;ILjava/lang/String;Lcom/android/tools/r8/graph/h4;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p5, p6, p4}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/h4;)Lcom/android/tools/r8/graph/e1;

    move-result-object p3

    .line 49
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    .line 50
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/origin/Origin;[B)V
    .locals 12

    .line 1
    array-length v0, p2

    sget-object v1, Lcom/android/tools/r8/graph/o4;->d:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    sget-object v3, Lcom/android/tools/r8/graph/o4;->d:[B

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 3
    aget-byte v4, p2, v1

    aget-byte v3, v3, v1

    if-ne v4, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/If;

    const-string v0, "Invalid classfile header"

    .line 5
    invoke-direct {p2, p1, v0, v2}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    throw p2

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/graph/o4;->c:Lcom/android/tools/r8/graph/V;

    sget-object v3, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/graph/o4;->a:Lcom/android/tools/r8/graph/h4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/graph/o4;->a:Lcom/android/tools/r8/graph/h4;

    iget-object v1, v1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->Y1:Lcom/android/tools/r8/DesugarGraphConsumer;

    if-eqz v1, :cond_2

    .line 11
    invoke-interface {v1, p1}, Lcom/android/tools/r8/DesugarGraphConsumer;->acceptProgramNode(Lcom/android/tools/r8/origin/Origin;)V

    .line 12
    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/Vd;

    const/4 v3, 0x1

    .line 13
    invoke-direct {v1, p2, v3}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    .line 14
    iget-object v4, p0, Lcom/android/tools/r8/graph/o4;->c:Lcom/android/tools/r8/graph/V;

    sget-object v5, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-eq v4, v5, :cond_3

    const/4 v4, 0x7

    goto :goto_1

    :cond_3
    const/4 v4, 0x5

    .line 15
    :goto_1
    new-instance v11, Lcom/android/tools/r8/graph/j4;

    iget-object v7, p0, Lcom/android/tools/r8/graph/o4;->c:Lcom/android/tools/r8/graph/V;

    iget-object v9, p0, Lcom/android/tools/r8/graph/o4;->a:Lcom/android/tools/r8/graph/h4;

    iget-object v10, p0, Lcom/android/tools/r8/graph/o4;->b:Ljava/util/function/Consumer;

    move-object v5, v11

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/graph/j4;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/V;[BLcom/android/tools/r8/graph/h4;Ljava/util/function/Consumer;)V

    .line 16
    iget-object p1, p0, Lcom/android/tools/r8/graph/o4;->c:Lcom/android/tools/r8/graph/V;

    sget-object p2, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne p1, p2, :cond_4

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/graph/o4;->a:Lcom/android/tools/r8/graph/h4;

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->r6:Lcom/android/tools/r8/synthesis/S;

    .line 21
    new-instance p2, Lcom/android/tools/r8/synthesis/K;

    invoke-direct {p2, v2, v2, p1}, Lcom/android/tools/r8/synthesis/K;-><init>(Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Lcom/android/tools/r8/synthesis/S;)V

    .line 22
    new-array p1, v3, [Lcom/android/tools/r8/internal/K4;

    aput-object p2, p1, v0

    goto :goto_2

    .line 23
    :cond_4
    new-array p1, v0, [Lcom/android/tools/r8/internal/K4;

    .line 24
    :goto_2
    invoke-virtual {v1, v11, p1, v4}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V

    .line 25
    iget-object p1, v1, Lcom/android/tools/r8/internal/Vd;->c:[I

    array-length p2, p1

    const/4 v0, 0x2

    if-le p2, v0, :cond_5

    .line 26
    aget p1, p1, v0

    if-lez p1, :cond_5

    .line 27
    :try_start_0
    iget p1, v1, Lcom/android/tools/r8/internal/Vd;->g:I

    .line 28
    new-array p1, p1, [C

    .line 29
    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/Vd;->b(I[C)Ljava/lang/Object;

    move-result-object p1

    .line 30
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 31
    iget-object p2, p0, Lcom/android/tools/r8/graph/o4;->a:Lcom/android/tools/r8/graph/h4;

    .line 32
    iget-object p2, p2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 33
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 36
    iget-object v0, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-static {v0}, Lcom/android/tools/r8/dex/W;->a([B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void

    .line 38
    :cond_6
    new-instance p2, Lcom/android/tools/r8/internal/If;

    const-string v0, "Invalid empty classfile"

    .line 39
    invoke-direct {p2, p1, v0, v2}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    throw p2
.end method

.method public b(Lcom/android/tools/r8/origin/Origin;[B)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/ef;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/ef;-><init>(Lcom/android/tools/r8/graph/o4;Lcom/android/tools/r8/origin/Origin;[B)V

    sget-object p2, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/Runnable;)V

    return-void
.end method
