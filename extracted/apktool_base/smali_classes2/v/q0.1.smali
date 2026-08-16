.class public final synthetic Lv/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {p1}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    return p1
.end method
