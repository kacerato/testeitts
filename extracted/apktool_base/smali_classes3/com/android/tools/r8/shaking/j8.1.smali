.class public final synthetic Lcom/android/tools/r8/shaking/j8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Lcom/android/tools/r8/graph/r0;

.field public final synthetic d:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/r0;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/j8;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/j8;->c:Lcom/android/tools/r8/graph/r0;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/j8;->d:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/j8;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/j8;->c:Lcom/android/tools/r8/graph/r0;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/j8;->d:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/D5;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/r0;Ljava/util/function/Function;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method
