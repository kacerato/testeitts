.class public final synthetic Lcom/android/tools/r8/internal/h81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/d80;

.field public final synthetic b:Ljava/util/LinkedHashMap;

.field public final synthetic c:Lcom/android/tools/r8/internal/gu;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/d80;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/gu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/h81;->a:Lcom/android/tools/r8/internal/d80;

    iput-object p2, p0, Lcom/android/tools/r8/internal/h81;->b:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lcom/android/tools/r8/internal/h81;->c:Lcom/android/tools/r8/internal/gu;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/h81;->a:Lcom/android/tools/r8/internal/d80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h81;->b:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/android/tools/r8/internal/h81;->c:Lcom/android/tools/r8/internal/gu;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/internal/Yj;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/d80;->a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/gu;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)V

    return-void
.end method
