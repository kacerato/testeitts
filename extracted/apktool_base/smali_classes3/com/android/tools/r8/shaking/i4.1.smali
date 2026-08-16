.class public abstract Lcom/android/tools/r8/shaking/i4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/i4$b;,
        Lcom/android/tools/r8/shaking/i4$a;
    }
.end annotation


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/i4;
    .locals 1

    .line 40
    new-instance v0, Lcom/android/tools/r8/shaking/i4$b;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/i4$b;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;
    .locals 3

    if-eqz p0, :cond_7

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, -0x1

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "***"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "**"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/shaking/q3$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    new-instance p1, Lcom/android/tools/r8/shaking/i4$b;

    iget-object p0, p0, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/shaking/i4$b;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object p1

    .line 34
    :cond_6
    new-instance p2, Lcom/android/tools/r8/shaking/o4;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/shaking/o4;-><init>(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;)V

    return-object p2

    .line 35
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/shaking/k4;->b:Lcom/android/tools/r8/shaking/k4;

    return-object p0

    .line 36
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/shaking/j4;->c:Lcom/android/tools/r8/shaking/j4;

    return-object p0

    .line 37
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/shaking/m4;->d:Lcom/android/tools/r8/shaking/m4;

    return-object p0

    .line 38
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/shaking/m4;->e:Lcom/android/tools/r8/shaking/m4;

    return-object p0

    .line 39
    :pswitch_4
    sget-object p0, Lcom/android/tools/r8/shaking/l4;->c:Lcom/android/tools/r8/shaking/l4;

    return-object p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x2a -> :sswitch_3
        0x540 -> :sswitch_2
        0xa2ea -> :sswitch_1
        0xb26e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)Ljava/util/List;
    .locals 5

    .line 18
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 20
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i4;

    .line 23
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 24
    array-length v4, v0

    if-ge v4, v3, :cond_1

    .line 25
    array-length v4, v0

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 26
    :cond_1
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 27
    :cond_2
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 2

    .line 10
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v1, Lcom/android/tools/r8/shaking/cd;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/shaking/cd;-><init>(Ljava/util/function/Predicate;Ljava/util/List;)V

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i4;

    .line 15
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/util/List;Lcom/android/tools/r8/shaking/r4;)V
    .locals 0

    .line 16
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 17
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/shaking/i4$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;
    .locals 0

    .line 2
    return-object p0
.end method

.method public a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 0

    .line 41
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public a(Ljava/util/function/Consumer;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/i4;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/nx0;->a:Lcom/android/tools/r8/internal/o6;

    .line 7
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/j6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/shaking/C6;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/shaking/C6;-><init>(Lcom/android/tools/r8/shaking/i4;)V

    .line 9
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/shaking/i4;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public abstract b(Lcom/android/tools/r8/graph/M2;)Z
.end method

.method public c()Ljava/util/Set;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/i4;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public d()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/shaking/j4;

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method
