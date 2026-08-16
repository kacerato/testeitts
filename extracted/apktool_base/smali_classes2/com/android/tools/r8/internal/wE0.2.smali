.class public final synthetic Lcom/android/tools/r8/internal/wE0;
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

    check-cast p1, Lcom/android/tools/r8/internal/LY;

    invoke-static {p1}, Lcom/android/tools/r8/internal/FX;->a(Lcom/android/tools/r8/internal/LY;)Lcom/android/tools/r8/internal/AA;

    move-result-object p1

    return-object p1
.end method
