.class public final synthetic Lcom/android/tools/r8/shaking/s5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/d1;

.field public final synthetic b:Lcom/android/tools/r8/internal/ft0;

.field public final synthetic c:Lcom/android/tools/r8/internal/ft0;

.field public final synthetic d:Lcom/android/tools/r8/internal/ft0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/s5;->a:Lcom/android/tools/r8/graph/d1;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/s5;->b:Lcom/android/tools/r8/internal/ft0;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/s5;->c:Lcom/android/tools/r8/internal/ft0;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/s5;->d:Lcom/android/tools/r8/internal/ft0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s5;->a:Lcom/android/tools/r8/graph/d1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s5;->b:Lcom/android/tools/r8/internal/ft0;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/s5;->c:Lcom/android/tools/r8/internal/ft0;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/s5;->d:Lcom/android/tools/r8/internal/ft0;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/shaking/d0;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/shaking/s2;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/shaking/s2;)V

    return-void
.end method
