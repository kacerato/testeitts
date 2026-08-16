.class public abstract Lcom/android/tools/r8/synthesis/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/synthesis/S$b;

.field public final b:Lcom/android/tools/r8/synthesis/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/synthesis/a0;->c:Z

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
    iput-object p1, p0, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/synthesis/S$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/internal/R00;)Lcom/android/tools/r8/synthesis/a0;
.end method

.method public a(Lcom/android/tools/r8/internal/R00;)Lcom/android/tools/r8/synthesis/k;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 6
    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    .line 9
    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 10
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v3, :cond_0

    iget-object v3, v0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v3, Lcom/android/tools/r8/synthesis/l;

    iget-object v4, v0, Lcom/android/tools/r8/synthesis/l;->d:Lcom/android/tools/r8/origin/Origin;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/l;->e:Lcom/android/tools/r8/FeatureSplit;

    invoke-direct {v3, v2, v1, v4, v0}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    move-object v0, v3

    .line 12
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/synthesis/a0;->a(Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/internal/R00;)Lcom/android/tools/r8/synthesis/a0;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/tools/r8/synthesis/k;

    return-object p1
.end method

.method public abstract a(Ljava/util/function/Function;)Lcom/android/tools/r8/synthesis/t;
.end method

.method public abstract b()Lcom/android/tools/r8/graph/J2;
.end method

.method public abstract getHolder()Lcom/android/tools/r8/graph/M2;
.end method
