.class public final synthetic Lcom/android/tools/r8/internal/A21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Xv;

.field public final synthetic c:Lcom/android/tools/r8/graph/F5;

.field public final synthetic d:Lcom/android/tools/r8/internal/p10;

.field public final synthetic e:Lcom/android/tools/r8/internal/F1;

.field public final synthetic f:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/A21;->b:Lcom/android/tools/r8/internal/Xv;

    iput-object p2, p0, Lcom/android/tools/r8/internal/A21;->c:Lcom/android/tools/r8/graph/F5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/A21;->d:Lcom/android/tools/r8/internal/p10;

    iput-object p4, p0, Lcom/android/tools/r8/internal/A21;->e:Lcom/android/tools/r8/internal/F1;

    iput-object p5, p0, Lcom/android/tools/r8/internal/A21;->f:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/A21;->b:Lcom/android/tools/r8/internal/Xv;

    iget-object v1, p0, Lcom/android/tools/r8/internal/A21;->c:Lcom/android/tools/r8/graph/F5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/A21;->d:Lcom/android/tools/r8/internal/p10;

    iget-object v3, p0, Lcom/android/tools/r8/internal/A21;->e:Lcom/android/tools/r8/internal/F1;

    iget-object v4, p0, Lcom/android/tools/r8/internal/A21;->f:Lcom/android/tools/r8/internal/xw0;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/g1;

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/internal/Iw0;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Xv;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1
.end method
