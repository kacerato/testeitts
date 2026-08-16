.class public final synthetic Lcom/android/tools/r8/internal/yT0;
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

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/android/tools/r8/retrace/RetraceTypeResult;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Qn0;->a(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceTypeResult;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
