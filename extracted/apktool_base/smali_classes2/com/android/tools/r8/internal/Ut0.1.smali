.class public final Lcom/android/tools/r8/internal/Ut0;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 6

    .line 7
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->c()V

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    .line 10
    invoke-static {v1}, Lcom/android/tools/r8/c;->b(I)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->m()Z

    move-result v1

    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid bitset value type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; at path "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->o()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    move v1, v4

    :goto_1
    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v1

    goto :goto_0

    .line 16
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    .line 17
    const-string v2, "Invalid bitset value "

    const-string v3, ", expected 0 or 1; at path "

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->g()V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Ljava/util/BitSet;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->d()V

    .line 3
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    int-to-long v2, v2

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/qL;->a(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->f()V

    return-void
.end method
