.class public final synthetic Lcom/android/tools/r8/shaking/Zc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/List;)Lcom/android/tools/r8/shaking/R3;

    move-result-object p1

    return-object p1
.end method
