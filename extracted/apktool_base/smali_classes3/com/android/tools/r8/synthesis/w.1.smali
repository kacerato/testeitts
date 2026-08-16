.class public final Lcom/android/tools/r8/synthesis/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/android/tools/r8/synthesis/t;

.field public final c:Lcom/android/tools/r8/internal/t40;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/t;Ljava/util/List;Lcom/android/tools/r8/internal/t40;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/synthesis/w;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iput-object p2, p0, Lcom/android/tools/r8/synthesis/w;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/w;->c:Lcom/android/tools/r8/internal/t40;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/synthesis/t;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/w;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/o2;)Z
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    .line 11
    iget-object v1, p1, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/w;->a:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/synthesis/l1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/synthesis/l1;-><init>(Lcom/android/tools/r8/shaking/o2;)V

    .line 14
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/w;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/w;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/w;->b:Lcom/android/tools/r8/synthesis/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EquivalenceGroup{ size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", repr = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
