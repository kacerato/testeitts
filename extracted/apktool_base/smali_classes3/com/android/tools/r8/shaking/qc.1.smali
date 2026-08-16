.class public final synthetic Lcom/android/tools/r8/shaking/qc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/h;

.field public final synthetic c:Lcom/android/tools/r8/graph/D5;

.field public final synthetic d:Lcom/android/tools/r8/shaking/t1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/h;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/t1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/qc;->b:Lcom/android/tools/r8/shaking/h;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/qc;->c:Lcom/android/tools/r8/graph/D5;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/qc;->d:Lcom/android/tools/r8/shaking/t1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/qc;->b:Lcom/android/tools/r8/shaking/h;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/qc;->c:Lcom/android/tools/r8/graph/D5;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/qc;->d:Lcom/android/tools/r8/shaking/t1;

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    check-cast p2, Lcom/android/tools/r8/graph/p0;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/shaking/h;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/t1;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    return-object p1
.end method
