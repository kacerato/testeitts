.class public final synthetic Lcom/android/tools/r8/internal/cT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QR;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/QR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cT0;->b:Lcom/android/tools/r8/internal/QR;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cT0;->b:Lcom/android/tools/r8/internal/QR;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/QR;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    return-object p1
.end method
