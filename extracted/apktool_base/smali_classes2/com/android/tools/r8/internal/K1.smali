.class public abstract Lcom/android/tools/r8/internal/K1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/K1;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/A7;

    if-nez v0, :cond_20

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_1f

    instance-of v0, p2, Lcom/android/tools/r8/internal/A7;

    if-nez v0, :cond_1f

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/internal/N1;

    if-nez v0, :cond_1c

    instance-of v1, p2, Lcom/android/tools/r8/internal/N1;

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of p3, p1, Lcom/android/tools/r8/internal/Hm0;

    if-eqz p3, :cond_3

    invoke-static {p2}, Lcom/android/tools/r8/internal/n10;->a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of p3, p2, Lcom/android/tools/r8/internal/Hm0;

    if-eqz p3, :cond_4

    invoke-static {p1}, Lcom/android/tools/r8/internal/n10;->a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of p3, p1, Lcom/android/tools/r8/internal/n10;

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->I()Lcom/android/tools/r8/internal/n10;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/internal/n10;->b:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto/16 :goto_9

    :cond_5
    instance-of p3, p2, Lcom/android/tools/r8/internal/n10;

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->I()Lcom/android/tools/r8/internal/n10;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/internal/n10;->b:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object p2

    :cond_6
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    :cond_7
    sget-boolean v0, Lcom/android/tools/r8/internal/K1;->b:Z

    if-nez v0, :cond_9

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object p3

    if-nez v0, :cond_b

    instance-of v1, p1, Lcom/android/tools/r8/internal/n10;

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_1
    if-nez v0, :cond_d

    instance-of v1, p2, Lcom/android/tools/r8/internal/n10;

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p3, p3, Lcom/android/tools/r8/internal/uI;

    if-eqz p3, :cond_1b

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result p3

    if-eqz p3, :cond_1a

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result p3

    if-nez p3, :cond_e

    goto/16 :goto_6

    :cond_e
    instance-of p3, p1, Lcom/android/tools/r8/internal/Im0;

    if-nez p3, :cond_f

    instance-of p3, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz p3, :cond_f

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    :cond_f
    instance-of p3, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz p3, :cond_14

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    instance-of p3, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz p3, :cond_10

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/K1;->a:Lcom/android/tools/r8/graph/y;

    iget-object p3, p3, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    iget-wide v0, p1, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v0, v0

    iget-wide v1, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Im0;->S()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Im0;->S()I

    move-result p2

    and-int/2addr p1, p2

    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    :cond_10
    if-nez v0, :cond_12

    instance-of p3, p2, Lcom/android/tools/r8/internal/Jj;

    if-eqz p3, :cond_11

    goto :goto_3

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->H()Lcom/android/tools/r8/internal/Jj;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/K1;->a:Lcom/android/tools/r8/graph/y;

    iget-object p3, p3, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p1, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v0, v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Im0;->S()I

    move-result p1

    iget v1, p2, Lcom/android/tools/r8/internal/Jj;->b:I

    if-ne v1, v0, :cond_13

    iget v2, p2, Lcom/android/tools/r8/internal/Jj;->c:I

    if-ne v2, p1, :cond_13

    return-object p2

    :cond_13
    and-int/2addr v0, v1

    iget p2, p2, Lcom/android/tools/r8/internal/Jj;->c:I

    and-int/2addr p1, p2

    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    :cond_14
    if-nez v0, :cond_16

    instance-of p3, p1, Lcom/android/tools/r8/internal/Jj;

    if-eqz p3, :cond_15

    goto :goto_4

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    :goto_4
    if-nez v0, :cond_18

    instance-of p3, p2, Lcom/android/tools/r8/internal/Jj;

    if-eqz p3, :cond_17

    goto :goto_5

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_18
    :goto_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->H()Lcom/android/tools/r8/internal/Jj;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->H()Lcom/android/tools/r8/internal/Jj;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/K1;->a:Lcom/android/tools/r8/graph/y;

    iget-object p3, p3, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lcom/android/tools/r8/internal/Jj;->b:I

    iget p2, p2, Lcom/android/tools/r8/internal/Jj;->c:I

    iget v1, p1, Lcom/android/tools/r8/internal/Jj;->b:I

    if-ne v1, v0, :cond_19

    iget v2, p1, Lcom/android/tools/r8/internal/Jj;->c:I

    if-ne v2, p2, :cond_19

    return-object p1

    :cond_19
    and-int/2addr v0, v1

    iget p1, p1, Lcom/android/tools/r8/internal/Jj;->c:I

    and-int/2addr p1, p2

    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    :cond_1a
    :goto_6
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    :cond_1b
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    :cond_1c
    :goto_7
    sget-boolean p1, Lcom/android/tools/r8/internal/K1;->b:Z

    if-nez p1, :cond_1e

    if-eqz v0, :cond_1e

    instance-of p1, p2, Lcom/android/tools/r8/internal/N1;

    if-nez p1, :cond_1d

    goto :goto_8

    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1e
    :goto_8
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    :cond_1f
    :goto_9
    return-object p1

    :cond_20
    return-object p2
.end method
