.class public final synthetic Lcom/android/tools/r8/internal/Yv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/vA;

.field public final synthetic c:Lcom/android/tools/r8/internal/xA;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/vA;Lcom/android/tools/r8/internal/xA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yv1;->b:Lcom/android/tools/r8/internal/vA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Yv1;->c:Lcom/android/tools/r8/internal/xA;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yv1;->b:Lcom/android/tools/r8/internal/vA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Yv1;->c:Lcom/android/tools/r8/internal/xA;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/vA;->a(Lcom/android/tools/r8/internal/xA;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
