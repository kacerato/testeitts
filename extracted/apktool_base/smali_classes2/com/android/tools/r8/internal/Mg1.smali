.class public final synthetic Lcom/android/tools/r8/internal/Mg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/ka0;

.field public final synthetic b:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ka0;Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mg1;->a:Lcom/android/tools/r8/internal/ka0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Mg1;->b:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mg1;->a:Lcom/android/tools/r8/internal/ka0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mg1;->b:Lcom/android/tools/r8/shaking/N;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Lcom/android/tools/r8/internal/f80;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/ka0;->a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/f80;)V

    return-void
.end method
