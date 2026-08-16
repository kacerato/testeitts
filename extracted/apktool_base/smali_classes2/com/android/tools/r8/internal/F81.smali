.class public final synthetic Lcom/android/tools/r8/internal/F81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jy;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/dR;

.field public final synthetic c:Lcom/android/tools/r8/internal/Zx;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/dR;Lcom/android/tools/r8/internal/Zx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/F81;->b:Lcom/android/tools/r8/internal/dR;

    iput-object p2, p0, Lcom/android/tools/r8/internal/F81;->c:Lcom/android/tools/r8/internal/Zx;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/F81;->b:Lcom/android/tools/r8/internal/dR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/F81;->c:Lcom/android/tools/r8/internal/Zx;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/dR;->a(Lcom/android/tools/r8/internal/Zx;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
