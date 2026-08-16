.class public final synthetic Lcom/android/tools/r8/internal/EJ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/JR;

.field public final synthetic b:Lcom/android/tools/r8/graph/x0;

.field public final synthetic c:Lcom/android/tools/r8/graph/L2;

.field public final synthetic d:Lcom/android/tools/r8/internal/IA$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/JR;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/EJ0;->a:Lcom/android/tools/r8/internal/JR;

    iput-object p2, p0, Lcom/android/tools/r8/internal/EJ0;->b:Lcom/android/tools/r8/graph/x0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/EJ0;->c:Lcom/android/tools/r8/graph/L2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/EJ0;->d:Lcom/android/tools/r8/internal/IA$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/EJ0;->a:Lcom/android/tools/r8/internal/JR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/EJ0;->b:Lcom/android/tools/r8/graph/x0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/EJ0;->c:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/EJ0;->d:Lcom/android/tools/r8/internal/IA$a;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
