.class public final synthetic Lu/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/dex/C;

.field public final synthetic b:Ljava/util/Queue;

.field public final synthetic c:Lcom/android/tools/r8/graph/B;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/C;Ljava/util/Queue;Lcom/android/tools/r8/graph/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/h0;->a:Lcom/android/tools/r8/dex/C;

    iput-object p2, p0, Lu/h0;->b:Ljava/util/Queue;

    iput-object p3, p0, Lu/h0;->c:Lcom/android/tools/r8/graph/B;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lu/h0;->a:Lcom/android/tools/r8/dex/C;

    iget-object v1, p0, Lu/h0;->b:Ljava/util/Queue;

    iget-object v2, p0, Lu/h0;->c:Lcom/android/tools/r8/graph/B;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/dex/a;->a(Lcom/android/tools/r8/dex/C;Ljava/util/Queue;Lcom/android/tools/r8/graph/B;)V

    return-void
.end method
