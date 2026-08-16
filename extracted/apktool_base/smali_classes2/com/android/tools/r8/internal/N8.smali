.class public final Lcom/android/tools/r8/internal/N8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final e:Lcom/android/tools/r8/internal/N8;

.field public static final f:Lcom/android/tools/r8/internal/N8;

.field public static final synthetic g:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/hC;

.field public final c:Lcom/android/tools/r8/internal/hC;

.field public d:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/N8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/N8;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/N8;->e:Lcom/android/tools/r8/internal/N8;

    new-instance v0, Lcom/android/tools/r8/internal/N8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/N8;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/N8;->f:Lcom/android/tools/r8/internal/N8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/N8;->g:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 10
    invoke-static {p2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;Lcom/android/tools/r8/internal/TH;ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p5}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 21
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 22
    :cond_0
    invoke-interface {p3, p4}, Lcom/android/tools/r8/internal/TH;->add(I)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V
    .locals 0

    if-eq p3, p0, :cond_0

    .line 8
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/N8;
    .locals 3

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/wN0;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/tools/r8/internal/wN0;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/N8;->a(Ljava/util/function/BiConsumer;)V

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/N8;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/N8;
    .locals 4

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/CH;

    const/16 v1, 0x10

    .line 11
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    new-instance v3, Lcom/android/tools/r8/internal/vN0;

    invoke-direct {v3, p1, p2, v1, v0}, Lcom/android/tools/r8/internal/vN0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;Lcom/android/tools/r8/internal/TH;)V

    const/4 p1, 0x0

    .line 14
    invoke-static {v2, v3, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Lcom/android/tools/r8/internal/bI;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 15
    sget-boolean p1, Lcom/android/tools/r8/internal/N8;->g:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p0

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 17
    iget-object p2, p0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    goto :goto_1

    .line 18
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/AT;->a(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/CH;)Ljava/util/ArrayList;

    move-result-object p2

    .line 19
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/N8;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final a()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/N8;->d:Lcom/android/tools/r8/internal/QC;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-static {v0}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/N8;->d:Lcom/android/tools/r8/internal/QC;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/N8;->d:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 3

    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/N8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/N8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    iget-object v3, p1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/hC;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    iget-object p1, p1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/hC;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/L8;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/L8;-><init>(Lcom/android/tools/r8/internal/N8;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/N8;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
