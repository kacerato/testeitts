.class public final Lcom/android/tools/r8/graph/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ir0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/internal/R00;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/x;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/x;->b:Lcom/android/tools/r8/internal/R00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/x;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/graph/x;->b:Lcom/android/tools/r8/internal/R00;

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/D4;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/shaking/D4;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/x;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->n:Lcom/android/tools/r8/shaking/D4;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
