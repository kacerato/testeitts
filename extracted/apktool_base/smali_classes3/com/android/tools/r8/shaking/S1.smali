.class public final Lcom/android/tools/r8/shaking/S1;
.super Lcom/android/tools/r8/shaking/X1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/r0;

.field public final b:Lcom/android/tools/r8/graph/D5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/X1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/S1;->a:Lcom/android/tools/r8/graph/r0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/S1;->b:Lcom/android/tools/r8/graph/D5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/S0;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S1;->a:Lcom/android/tools/r8/graph/r0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/S1;->b:Lcom/android/tools/r8/graph/D5;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/Dz$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Dz$a;->o:Lcom/android/tools/r8/internal/Dz$a;

    return-object v0
.end method
