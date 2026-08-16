.class public final synthetic Lcom/android/tools/r8/internal/yH0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/F5;

.field public final synthetic c:Lcom/android/tools/r8/internal/Iw0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Iw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yH0;->b:Lcom/android/tools/r8/graph/F5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yH0;->c:Lcom/android/tools/r8/internal/Iw0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yH0;->b:Lcom/android/tools/r8/graph/F5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yH0;->c:Lcom/android/tools/r8/internal/Iw0;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Hx;->b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Ix;

    move-result-object v0

    return-object v0
.end method
