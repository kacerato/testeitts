.class public final Lcom/android/tools/r8/internal/Ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:I

.field public final c:Lcom/android/tools/r8/graph/L2;

.field public final d:Lcom/android/tools/r8/graph/M2;

.field public final e:Lcom/android/tools/r8/graph/C2;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/C2;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Ah;->g:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

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
    if-nez v0, :cond_7

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput p1, p0, Lcom/android/tools/r8/internal/Ah;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ah;->c:Lcom/android/tools/r8/graph/L2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ah;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/internal/Ah;->b:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/wh;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Ah;
    .locals 9

    .line 3
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/x1;

    const/4 v1, -0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v2

    .line 6
    invoke-virtual {v0, v2, p0}, Lcom/android/tools/r8/internal/x1;->b(ILjava/lang/Object;)I

    :cond_0
    move v4, v2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/wh;->a:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/wh;->b:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/wh;->c:Lcom/android/tools/r8/internal/Qz;

    .line 10
    invoke-static {v2, p1, p2}, Lcom/android/tools/r8/graph/C2;->a(Lcom/android/tools/r8/internal/Qz;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/C2;

    move-result-object v7

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/wh;->d:[Ljava/lang/Object;

    array-length v2, v2

    .line 12
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    iget-object v5, p0, Lcom/android/tools/r8/internal/wh;->d:[Ljava/lang/Object;

    aget-object v5, v5, v3

    .line 14
    invoke-static {v5, p1, p2, p3}, Lcom/android/tools/r8/graph/R2;->a(Ljava/lang/Object;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/R2;

    move-result-object v5

    .line 15
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/Ah;

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 18
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/Ah;-><init>(ILcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/C2;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/bz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bz0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ah;->c:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ah;->f:Ljava/util/ArrayList;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/az0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/az0;-><init>()V

    return-object v0
.end method
