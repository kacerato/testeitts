.class public final synthetic Lcom/android/tools/r8/internal/pB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/CJ;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/android/tools/r8/internal/I;

.field public final synthetic d:Lcom/android/tools/r8/internal/D1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/CJ;Ljava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pB0;->a:Lcom/android/tools/r8/internal/CJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pB0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/tools/r8/internal/pB0;->c:Lcom/android/tools/r8/internal/I;

    iput-object p4, p0, Lcom/android/tools/r8/internal/pB0;->d:Lcom/android/tools/r8/internal/D1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/pB0;->a:Lcom/android/tools/r8/internal/CJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pB0;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/pB0;->c:Lcom/android/tools/r8/internal/I;

    iget-object v3, p0, Lcom/android/tools/r8/internal/pB0;->d:Lcom/android/tools/r8/internal/D1;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/CJ;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
