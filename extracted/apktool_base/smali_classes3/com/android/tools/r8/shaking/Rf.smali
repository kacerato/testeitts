.class public final synthetic Lcom/android/tools/r8/shaking/Rf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/R00;

.field public final synthetic b:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Rf;->a:Lcom/android/tools/r8/internal/R00;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Rf;->b:Lcom/android/tools/r8/internal/nJ;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/Rf;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Rf;->a:Lcom/android/tools/r8/internal/R00;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Rf;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/Rf;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    check-cast p2, Lcom/android/tools/r8/shaking/I1;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/shaking/I1;)V

    return-void
.end method
