.class public final synthetic Lcom/android/tools/r8/shaking/oa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/Q;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/Q;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/oa;->b:Lcom/android/tools/r8/shaking/Q;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/oa;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/oa;->b:Lcom/android/tools/r8/shaking/Q;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/oa;->c:Lcom/android/tools/r8/graph/H5;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Df;

    move-result-object p1

    return-object p1
.end method
