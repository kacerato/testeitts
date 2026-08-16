.class public abstract Lcom/android/tools/r8/shaking/X1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/M1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    .line 2
    new-instance v1, Lcom/android/tools/r8/shaking/M1;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/shaking/M1;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v1
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/shaking/S0;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
.end method

.method public abstract a()Lcom/android/tools/r8/internal/Dz$a;
.end method

.method public b()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/shaking/T1;

    return v0
.end method
