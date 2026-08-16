.class public final synthetic Lcom/android/tools/r8/internal/lk1;
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

    check-cast p1, Lcom/android/tools/r8/internal/FT;

    check-cast p2, Lcom/android/tools/r8/internal/FT;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/mS;->a(Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;)Z

    move-result p1

    return p1
.end method
