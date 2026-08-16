.class public final Lcom/android/tools/r8/shaking/B4;
.super Lcom/android/tools/r8/shaking/D4;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/C;Lcom/android/tools/r8/internal/hC;Ljava/util/Set;Ljava/util/ArrayList;)V
    .locals 14

    sget-object v9, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    new-instance v6, Lcom/android/tools/r8/internal/W60;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/W60;-><init>()V

    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v12, Lcom/android/tools/r8/internal/h80;->c:Lcom/android/tools/r8/internal/h80;

    sget-object v13, Lcom/android/tools/r8/internal/pI;->a:Lcom/android/tools/r8/internal/oI;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v4, v9

    move-object v5, v9

    move-object v7, v8

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v13}, Lcom/android/tools/r8/shaking/D4;-><init>(Lcom/android/tools/r8/shaking/C;Lcom/android/tools/r8/internal/hC;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W60;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/nI;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/J2;)V
    .locals 1

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/shaking/f5;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/f5;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-static {p0, p2, v0}, Lcom/android/tools/r8/internal/SR;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)Lcom/android/tools/r8/shaking/C4;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/C4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/C4;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/D4;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/B4;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/B4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/B4;
    .locals 4

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O5;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 16
    :cond_0
    const-string p1, "Prune MainDexRootSet"

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    new-instance v0, Lcom/android/tools/r8/shaking/g5;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/g5;-><init>()V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    sget-boolean p1, Lcom/android/tools/r8/shaking/B4;->o:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_2
    :goto_0
    new-instance p1, Lcom/android/tools/r8/shaking/B4;

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/shaking/D4;->e:Lcom/android/tools/r8/internal/hC;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/shaking/B4;-><init>(Lcom/android/tools/r8/shaking/C;Lcom/android/tools/r8/internal/hC;Ljava/util/Set;Ljava/util/ArrayList;)V

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/B4;
    .locals 4

    .line 2
    const-string v0, "Rewrite MainDexRootSet"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    goto :goto_1

    .line 4
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 6
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/shaking/D4;->e:Lcom/android/tools/r8/internal/hC;

    new-instance v2, Lcom/android/tools/r8/shaking/h5;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/shaking/h5;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/eC;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    new-instance v2, Lcom/android/tools/r8/shaking/g5;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/g5;-><init>()V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/shaking/B4;->o:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/tools/r8/shaking/B4;

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 12
    invoke-virtual {v2, p1, p2}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/B;

    move-result-object p1

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/tools/r8/shaking/B4;-><init>(Lcom/android/tools/r8/shaking/C;Lcom/android/tools/r8/internal/hC;Ljava/util/Set;Ljava/util/ArrayList;)V

    .line 14
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v1
.end method
