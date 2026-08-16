.class public final Lcom/android/tools/r8/internal/nP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/oP;

.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/oP;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nP;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nP;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/nP;->a:Lcom/android/tools/r8/internal/oP;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/cP;)Ljava/util/Set;
    .locals 0

    .line 7
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xP;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/xP;->b:Lcom/android/tools/r8/internal/zN;

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/qP;->b:Lcom/android/tools/r8/internal/cP;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zN;->a(Lcom/android/tools/r8/internal/cP;)Lcom/android/tools/r8/internal/cP;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/xP;->a:Lcom/android/tools/r8/internal/MM;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/nP;->c:Ljava/util/HashMap;

    new-instance v2, Lcom/android/tools/r8/internal/Sm1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Sm1;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
