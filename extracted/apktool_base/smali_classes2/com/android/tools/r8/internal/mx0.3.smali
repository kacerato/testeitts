.class public final Lcom/android/tools/r8/internal/mx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/n6;

.field public final b:Lcom/android/tools/r8/internal/l6;

.field public final c:Lcom/android/tools/r8/internal/l6;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/mx0;->a:Lcom/android/tools/r8/internal/n6;

    new-instance v0, Lcom/android/tools/r8/internal/l6;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/l6;-><init>(Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/mx0;->b:Lcom/android/tools/r8/internal/l6;

    new-instance v0, Lcom/android/tools/r8/internal/l6;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/l6;-><init>(Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/mx0;->c:Lcom/android/tools/r8/internal/l6;

    return-void
.end method
