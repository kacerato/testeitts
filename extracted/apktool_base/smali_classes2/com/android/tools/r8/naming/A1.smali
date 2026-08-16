.class public final synthetic Lcom/android/tools/r8/naming/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/A1;->b:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/A1;->b:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    check-cast p2, Lcom/android/tools/r8/naming/J;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/naming/I;->a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
