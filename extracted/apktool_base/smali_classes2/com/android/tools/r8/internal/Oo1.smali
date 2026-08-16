.class public final synthetic Lcom/android/tools/r8/internal/Oo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/SG;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Oo1;->a:Lcom/android/tools/r8/internal/SG;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Oo1;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oo1;->a:Lcom/android/tools/r8/internal/SG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oo1;->b:Lcom/android/tools/r8/graph/y;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/tools/r8/internal/kj;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/oj;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/graph/y;Ljava/lang/Integer;Lcom/android/tools/r8/internal/kj;)V

    return-void
.end method
