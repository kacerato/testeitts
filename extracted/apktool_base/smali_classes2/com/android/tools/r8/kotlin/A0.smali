.class public final synthetic Lcom/android/tools/r8/kotlin/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gt0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/kotlin/o0;

    check-cast p2, Ljava/util/function/Consumer;

    check-cast p3, Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/kotlin/o0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
