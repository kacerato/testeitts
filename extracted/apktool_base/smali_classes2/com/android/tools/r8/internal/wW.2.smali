.class public Lcom/android/tools/r8/internal/wW;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wW;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wW;->b:Ljava/util/HashSet;

    return-void
.end method

.method public static a([BLjava/util/function/Predicate;)Lcom/android/tools/r8/internal/wW;
    .locals 8

    .line 17
    invoke-static {p0}, Lcom/android/tools/r8/dex/s;->b([B)Lcom/android/tools/r8/dex/s;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->d()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    :goto_0
    if-ge v3, v0, :cond_6

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->d()S

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 20
    sget-object v6, Lcom/android/tools/r8/internal/uW;->d:Lcom/android/tools/r8/internal/uW;

    goto :goto_1

    :cond_0
    if-ne v4, v5, :cond_1

    .line 21
    sget-object v6, Lcom/android/tools/r8/internal/uW;->e:Lcom/android/tools/r8/internal/uW;

    goto :goto_1

    .line 22
    :cond_1
    sget-object v6, Lcom/android/tools/r8/internal/uW;->c:Lcom/android/tools/r8/internal/uW;

    .line 23
    :goto_1
    sget-object v7, Lcom/android/tools/r8/internal/uW;->c:Lcom/android/tools/r8/internal/uW;

    if-eq v6, v7, :cond_5

    .line 24
    invoke-interface {p1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 25
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v5, :cond_3

    const/4 v2, 0x2

    if-ne v4, v2, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/zq0;->d(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    goto :goto_2

    .line 27
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    const-string p1, "Unreachable since we already checked for UNKNOWN"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/zq0;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 29
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->c()I

    move-result v4

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    .line 31
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/dex/s;->c(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_5
    new-instance p0, Lcom/android/tools/r8/retrace/RetracePartitionException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not additional info from key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/wW;

    invoke-direct {p0, v1, v2}, Lcom/android/tools/r8/internal/wW;-><init>(Ljava/util/List;Ljava/util/HashSet;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wW;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 5

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/wW;->a:Ljava/util/List;

    .line 7
    const-string v3, "\n"

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/xl0;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/tools/r8/internal/wW;->b:Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 12
    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/xl0;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 15
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 16
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public b()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wW;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wW;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wW;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
