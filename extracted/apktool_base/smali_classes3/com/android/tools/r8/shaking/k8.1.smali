.class public final synthetic Lcom/android/tools/r8/shaking/k8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Lcom/android/tools/r8/internal/ns0;

.field public final synthetic d:Lcom/android/tools/r8/shaking/b1;

.field public final synthetic e:Lcom/android/tools/r8/internal/Yx0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/k8;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/k8;->c:Lcom/android/tools/r8/internal/ns0;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/k8;->d:Lcom/android/tools/r8/shaking/b1;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/k8;->e:Lcom/android/tools/r8/internal/Yx0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/k8;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/k8;->c:Lcom/android/tools/r8/internal/ns0;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/k8;->d:Lcom/android/tools/r8/shaking/b1;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/k8;->e:Lcom/android/tools/r8/internal/Yx0;

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
