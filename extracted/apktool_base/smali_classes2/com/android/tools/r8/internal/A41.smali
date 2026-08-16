.class public final synthetic Lcom/android/tools/r8/internal/A41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Zy;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Lcom/android/tools/r8/shaking/L0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Zy;Ljava/util/Set;Lcom/android/tools/r8/shaking/L0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/A41;->a:Lcom/android/tools/r8/internal/Zy;

    iput-object p2, p0, Lcom/android/tools/r8/internal/A41;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/A41;->c:Lcom/android/tools/r8/shaking/L0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/A41;->a:Lcom/android/tools/r8/internal/Zy;

    iget-object v1, p0, Lcom/android/tools/r8/internal/A41;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/A41;->c:Lcom/android/tools/r8/shaking/L0;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/Zy;->a(Ljava/util/Set;Lcom/android/tools/r8/shaking/L0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
