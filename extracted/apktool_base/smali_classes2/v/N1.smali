.class public final synthetic Lv/N1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/graph/F0;

    invoke-static {p1}, Lcom/android/tools/r8/ir/optimize/w;->a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    return-object p1
.end method
