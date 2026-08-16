.class public final synthetic Lcom/android/tools/r8/internal/AJ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AJ0;->a:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AJ0;->a:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Lcom/android/tools/r8/internal/II;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/JI;->a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/II;)V

    return-void
.end method
