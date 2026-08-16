.class public final synthetic Lcom/android/tools/r8/shaking/va;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/S0;

.field public final synthetic c:Lcom/android/tools/r8/graph/D5;

.field public final synthetic d:Lcom/android/tools/r8/graph/r0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/S0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/va;->b:Lcom/android/tools/r8/shaking/S0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/va;->c:Lcom/android/tools/r8/graph/D5;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/va;->d:Lcom/android/tools/r8/graph/r0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/va;->b:Lcom/android/tools/r8/shaking/S0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/va;->c:Lcom/android/tools/r8/graph/D5;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/va;->d:Lcom/android/tools/r8/graph/r0;

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;

    move-result-object p1

    return-object p1
.end method
