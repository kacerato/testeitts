.class public final synthetic Lcom/android/tools/r8/internal/Xj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/mB;

    invoke-static {p1}, Lcom/android/tools/r8/internal/mB;->b(Lcom/android/tools/r8/internal/mB;)J

    move-result-wide v0

    return-wide v0
.end method
