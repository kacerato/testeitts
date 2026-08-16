.class public final synthetic Lcom/android/tools/r8/graph/zg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/u1;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/graph/y;

.field public final synthetic e:Lcom/android/tools/r8/internal/p10;

.field public final synthetic f:Lcom/android/tools/r8/internal/pu0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/pu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/zg;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/zg;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/graph/zg;->d:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/graph/zg;->e:Lcom/android/tools/r8/internal/p10;

    iput-object p5, p0, Lcom/android/tools/r8/graph/zg;->f:Lcom/android/tools/r8/internal/pu0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/zg;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p0, Lcom/android/tools/r8/graph/zg;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/zg;->d:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/graph/zg;->e:Lcom/android/tools/r8/internal/p10;

    iget-object v4, p0, Lcom/android/tools/r8/graph/zg;->f:Lcom/android/tools/r8/internal/pu0;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    return-object p1
.end method
