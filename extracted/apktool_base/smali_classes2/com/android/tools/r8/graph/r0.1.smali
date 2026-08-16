.class public Lcom/android/tools/r8/graph/r0;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/n1;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/r0;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:[Lcom/android/tools/r8/graph/r0;

.field public static final synthetic e:Z = true


# instance fields
.field public final b:I

.field public final c:Lcom/android/tools/r8/graph/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/r0;

    sput-object v0, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/e1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/r0;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->y5:Lcom/android/tools/r8/graph/M2;

    invoke-static {p1, p0}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/R2;
    .locals 3

    .line 43
    sget-boolean v0, Lcom/android/tools/r8/graph/r0;->e:Z

    if-nez v0, :cond_1

    iget v1, p1, Lcom/android/tools/r8/graph/r0;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 44
    iget-object v0, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 45
    :cond_3
    :goto_1
    iget-object p0, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length p1, p0

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 p1, 0x0

    .line 46
    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/R2;
    .locals 3

    .line 47
    sget-boolean v0, Lcom/android/tools/r8/graph/r0;->e:Z

    if-nez v0, :cond_1

    iget v1, p1, Lcom/android/tools/r8/graph/r0;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 49
    :cond_3
    :goto_1
    iget-object p0, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_5

    aget-object v1, p0, v0

    .line 50
    iget-object v2, v1, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    if-ne v2, p2, :cond_4

    .line 51
    iget-object p0, v1, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    return-object p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/androidapi/a;)Lcom/android/tools/r8/graph/q0;
    .locals 7

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u0;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 54
    iget-object v3, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v4, v3, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->P5:Lcom/android/tools/r8/graph/M2;

    if-eq v4, v5, :cond_1

    return-object v1

    .line 55
    :cond_1
    iget-object v3, v3, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v3, v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    return-object v1

    .line 56
    :cond_2
    sget-boolean v3, Lcom/android/tools/r8/graph/r0;->e:Z

    if-nez v3, :cond_4

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->p1:Lcom/android/tools/r8/graph/L2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->q1:Lcom/android/tools/r8/graph/L2;

    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 57
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    aget-object v0, p0, v0

    .line 58
    aget-object v4, p0, v2

    const/4 v5, 0x2

    .line 59
    aget-object p0, p0, v5

    .line 60
    iget-object v5, v4, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->p1:Lcom/android/tools/r8/graph/L2;

    if-eq v5, v6, :cond_5

    return-object v1

    .line 61
    :cond_5
    iget-object v5, v4, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->N0()Z

    move-result v5

    if-nez v5, :cond_6

    return-object v1

    .line 62
    :cond_6
    iget-object v5, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->q1:Lcom/android/tools/r8/graph/L2;

    if-eq v5, v6, :cond_7

    return-object v1

    .line 63
    :cond_7
    iget-object v5, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v5

    if-nez v5, :cond_8

    return-object v1

    .line 64
    :cond_8
    iget-object v5, v0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->r1:Lcom/android/tools/r8/graph/L2;

    if-ne v5, p1, :cond_11

    iget-object p1, v0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->N0()Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_4

    .line 65
    :cond_9
    iget-object p1, p2, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S;->a()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return-object v1

    .line 69
    :cond_a
    iget-object p0, v0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$h;->W0()I

    move-result p0

    const/4 p1, -0x2

    if-ne p0, p1, :cond_b

    .line 70
    sget p0, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object p0, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    goto :goto_1

    :cond_b
    const/4 p1, -0x1

    if-ne p0, p1, :cond_c

    .line 71
    sget p0, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object p0, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    goto :goto_1

    .line 72
    :cond_c
    invoke-static {p0}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p0

    .line 73
    :goto_1
    iget-object p1, p2, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 74
    iget-object p3, v4, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2$h;->W0()I

    move-result p3

    if-lez p3, :cond_d

    .line 75
    iget-object v0, p1, Lcom/android/tools/r8/synthesis/S;->Y:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p3, v0, :cond_e

    .line 77
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->Y:Ljava/util/ArrayList;

    sub-int/2addr p3, v2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/synthesis/S$b;

    goto :goto_2

    .line 78
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_e
    :goto_2
    if-nez v3, :cond_10

    .line 79
    iget-object p1, p2, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 80
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->U:Lcom/android/tools/r8/synthesis/S$b;

    if-ne v1, p1, :cond_10

    .line 81
    invoke-interface {p0}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_3

    .line 82
    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 83
    :cond_10
    :goto_3
    new-instance p1, Lcom/android/tools/r8/graph/q0;

    invoke-direct {p1, v1, p0}, Lcom/android/tools/r8/graph/q0;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/androidapi/f;)V

    return-object p1

    :cond_11
    :goto_4
    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;
    .locals 4

    .line 41
    new-instance v0, Lcom/android/tools/r8/graph/r0;

    new-instance v1, Lcom/android/tools/r8/graph/e1;

    new-instance v2, Lcom/android/tools/r8/graph/t0;

    .line 42
    const-string v3, "value"

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/t0;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    const/4 p0, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/r0;
    .locals 7

    .line 24
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->D5:Lcom/android/tools/r8/graph/M2;

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x4c

    if-ne v4, v6, :cond_2

    :goto_1
    if-ge v5, v1, :cond_4

    .line 28
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3b

    if-eq v4, v6, :cond_1

    const/16 v6, 0x3c

    if-ne v4, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_2
    :goto_3
    if-ge v5, v1, :cond_4

    .line 29
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 30
    :cond_4
    :goto_4
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 31
    new-instance v4, Lcom/android/tools/r8/graph/R2$k;

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    .line 32
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    .line 33
    :cond_5
    new-instance p0, Lcom/android/tools/r8/graph/R2$b;

    sget-object v1, Lcom/android/tools/r8/graph/R2;->b:[Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/graph/R2;

    invoke-direct {p0, v1}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    .line 34
    invoke-static {v0, p1, p0}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;

    move-result-object p0

    return-object p0
.end method

.method public static a([Lcom/android/tools/r8/graph/R2;[Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/r0;
    .locals 6

    .line 20
    sget-boolean v0, Lcom/android/tools/r8/graph/r0;->e:Z

    if-nez v0, :cond_1

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 21
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/r0;

    new-instance v1, Lcom/android/tools/r8/graph/e1;

    iget-object v2, p2, Lcom/android/tools/r8/graph/u1;->C5:Lcom/android/tools/r8/graph/M2;

    new-instance v3, Lcom/android/tools/r8/graph/t0;

    .line 22
    const-string v4, "names"

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    new-instance p0, Lcom/android/tools/r8/graph/t0;

    .line 23
    const-string v4, "accessFlags"

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    new-instance v4, Lcom/android/tools/r8/graph/R2$b;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/graph/R2$b;-><init>([Lcom/android/tools/r8/graph/R2;)V

    invoke-direct {p0, p2, v4}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    filled-new-array {v3, p0}, [Lcom/android/tools/r8/graph/t0;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    const/4 p0, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/e1;)Ljava/lang/String;
    .locals 4

    .line 36
    iget-object p0, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 39
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/r0;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-static {p0}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/e1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/uf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/uf;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/vf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/vf;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    .line 4
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ;->G0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 6
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->P5:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 8
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->s1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v2, v2, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->t1:Lcom/android/tools/r8/graph/L2;

    .line 11
    iget-object v2, v2, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/nJ;->S0:Z

    if-eqz p1, :cond_2

    return v1

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p1, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v0, "Unexpected @CovariantReturnType annotation in non-platform build"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 15
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0

    .line 16
    :cond_3
    iget-object p0, v0, Lcom/android/tools/r8/graph/u1;->u1:Lcom/android/tools/r8/graph/L2;

    .line 17
    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->z5:Lcom/android/tools/r8/graph/M2;

    invoke-static {p1, p0}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->y0()Lcom/android/tools/r8/graph/W2;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/e1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Ljava/util/ArrayList;
    .locals 3

    .line 4
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    array-length v0, v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/r0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/graph/r0;->b:I

    return p0
.end method

.method public static c(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/u1;)Ljava/util/ArrayList;
    .locals 3

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->B5:Lcom/android/tools/r8/graph/M2;

    invoke-static {p1, p0}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p0

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    array-length v0, v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static d(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/u1;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p0, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->D5:Lcom/android/tools/r8/graph/M2;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/u1;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->O5:Lcom/android/tools/r8/graph/M2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p0, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/r0;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/e1;

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_1
    new-instance v0, Lcom/android/tools/r8/graph/r0;

    iget v1, p0, Lcom/android/tools/r8/graph/r0;->b:I

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/r0;)Z

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/e1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/r0;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    iget v1, p0, Lcom/android/tools/r8/graph/r0;->b:I

    iget v3, p1, Lcom/android/tools/r8/graph/r0;->b:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/e1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/r0;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e1;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    return v1
.end method

.method public k0()Lcom/android/tools/r8/graph/N2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l0()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/E9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/E9;-><init>()V

    return-object v0
.end method

.method public m0()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/r0;->b:I

    return v0
.end method

.method public n0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/graph/r0;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
