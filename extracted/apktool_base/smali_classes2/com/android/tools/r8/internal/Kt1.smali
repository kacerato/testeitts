.class public final synthetic Lcom/android/tools/r8/internal/Kt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Xr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/tX;

.field public final synthetic b:Lcom/android/tools/r8/internal/O60;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic d:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/tX;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kt1;->a:Lcom/android/tools/r8/internal/tX;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Kt1;->b:Lcom/android/tools/r8/internal/O60;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Kt1;->c:Lcom/android/tools/r8/internal/Hz;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Kt1;->d:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kt1;->a:Lcom/android/tools/r8/internal/tX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kt1;->b:Lcom/android/tools/r8/internal/O60;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kt1;->c:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Kt1;->d:Lcom/android/tools/r8/internal/nJ;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/tX;->a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
