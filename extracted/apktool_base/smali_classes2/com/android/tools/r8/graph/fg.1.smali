.class public final synthetic Lcom/android/tools/r8/graph/fg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/fg;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/fg;->b:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/internal/kR;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/t5;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/kR;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
