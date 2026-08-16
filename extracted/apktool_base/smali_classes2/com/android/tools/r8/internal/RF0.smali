.class public final synthetic Lcom/android/tools/r8/internal/RF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Xr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Gc;

.field public final synthetic b:Lcom/android/tools/r8/internal/ea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Gc;Lcom/android/tools/r8/internal/ea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/RF0;->a:Lcom/android/tools/r8/internal/Gc;

    iput-object p2, p0, Lcom/android/tools/r8/internal/RF0;->b:Lcom/android/tools/r8/internal/ea;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/RF0;->a:Lcom/android/tools/r8/internal/Gc;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RF0;->b:Lcom/android/tools/r8/internal/ea;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Gc;->b(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method
