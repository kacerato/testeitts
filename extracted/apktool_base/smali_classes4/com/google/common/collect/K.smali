.class public abstract Lcom/google/common/collect/K;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/K$b;
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/K;

.field public static final b:Lcom/google/common/collect/K;

.field public static final c:Lcom/google/common/collect/K;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/K$a;

    invoke-direct {v0}, Lcom/google/common/collect/K$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/K;->a:Lcom/google/common/collect/K;

    new-instance v0, Lcom/google/common/collect/K$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/K$b;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/K;->b:Lcom/google/common/collect/K;

    new-instance v0, Lcom/google/common/collect/K$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/K$b;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/K;->c:Lcom/google/common/collect/K;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/K$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/K;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/common/collect/K;
    .locals 1

    sget-object v0, Lcom/google/common/collect/K;->b:Lcom/google/common/collect/K;

    return-object v0
.end method

.method public static synthetic b()Lcom/google/common/collect/K;
    .locals 1

    sget-object v0, Lcom/google/common/collect/K;->c:Lcom/google/common/collect/K;

    return-object v0
.end method

.method public static synthetic c()Lcom/google/common/collect/K;
    .locals 1

    sget-object v0, Lcom/google/common/collect/K;->a:Lcom/google/common/collect/K;

    return-object v0
.end method

.method public static n()Lcom/google/common/collect/K;
    .locals 1

    sget-object v0, Lcom/google/common/collect/K;->a:Lcom/google/common/collect/K;

    return-object v0
.end method


# virtual methods
.method public abstract d(DD)Lcom/google/common/collect/K;
.end method

.method public abstract e(FF)Lcom/google/common/collect/K;
.end method

.method public abstract f(II)Lcom/google/common/collect/K;
.end method

.method public abstract g(JJ)Lcom/google/common/collect/K;
.end method

.method public final h(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/common/collect/K;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/K;->k(ZZ)Lcom/google/common/collect/K;

    move-result-object p1

    return-object p1
.end method

.method public abstract i(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/K;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)",
            "Lcom/google/common/collect/K;"
        }
    .end annotation
.end method

.method public abstract j(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/K;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/K;"
        }
    .end annotation
.end method

.method public abstract k(ZZ)Lcom/google/common/collect/K;
.end method

.method public abstract l(ZZ)Lcom/google/common/collect/K;
.end method

.method public abstract m()I
.end method
