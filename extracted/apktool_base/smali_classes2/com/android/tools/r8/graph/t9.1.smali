.class public final synthetic Lcom/android/tools/r8/graph/t9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Collection;

.field public final synthetic b:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/t9;->a:Ljava/util/Collection;

    iput-object p2, p0, Lcom/android/tools/r8/graph/t9;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/t9;->a:Ljava/util/Collection;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t9;->b:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/tools/r8/graph/H3$e;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/graph/M3$a;->a(Ljava/util/Collection;Ljava/util/HashMap;Ljava/lang/String;Lcom/android/tools/r8/graph/H3$e;)V

    return-void
.end method
