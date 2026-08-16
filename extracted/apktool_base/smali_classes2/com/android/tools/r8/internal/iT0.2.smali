.class public final synthetic Lcom/android/tools/r8/internal/iT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/iT0;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iT0;->a:Ljava/util/ArrayList;

    check-cast p2, Lcom/android/tools/r8/graph/j0;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/QS;->a(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/android/tools/r8/graph/j0;)V

    return-void
.end method
