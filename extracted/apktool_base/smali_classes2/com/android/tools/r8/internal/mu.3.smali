.class public final Lcom/android/tools/r8/internal/mu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public final b:Lcom/android/tools/r8/internal/Q;

.field public final c:Lcom/android/tools/r8/internal/nC;

.field public final d:Lcom/android/tools/r8/internal/QC;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mu;->a:Lcom/android/tools/r8/internal/nC;

    check-cast p2, Lcom/android/tools/r8/internal/Q;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mu;->b:Lcom/android/tools/r8/internal/Q;

    iput-object p3, p0, Lcom/android/tools/r8/internal/mu;->c:Lcom/android/tools/r8/internal/nC;

    iput-object p4, p0, Lcom/android/tools/r8/internal/mu;->d:Lcom/android/tools/r8/internal/QC;

    iput p5, p0, Lcom/android/tools/r8/internal/mu;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/G1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Im0;
    .locals 4

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/mu;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mu;->b:Lcom/android/tools/r8/internal/Q;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/SG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Vl1;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/Vl1;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/mu;->b:Lcom/android/tools/r8/internal/Q;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/RG;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 5
    invoke-interface {v1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    int-to-long v0, p2

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p2

    .line 6
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
