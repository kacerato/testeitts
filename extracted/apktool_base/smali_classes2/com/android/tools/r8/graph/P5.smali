.class public Lcom/android/tools/r8/graph/P5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/P5;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/l1;

.field public final c:Lcom/android/tools/r8/graph/H3$e;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H3$e;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/P5;->e:Z

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
    iput-object p1, p0, Lcom/android/tools/r8/graph/P5;->b:Lcom/android/tools/r8/graph/l1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/P5;->c:Lcom/android/tools/r8/graph/H3$e;

    iput-object p3, p0, Lcom/android/tools/r8/graph/P5;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/ta;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ta;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/ua;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ua;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/r0;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/P5;->d:Ljava/util/List;

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/P5;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/P5;->c:Lcom/android/tools/r8/graph/H3$e;

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/P5;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/sa;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/sa;-><init>()V

    return-object v0
.end method
