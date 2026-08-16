.class public abstract Lcom/android/tools/r8/internal/hR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/internal/kK;

.field public final c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/hR;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hR;->b:Lcom/android/tools/r8/internal/kK;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/hR;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Zx;Lcom/android/tools/r8/internal/rr0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;
.end method
