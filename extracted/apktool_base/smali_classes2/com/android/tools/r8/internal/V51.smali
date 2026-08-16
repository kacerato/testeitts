.class public final synthetic Lcom/android/tools/r8/internal/V51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/graph/proto/c;

.field public final synthetic d:Lcom/android/tools/r8/internal/cm0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/V51;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/V51;->c:Lcom/android/tools/r8/graph/proto/c;

    iput-object p3, p0, Lcom/android/tools/r8/internal/V51;->d:Lcom/android/tools/r8/internal/cm0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/V51;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V51;->c:Lcom/android/tools/r8/graph/proto/c;

    iget-object v2, p0, Lcom/android/tools/r8/internal/V51;->d:Lcom/android/tools/r8/internal/cm0;

    check-cast p1, Lcom/android/tools/r8/internal/Xl0;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/bm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object p1

    return-object p1
.end method
