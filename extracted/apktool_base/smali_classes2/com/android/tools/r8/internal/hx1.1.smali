.class public final synthetic Lcom/android/tools/r8/internal/hx1;
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

    check-cast p1, Lcom/android/tools/r8/internal/Wo;

    invoke-static {p1}, Lcom/android/tools/r8/internal/vq;->b(Lcom/android/tools/r8/internal/Wo;)Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    return-object p1
.end method
