.class public final synthetic Lcom/android/tools/r8/internal/Jk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/mb0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    return p1
.end method
