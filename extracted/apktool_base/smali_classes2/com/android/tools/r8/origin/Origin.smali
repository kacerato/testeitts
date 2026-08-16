.class public abstract Lcom/android/tools/r8/origin/Origin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/origin/Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/android/tools/r8/origin/d;

.field private static final d:Lcom/android/tools/r8/origin/e;

.field static final synthetic e:Z = true


# instance fields
.field private final b:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/origin/d;

    invoke-direct {v0}, Lcom/android/tools/r8/origin/d;-><init>()V

    sput-object v0, Lcom/android/tools/r8/origin/Origin;->c:Lcom/android/tools/r8/origin/d;

    new-instance v0, Lcom/android/tools/r8/origin/e;

    invoke-direct {v0}, Lcom/android/tools/r8/origin/e;-><init>()V

    sput-object v0, Lcom/android/tools/r8/origin/Origin;->d:Lcom/android/tools/r8/origin/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/origin/Origin;->b:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/origin/Origin;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/origin/Origin;->b:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/origin/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/origin/Origin;-><init>()V

    return-void
.end method

.method public static root()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/origin/Origin;->c:Lcom/android/tools/r8/origin/d;

    return-object v0
.end method

.method public static unknown()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/origin/Origin;->d:Lcom/android/tools/r8/origin/e;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/origin/Origin;->parent()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/origin/Origin;->a(I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/origin/Origin;->part()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public compareTo(Lcom/android/tools/r8/origin/Origin;)I
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/origin/Origin;->parts()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/origin/Origin;->parts()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/origin/Origin;->compareTo(Lcom/android/tools/r8/origin/Origin;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/origin/Origin;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/origin/Origin;

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/origin/Origin;->part()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/tools/r8/origin/Origin;->part()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/origin/Origin;->parent()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/origin/Origin;->parent()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/origin/Origin;->parts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public parent()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/origin/Origin;->b:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public abstract part()Ljava/lang/String;
.end method

.method public parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/origin/Origin;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/origin/Origin;->parts()Ljava/util/List;

    move-result-object v0

    const-string v1, ":"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
