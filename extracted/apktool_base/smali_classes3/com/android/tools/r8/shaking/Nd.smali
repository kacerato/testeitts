.class public final synthetic Lcom/android/tools/r8/shaking/Nd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/m2;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Nd;->b:Lcom/android/tools/r8/shaking/m2;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Nd;->c:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Nd;->b:Lcom/android/tools/r8/shaking/m2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Nd;->c:Lcom/android/tools/r8/internal/Hz;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
