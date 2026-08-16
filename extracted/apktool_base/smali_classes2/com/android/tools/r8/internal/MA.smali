.class public final Lcom/android/tools/r8/internal/MA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/j;

.field public final b:Lcom/android/tools/r8/internal/BU;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lcom/android/tools/r8/internal/nC;

.field public final f:Lcom/android/tools/r8/internal/QC;

.field public final g:Lcom/android/tools/r8/internal/QC;

.field public final h:Lcom/android/tools/r8/internal/nC;

.field public final i:Ljava/util/Set;

.field public final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/BU;Ljava/lang/String;ZLjava/lang/String;Lcom/android/tools/r8/internal/IA;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/MA;->i:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    iput-object p2, p0, Lcom/android/tools/r8/internal/MA;->b:Lcom/android/tools/r8/internal/BU;

    iput-object p3, p0, Lcom/android/tools/r8/internal/MA;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/MA;->d:Z

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/IA;->i()Ljava/util/Map;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/kC;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/MA;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/MA;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/MA;->e:Lcom/android/tools/r8/internal/nC;

    iget-object p1, p6, Lcom/android/tools/r8/internal/IA;->b:Lcom/android/tools/r8/internal/QC;

    sget p2, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance p2, Lcom/android/tools/r8/internal/IC;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/IC;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/MA;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/MA;->g:Lcom/android/tools/r8/internal/QC;

    iget-object p1, p6, Lcom/android/tools/r8/internal/IA;->c:Lcom/android/tools/r8/internal/QC;

    sget p2, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance p2, Lcom/android/tools/r8/internal/IC;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/IC;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/MA;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/MA;->f:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/IA;->h()Ljava/util/Map;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/kC;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p0, p6}, Lcom/android/tools/r8/internal/MA;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-interface {p1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/MA;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-interface {p6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/MA;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p6

    invoke-virtual {p2, v0, p6}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/MA;->h:Lcom/android/tools/r8/internal/nC;

    const-string p1, "com.tools.android:desugar_jdk_libs:1.2."

    invoke-virtual {p5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/MA;->j:Z

    return-void
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/graph/L2;Ljava/util/List;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    .line 12
    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object p0, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p3, p0}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p3, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 14
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)Lcom/android/tools/r8/graph/L2;
    .locals 6

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 44
    :goto_0
    iget-object v3, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v4, v3, v2

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    array-length v4, v3

    sub-int/2addr v4, v2

    new-array v5, v4, [B

    .line 46
    invoke-static {v3, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget p1, p1, Lcom/android/tools/r8/graph/L2;->e:I

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1, v5}, Lcom/android/tools/r8/graph/u1;->a(I[B)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 48
    :goto_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    .line 49
    iget-object v1, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 18
    iget-object v2, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/BM0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/BM0;-><init>(Lcom/android/tools/r8/internal/MA;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/x0;->a(Ljava/util/function/Consumer;)V

    .line 32
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/MA;->d:Z

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/BM0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/BM0;-><init>(Lcom/android/tools/r8/internal/MA;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/x0;->b(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 24
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/MA;->d(Lcom/android/tools/r8/graph/M2;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)V
    .locals 2

    .line 34
    iget-object v0, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 36
    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, p2, p4, v0}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 39
    sget-boolean p3, Lcom/android/tools/r8/internal/MA;->k:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Trying to rewrite a type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with different prefix that already exists."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 40
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/MA;->b:Lcom/android/tools/r8/internal/BU;

    iget-object p4, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    .line 41
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 42
    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/BU;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/JA;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->b:Lcom/android/tools/r8/internal/BU;

    .line 28
    iget-object p2, p2, Lcom/android/tools/r8/internal/JA;->a:Lcom/android/tools/r8/graph/M2;

    .line 29
    iget-object v0, v0, Lcom/android/tools/r8/internal/BU;->c:Ljava/util/IdentityHashMap;

    .line 30
    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/nC;)V
    .locals 1

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/wM0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/wM0;-><init>(Lcom/android/tools/r8/internal/MA;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/AM0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/AM0;-><init>(Lcom/android/tools/r8/internal/MA;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->e:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->f:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->h:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->i:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 6
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/MA;->j:Z

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    .line 9
    iget-object v4, p0, Lcom/android/tools/r8/internal/MA;->e:Lcom/android/tools/r8/internal/nC;

    new-instance v5, Lcom/android/tools/r8/internal/xM0;

    invoke-direct {v5, v0, v3, v1}, Lcom/android/tools/r8/internal/xM0;-><init>(Ljava/util/Set;Lcom/android/tools/r8/graph/L2;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/yM0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/yM0;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    :cond_1
    const-string v1, "The following prefixes do not match any type: "

    invoke-interface {p1, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/MA;->d(Lcom/android/tools/r8/graph/M2;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->f:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/MA;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->b:Lcom/android/tools/r8/internal/BU;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/tools/r8/internal/BU;->s:Z

    iget-object v1, v1, Lcom/android/tools/r8/internal/BU;->b:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->b:Lcom/android/tools/r8/internal/BU;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/MA;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/internal/BU;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/MA;->c(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->h:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/MA;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->h:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/android/tools/r8/internal/zM0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/internal/zM0;-><init>(Lcom/android/tools/r8/internal/MA;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/MA;->i:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->e:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/MA;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/MA;->e:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/L2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/MA;->i:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/MA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->g:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/MA;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/MA;->b:Lcom/android/tools/r8/internal/BU;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/BU;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    :cond_2
    :goto_1
    return-void
.end method
