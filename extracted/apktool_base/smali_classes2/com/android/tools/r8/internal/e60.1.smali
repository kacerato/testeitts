.class public abstract Lcom/android/tools/r8/internal/e60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/MN;

.field public final b:Lcom/android/tools/r8/internal/cP;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/e60;->a:Lcom/android/tools/r8/internal/MN;

    iput-object p2, p0, Lcom/android/tools/r8/internal/e60;->b:Lcom/android/tools/r8/internal/cP;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/e60;)I
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/e60;->d()Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/mP;)Ljava/util/function/BiConsumer;
    .locals 1

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/r91;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/r91;-><init>(Lcom/android/tools/r8/internal/mP;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/mP;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/mP;)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/e60;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/mP;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/Mk0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    .line 13
    invoke-static {p0, p2}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/Mk0;)Lcom/android/tools/r8/internal/Mk0;

    return-void
.end method

.method public static synthetic a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/e60;)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/n91;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/n91;-><init>(Ljava/util/IdentityHashMap;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/o91;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/o91;-><init>()V

    .line 4
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/p91;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/p91;-><init>()V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/q91;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/q91;-><init>(Ljava/util/IdentityHashMap;)V

    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/e60;)I
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/e60;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "-keepclassmembers"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v6, v0

    goto :goto_0

    :sswitch_1
    const-string v7, "-keep"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v6, v1

    goto :goto_0

    :sswitch_2
    const-string v7, "-checkdiscard"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v6, v2

    goto :goto_0

    :sswitch_3
    const-string v7, "-keepattributes"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move v6, v3

    goto :goto_0

    :sswitch_4
    const-string v7, "-keepclasseswithmembers"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v6, v4

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/e60;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected consequence keep type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v1

    :pswitch_1
    return v3

    :pswitch_2
    return v0

    :pswitch_3
    return v4

    :pswitch_4
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7b21b9a1 -> :sswitch_4
        -0x6db75ff7 -> :sswitch_3
        -0x162ef0bd -> :sswitch_2
        0x2ac4d32 -> :sswitch_1
        0x36ae1ad3 -> :sswitch_0
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


# virtual methods
.method public a()Ljava/util/List;
    .locals 2

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    const-string v0, "Unreachable"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/PM;)V
    .locals 0

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    const-string p2, "Unreachable"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public b(Ljava/lang/StringBuilder;)V
    .locals 12

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/e60;->a:Lcom/android/tools/r8/internal/MN;

    .line 5
    sget-object v1, Lcom/android/tools/r8/internal/IN;->a:Lcom/android/tools/r8/internal/IN;

    .line 6
    iget-object v2, v0, Lcom/android/tools/r8/internal/MN;->b:Lcom/android/tools/r8/internal/IN;

    const/16 v3, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "# context: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/internal/MN;->b:Lcom/android/tools/r8/internal/IN;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IN;->a()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :goto_0
    sget-object v1, Lcom/android/tools/r8/internal/JN;->b:Lcom/android/tools/r8/internal/JN;

    .line 11
    iget-object v2, v0, Lcom/android/tools/r8/internal/MN;->c:Lcom/android/tools/r8/internal/JN;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/JN;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/MN;->c:Lcom/android/tools/r8/internal/JN;

    iget-object v0, v0, Lcom/android/tools/r8/internal/JN;->a:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Lcom/android/tools/r8/internal/Nk0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v1, "# description: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/e60;->d()Z

    move-result v0

    const-string v1, " }"

    const-string v2, " {"

    const/16 v3, 0x20

    if-eqz v0, :cond_4

    .line 16
    const-string v0, "-if"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/e60;->a(Ljava/lang/StringBuilder;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/e60;->a()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/PM;

    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0, p1, v4}, Lcom/android/tools/r8/internal/e60;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/PM;)V

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/e60;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/e60;->b:Lcom/android/tools/r8/internal/cP;

    .line 28
    sget-object v4, Lcom/android/tools/r8/internal/bP;->h:[Lcom/android/tools/r8/internal/bP;

    invoke-virtual {v4}, [Lcom/android/tools/r8/internal/bP;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/tools/r8/internal/bP;

    .line 29
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_d

    aget-object v7, v4, v6

    .line 30
    iget-object v8, v0, Lcom/android/tools/r8/internal/cP;->a:Lcom/android/tools/r8/internal/QC;

    .line 31
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 32
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eq v8, v11, :cond_5

    if-eq v8, v10, :cond_c

    if-eq v8, v9, :cond_c

    .line 33
    :cond_5
    const-string v8, ",allow"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_b

    const/4 v8, 0x1

    if-eq v7, v8, :cond_a

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    if-eq v7, v11, :cond_8

    if-eq v7, v10, :cond_7

    if-ne v7, v9, :cond_6

    .line 35
    const-string v7, "signatureremoval"

    goto :goto_3

    .line 36
    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/Zu0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Zu0;-><init>()V

    throw p1

    .line 37
    :cond_7
    const-string v7, "annotationremoval"

    goto :goto_3

    .line 38
    :cond_8
    const-string v7, "accessmodification"

    goto :goto_3

    .line 39
    :cond_9
    const-string v7, "obfuscation"

    goto :goto_3

    .line 40
    :cond_a
    const-string v7, "optimization"

    goto :goto_3

    .line 41
    :cond_b
    const-string v7, "shrinking"

    .line 42
    :goto_3
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 43
    :cond_d
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/e60;->c(Ljava/lang/StringBuilder;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/e60;->c()Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/PM;

    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/e60;->b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/PM;)V

    goto :goto_4

    .line 51
    :cond_e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    return-void
.end method

.method public abstract b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/PM;)V
.end method

.method public abstract c()Ljava/util/List;
.end method

.method public abstract c(Ljava/lang/StringBuilder;)V
.end method

.method public d()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Z50;

    return v0
.end method
