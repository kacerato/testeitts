.class public abstract Lcom/android/tools/r8/shaking/Y3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/shaking/V3;

.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/V3;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/V3;-><init>()V

    sput-object v0, Lcom/android/tools/r8/shaking/Y3;->a:Lcom/android/tools/r8/shaking/V3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/q3$a;)Lcom/android/tools/r8/shaking/Y3;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    .line 30
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object p0, Lcom/android/tools/r8/shaking/Y3;->a:Lcom/android/tools/r8/shaking/V3;

    return-object p0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Lcom/android/tools/r8/shaking/X3;

    iget-object p0, p0, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/X3;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcom/android/tools/r8/shaking/W3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/W3;-><init>(Lcom/android/tools/r8/shaking/q3$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;I)Z
    .locals 10

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_10

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_b

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_6

    const/16 v3, 0x3f

    if-eq v0, v3, :cond_2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq p3, v3, :cond_1

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-eq v0, p3, :cond_0

    goto :goto_1

    :cond_0
    move p3, v3

    goto/16 :goto_4

    :cond_1
    :goto_1
    return v1

    .line 5
    :cond_2
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/r4;

    .line 6
    sget-boolean v3, Lcom/android/tools/r8/shaking/Y3;->b:Z

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r4;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 7
    :cond_4
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p3, v3, :cond_5

    return v1

    .line 8
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r4;->b()Lcom/android/tools/r8/shaking/r4$b;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    .line 9
    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    monitor-enter v0

    .line 10
    :try_start_0
    iput-object p3, v0, Lcom/android/tools/r8/shaking/r4$b;->b:Ljava/lang/String;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p5, p5, 0x1

    move p3, v1

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0

    throw p0

    .line 13
    :cond_6
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/r4;

    .line 14
    sget-boolean v3, Lcom/android/tools/r8/shaking/Y3;->b:Z

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r4;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r4;->a()Lcom/android/tools/r8/shaking/r4$a;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r4$a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p3

    if-lt v3, v4, :cond_a

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_5

    .line 19
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 p5, p5, 0x1

    .line 20
    const-string p3, ">"

    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    move p3, v0

    :goto_4
    add-int/2addr p1, v2

    goto/16 :goto_0

    :cond_a
    :goto_5
    return v1

    .line 21
    :cond_b
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/r4;

    .line 22
    sget-boolean v3, Lcom/android/tools/r8/shaking/Y3;->b:Z

    if-nez v3, :cond_d

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r4;->e()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 23
    :cond_d
    :goto_6
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r4;->b()Lcom/android/tools/r8/shaking/r4$b;

    move-result-object v0

    move v9, p3

    .line 24
    :goto_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v9, v3, :cond_f

    .line 25
    invoke-virtual {p2, p3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/r4$b;->a(Ljava/lang/String;)V

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v8, p5, 0x1

    move-object v3, p0

    move-object v5, p2

    move v6, v9

    move-object v7, p4

    .line 26
    invoke-static/range {v3 .. v8}, Lcom/android/tools/r8/shaking/Y3;->a(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_e

    return v2

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_f
    return v1

    .line 27
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p3, p0, :cond_11

    return v2

    :cond_11
    return v1
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/shaking/Y3;
    .locals 0

    .line 1
    return-object p0
.end method

.method public a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 0

    .line 28
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method
