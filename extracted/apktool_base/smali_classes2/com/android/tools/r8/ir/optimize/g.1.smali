.class public final Lcom/android/tools/r8/ir/optimize/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xw0;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/g;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/g;->c:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/g;->a:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method
