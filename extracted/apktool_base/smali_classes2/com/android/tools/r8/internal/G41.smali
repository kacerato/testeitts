.class public final synthetic Lcom/android/tools/r8/internal/G41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/G41;->b:Lcom/android/tools/r8/dex/b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/G41;->b:Lcom/android/tools/r8/dex/b;

    check-cast p1, Ljava/util/function/Supplier;

    check-cast p2, Ljava/util/function/Supplier;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/a80;->a(Lcom/android/tools/r8/dex/b;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p1

    return-object p1
.end method
