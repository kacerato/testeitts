.class public Lcom/android/tools/r8/dex/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/D20;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/D20;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/D20;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/n;->a:Lcom/android/tools/r8/internal/D20;

    sget-boolean v0, Lcom/android/tools/r8/dex/n;->b:Z

    const/16 v1, 0x7e

    const-string v2, "~~~"

    if-nez v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/z20;)V
    .locals 4

    .line 18
    iget-object v0, p1, Lcom/android/tools/r8/internal/z20;->c:Lcom/android/tools/r8/internal/D20;

    iget-object v1, v0, Lcom/android/tools/r8/internal/D20;->b:[Ljava/lang/Object;

    iget p1, p1, Lcom/android/tools/r8/internal/z20;->b:I

    aget-object v1, v1, p1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/internal/D20;->c:[J

    aget-wide v2, v0, p1

    const/16 p1, 0x10

    .line 21
    invoke-static {v2, v3, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/L2;)Z
    .locals 5

    const/4 v0, 0x3

    .line 7
    :try_start_0
    new-array v0, v0, [C

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    .line 9
    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/L2;->a([B[C)I

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 10
    aget-char v3, v0, v2

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_2

    if-ge v3, v4, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    if-ne p0, v1, :cond_3

    return v1

    .line 11
    :cond_3
    aget-char v3, v0, v1

    if-eq v3, v4, :cond_5

    if-ge v3, v4, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    const/4 v3, 0x2

    if-ne p0, v3, :cond_6

    return v1

    .line 12
    :cond_6
    aget-char p0, v0, v3
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p0, v4, :cond_7

    return v1

    :cond_7
    return v2

    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad format"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gL;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/dex/n;->a:Lcom/android/tools/r8/internal/D20;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/D20;->e()Lcom/android/tools/r8/internal/A20;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lu/h1;

    invoke-direct {v2}, Lu/h1;-><init>()V

    .line 4
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lu/i1;

    invoke-direct {v2, v0}, Lu/i1;-><init>(Lcom/android/tools/r8/internal/gL;)V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "~~~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/gL;)V
    .locals 1

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 16
    new-instance v0, Lu/j1;

    invoke-direct {v0, p0}, Lu/j1;-><init>(Lcom/android/tools/r8/dex/n;)V

    .line 17
    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map$Entry;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/n;->a:Lcom/android/tools/r8/internal/D20;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/D20;->a(Ljava/lang/Object;J)J

    return-void
.end method
