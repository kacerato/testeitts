.class public final synthetic Lv/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/B1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/B1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/e;->b:Lcom/android/tools/r8/graph/B1;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lv/e;->b:Lcom/android/tools/r8/graph/B1;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ir/optimize/H;->b(Lcom/android/tools/r8/graph/B1;Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    return p1
.end method
