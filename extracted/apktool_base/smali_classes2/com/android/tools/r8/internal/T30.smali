.class public final Lcom/android/tools/r8/internal/T30;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/S30;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Oz;

.field public final b:Lcom/android/tools/r8/internal/ss0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/ss0;->b:Lcom/android/tools/r8/internal/os0;

    new-instance v1, Lcom/android/tools/r8/internal/S30;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/S30;-><init>(Lcom/android/tools/r8/internal/ss0;)V

    sput-object v1, Lcom/android/tools/r8/internal/T30;->c:Lcom/android/tools/r8/internal/S30;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/ss0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/T30;->a:Lcom/android/tools/r8/internal/Oz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/T30;->b:Lcom/android/tools/r8/internal/ss0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    move-object v1, v4

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->d()V

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/FS;

    .line 5
    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/FS;-><init>(Z)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->c()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v5, "Unexpected token: "

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    if-nez v1, :cond_6

    .line 8
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v1

    if-eq v1, v9, :cond_5

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    if-ne v1, v6, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    return-object v4

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->m()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/T30;->b:Lcom/android/tools/r8/internal/ss0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ss0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_6
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 15
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->k()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 16
    instance-of v10, v1, Ljava/util/Map;

    if-eqz v10, :cond_8

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->q()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_8
    move-object v10, v4

    .line 18
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v11

    .line 19
    invoke-static {v11}, Lcom/android/tools/r8/c;->b(I)I

    move-result v12

    if-eqz v12, :cond_a

    if-eq v12, v2, :cond_9

    move-object v12, v4

    goto :goto_3

    .line 20
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->d()V

    .line 21
    new-instance v12, Lcom/android/tools/r8/internal/FS;

    .line 22
    invoke-direct {v12, v3}, Lcom/android/tools/r8/internal/FS;-><init>(Z)V

    goto :goto_3

    .line 23
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->c()V

    .line 24
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-eqz v12, :cond_b

    move v13, v3

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    :goto_4
    if-nez v12, :cond_10

    .line 25
    invoke-static {v11}, Lcom/android/tools/r8/c;->b(I)I

    move-result v12

    if-eq v12, v9, :cond_f

    if-eq v12, v8, :cond_e

    if-eq v12, v7, :cond_d

    if-ne v12, v6, :cond_c

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    move-object v11, v4

    goto :goto_5

    .line 27
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v11}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_d
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->m()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_5

    .line 29
    :cond_e
    iget-object v11, p0, Lcom/android/tools/r8/internal/T30;->b:Lcom/android/tools/r8/internal/ss0;

    invoke-virtual {v11, p1}, Lcom/android/tools/r8/internal/ss0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Number;

    move-result-object v11

    goto :goto_5

    .line 30
    :cond_f
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->s()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_10
    move-object v11, v12

    .line 31
    :goto_5
    instance-of v12, v1, Ljava/util/List;

    if-eqz v12, :cond_11

    .line 32
    move-object v10, v1

    check-cast v10, Ljava/util/List;

    .line 33
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 34
    :cond_11
    move-object v12, v1

    check-cast v12, Ljava/util/Map;

    .line 35
    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    if-eqz v13, :cond_7

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v1, v11

    goto/16 :goto_1

    .line 37
    :cond_12
    instance-of v10, v1, Ljava/util/List;

    if-eqz v10, :cond_13

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->g()V

    goto :goto_7

    .line 39
    :cond_13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->h()V

    .line 40
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_14

    return-object v1

    .line 41
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/T30;->a:Lcom/android/tools/r8/internal/Oz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance v2, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v0

    .line 46
    instance-of v1, v0, Lcom/android/tools/r8/internal/T30;

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->e()V

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->g()V

    return-void

    .line 49
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    return-void
.end method
