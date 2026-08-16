.class public Lcom/android/tools/r8/internal/mY;
.super Lcom/android/tools/r8/internal/EA;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/internal/EA;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/ws0;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    const-string v4, "api_level_below_or_equal"

    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v4

    iget-object v5, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v6, "api_level_greater_or_equal"

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/tools/r8/internal/V2;

    iget-object v7, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v6

    invoke-static {v4}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v4

    invoke-static {v6}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/android/tools/r8/internal/V2;-><init>(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;)V

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/android/tools/r8/internal/V2;

    invoke-static {v4}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/android/tools/r8/internal/V2;-><init>(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;)V

    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/IA;

    iget-object v6, p0, Lcom/android/tools/r8/internal/EA;->d:Lcom/android/tools/r8/internal/Ef0;

    sget-boolean v7, Lcom/android/tools/r8/internal/EA;->i:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v4, v6, v7}, Lcom/android/tools/r8/internal/IA;->b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA$a;

    move-result-object v4

    goto :goto_4

    :cond_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/EA;->d:Lcom/android/tools/r8/internal/Ef0;

    sget-boolean v6, Lcom/android/tools/r8/internal/EA;->i:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/IA;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA$a;

    move-result-object v4

    :goto_4
    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/IA$a;)V

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/IA$a;->a()Lcom/android/tools/r8/internal/IA;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public c(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/internal/iY;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/EA;->b(Lcom/android/tools/r8/v0;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Hk1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Hk1;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/EA;->a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/SA;

    move-result-object v3

    const-string p1, "common_flags"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mY;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const-string p1, "library_flags"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mY;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    const-string p1, "program_flags"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mY;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    new-instance p1, Lcom/android/tools/r8/internal/iY;

    sget-boolean v0, Lcom/android/tools/r8/internal/EA;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/iY;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/internal/SA;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object p1
.end method
