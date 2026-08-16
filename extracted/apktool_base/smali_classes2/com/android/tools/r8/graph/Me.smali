.class public final synthetic Lcom/android/tools/r8/graph/Me;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/l4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/l4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Me;->a:Lcom/android/tools/r8/graph/l4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Me;->a:Lcom/android/tools/r8/graph/l4;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/l4;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
