.class public final synthetic Lv/p;
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

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    invoke-static {p1}, Lcom/android/tools/r8/ir/optimize/M;->a(Lcom/android/tools/r8/internal/N20;)Z

    move-result p1

    return p1
.end method
