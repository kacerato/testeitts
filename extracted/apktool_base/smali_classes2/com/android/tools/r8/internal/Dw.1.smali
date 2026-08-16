.class public abstract Lcom/android/tools/r8/internal/Dw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/tZ;

.field public b:Lcom/android/tools/r8/internal/zE;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/android/tools/r8/internal/f80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/tZ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dw;->b:Lcom/android/tools/r8/internal/zE;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dw;->c:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dw;->d:Ljava/util/Set;

    new-instance v0, Lcom/android/tools/r8/internal/f80;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dw;->e:Lcom/android/tools/r8/internal/f80;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dw;->a:Lcom/android/tools/r8/internal/tZ;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dw;->b:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dw;->e:Lcom/android/tools/r8/internal/f80;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dw;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
