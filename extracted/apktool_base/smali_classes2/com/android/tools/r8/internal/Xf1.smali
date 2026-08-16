.class public final synthetic Lcom/android/tools/r8/internal/Xf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/jp;

    invoke-static {p1}, Lcom/android/tools/r8/internal/jp;->b(Lcom/android/tools/r8/internal/jp;)I

    move-result p1

    return p1
.end method
