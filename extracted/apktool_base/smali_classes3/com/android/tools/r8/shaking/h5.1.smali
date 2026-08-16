.class public final synthetic Lcom/android/tools/r8/shaking/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic c:Lcom/android/tools/r8/internal/eC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/eC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/h5;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/h5;->c:Lcom/android/tools/r8/internal/eC;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/h5;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/h5;->c:Lcom/android/tools/r8/internal/eC;

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/shaking/B4;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method
