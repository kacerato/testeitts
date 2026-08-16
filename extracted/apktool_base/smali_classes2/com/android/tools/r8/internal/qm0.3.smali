.class public final Lcom/android/tools/r8/internal/qm0;
.super Lcom/android/tools/r8/internal/E8;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/h80;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/h80;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/qm0;->a:Lcom/android/tools/r8/internal/h80;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/E8;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/qm0;->a:Lcom/android/tools/r8/internal/h80;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 8
    sget-object v1, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 9
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 10
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/qm0;->a:Lcom/android/tools/r8/internal/h80;

    .line 2
    iget-object p2, p2, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 5
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method
