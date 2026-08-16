.class public final synthetic Lcom/android/tools/r8/shaking/Ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/S0;

.field public final synthetic c:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/S0;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Ea;->b:Lcom/android/tools/r8/shaking/S0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Ea;->c:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Ea;->b:Lcom/android/tools/r8/shaking/S0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Ea;->c:Lcom/android/tools/r8/graph/l1;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    move-result-object p1

    return-object p1
.end method
