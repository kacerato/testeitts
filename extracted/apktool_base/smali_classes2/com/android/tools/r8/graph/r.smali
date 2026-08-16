.class public final Lcom/android/tools/r8/graph/r;
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

    iput-object p1, p0, Lcom/android/tools/r8/graph/r;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/r;->b:Lcom/android/tools/r8/internal/R00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/r;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, v0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    iget-object v2, p0, Lcom/android/tools/r8/graph/r;->b:Lcom/android/tools/r8/internal/R00;

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/tools/r8/internal/l4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/l4;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/r;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l4;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
