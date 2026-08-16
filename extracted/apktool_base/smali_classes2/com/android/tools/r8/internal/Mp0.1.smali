.class public final Lcom/android/tools/r8/internal/Mp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Lcom/android/tools/r8/internal/Pp0;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Ljava/util/IdentityHashMap;

.field public final i:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/Pp0;Ljava/util/function/Supplier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Mp0;->h:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Mp0;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Mp0;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Mp0;->e:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Mp0;->f:Ljava/util/IdentityHashMap;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Mp0;->g:Ljava/util/IdentityHashMap;

    iput-object p7, p0, Lcom/android/tools/r8/internal/Mp0;->b:Lcom/android/tools/r8/internal/Pp0;

    iput-object p8, p0, Lcom/android/tools/r8/internal/Mp0;->i:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mp0;->i:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method
