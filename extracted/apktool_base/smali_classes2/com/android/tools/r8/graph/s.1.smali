.class public final Lcom/android/tools/r8/graph/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ir0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/internal/R00;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/s;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/s;->b:Lcom/android/tools/r8/internal/R00;

    iput-object p3, p0, Lcom/android/tools/r8/graph/s;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/s;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, v0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    iget-object v2, p0, Lcom/android/tools/r8/graph/s;->b:Lcom/android/tools/r8/internal/R00;

    iget-object v3, p0, Lcom/android/tools/r8/graph/s;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/l;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/s;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/l;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
