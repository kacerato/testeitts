.class public final synthetic Lcom/android/tools/r8/internal/tj1;
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

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-static {p1}, Lcom/android/tools/r8/internal/lv;->a([Ljava/lang/StackTraceElement;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
