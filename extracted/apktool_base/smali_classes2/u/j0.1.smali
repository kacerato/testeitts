.class public final synthetic Lu/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/a;

.field public final synthetic c:Ljava/util/Queue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/a;Ljava/util/Queue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/j0;->b:Lcom/android/tools/r8/dex/a;

    iput-object p2, p0, Lu/j0;->c:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lu/j0;->b:Lcom/android/tools/r8/dex/a;

    iget-object v1, p0, Lu/j0;->c:Ljava/util/Queue;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/dex/a;->a(Ljava/util/Queue;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
