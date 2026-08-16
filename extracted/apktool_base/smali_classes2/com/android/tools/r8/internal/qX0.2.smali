.class public final synthetic Lcom/android/tools/r8/internal/qX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Deque;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic c:Lcom/android/tools/r8/internal/R00;

.field public final synthetic d:Lcom/android/tools/r8/graph/u1;

.field public final synthetic e:Lcom/android/tools/r8/internal/SV;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Deque;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/SV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qX0;->a:Ljava/util/Deque;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qX0;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/internal/qX0;->c:Lcom/android/tools/r8/internal/R00;

    iput-object p4, p0, Lcom/android/tools/r8/internal/qX0;->d:Lcom/android/tools/r8/graph/u1;

    iput-object p5, p0, Lcom/android/tools/r8/internal/qX0;->e:Lcom/android/tools/r8/internal/SV;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/qX0;->a:Ljava/util/Deque;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qX0;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/qX0;->c:Lcom/android/tools/r8/internal/R00;

    iget-object v3, p0, Lcom/android/tools/r8/internal/qX0;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v4, p0, Lcom/android/tools/r8/internal/qX0;->e:Lcom/android/tools/r8/internal/SV;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/TV;->a(Ljava/util/Deque;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/SV;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
