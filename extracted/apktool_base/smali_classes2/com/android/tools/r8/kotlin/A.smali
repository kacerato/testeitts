.class public final Lcom/android/tools/r8/kotlin/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final b:Lcom/android/tools/r8/kotlin/A;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/kotlin/A;

    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/kotlin/A;-><init>(Lcom/android/tools/r8/internal/hC;)V

    sput-object v0, Lcom/android/tools/r8/kotlin/A;->b:Lcom/android/tools/r8/kotlin/A;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/A;->a:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/gQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/A;
    .locals 9

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/tools/r8/kotlin/A;->b:Lcom/android/tools/r8/kotlin/A;

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/gQ;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/android/tools/r8/kotlin/A;->b:Lcom/android/tools/r8/kotlin/A;

    return-object p0

    .line 5
    :cond_1
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/iQ;

    .line 8
    new-instance v5, Lcom/android/tools/r8/kotlin/E;

    .line 9
    iget v6, v4, Lcom/android/tools/r8/internal/iQ;->a:I

    .line 10
    iget v7, v4, Lcom/android/tools/r8/internal/iQ;->b:I

    .line 11
    iget-object v8, v4, Lcom/android/tools/r8/internal/iQ;->c:Ljava/util/ArrayList;

    .line 12
    invoke-static {v8, p1, p2}, Lcom/android/tools/r8/kotlin/D;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;

    move-result-object v8

    .line 13
    iget-object v4, v4, Lcom/android/tools/r8/internal/iQ;->d:Lcom/android/tools/r8/internal/jQ;

    .line 14
    invoke-static {v4, p1, p2}, Lcom/android/tools/r8/kotlin/D;->a(Lcom/android/tools/r8/internal/jQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/D;

    move-result-object v4

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/android/tools/r8/kotlin/E;-><init>(IILcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/kotlin/D;)V

    add-int/lit8 v4, v3, 0x1

    .line 15
    array-length v6, v0

    if-ge v6, v4, :cond_2

    .line 16
    array-length v6, v0

    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 17
    :cond_2
    aput-object v5, v0, v3

    move v3, v4

    goto :goto_0

    .line 18
    :cond_3
    new-instance p0, Lcom/android/tools/r8/kotlin/A;

    .line 19
    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lcom/android/tools/r8/kotlin/A;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/E;)Ljava/util/function/Consumer;
    .locals 1

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/w0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/w0;-><init>(Lcom/android/tools/r8/kotlin/E;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/A;->a:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/v0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/v0;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    sget-object v0, Lcom/android/tools/r8/kotlin/A;->b:Lcom/android/tools/r8/kotlin/A;

    if-ne p0, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/gQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gQ;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/A;->a:Lcom/android/tools/r8/internal/hC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gQ;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/kotlin/u0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/u0;-><init>()V

    invoke-static {p2, p1, v0, v1}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p1

    return p1
.end method
