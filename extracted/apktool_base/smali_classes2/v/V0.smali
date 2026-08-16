.class public final synthetic Lv/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/V0;->b:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lv/V0;->b:Lcom/android/tools/r8/graph/l1;

    check-cast p1, Lcom/android/tools/r8/ir/optimize/o0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ir/optimize/m0;->b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/optimize/o0;)Z

    move-result p1

    return p1
.end method
