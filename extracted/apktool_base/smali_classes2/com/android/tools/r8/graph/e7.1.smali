.class public final synthetic Lcom/android/tools/r8/graph/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/e7;->b:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/e7;->b:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
