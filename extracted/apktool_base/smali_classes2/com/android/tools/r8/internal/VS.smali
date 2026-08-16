.class public final Lcom/android/tools/r8/internal/VS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/dH;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/SG;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/VS;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/dH;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/VS;->b:Lcom/android/tools/r8/internal/dH;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;ILcom/android/tools/r8/internal/N8;)Lcom/android/tools/r8/internal/N8;
    .locals 0

    .line 8
    invoke-virtual {p3, p0, p1}, Lcom/android/tools/r8/internal/N8;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/N8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/VS;)Lcom/android/tools/r8/internal/SG;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/internal/VS;->b:Lcom/android/tools/r8/internal/dH;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 3

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/SY0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/SY0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/US;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/US;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/Oq0;

    invoke-direct {v2, v1, v1}, Lcom/android/tools/r8/internal/Oq0;-><init>(Lcom/android/tools/r8/internal/US;Lcom/android/tools/r8/internal/US;)V

    .line 11
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/aI;Lcom/android/tools/r8/internal/RG;)Z
    .locals 1

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/N8;

    invoke-interface {p0, v0, p1}, Lcom/android/tools/r8/internal/aI;->a(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/VS;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/VS;->b:Lcom/android/tools/r8/internal/dH;

    new-instance v1, Lcom/android/tools/r8/internal/PY0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/PY0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    .line 6
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Mv;->a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/bI;)Lcom/android/tools/r8/internal/SG;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    new-instance p2, Lcom/android/tools/r8/internal/VS;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/VS;-><init>(Lcom/android/tools/r8/internal/SG;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/aI;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/VS;->b:Lcom/android/tools/r8/internal/dH;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/QY0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/QY0;-><init>(Lcom/android/tools/r8/internal/aI;)V

    .line 3
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/RY0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/RY0;-><init>()V

    return-object v0
.end method
