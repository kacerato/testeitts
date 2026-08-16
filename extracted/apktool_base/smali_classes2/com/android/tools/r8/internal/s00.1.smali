.class public final Lcom/android/tools/r8/internal/s00;
.super Lcom/android/tools/r8/internal/zm0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zm0;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/s00;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/s00;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/s00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/s00;->b:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ys1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ys1;-><init>(Lcom/android/tools/r8/internal/s00;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->c(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoConstructorMethodHandleFromLambda"

    return-object v0
.end method
