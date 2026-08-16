.class public final Lcom/android/tools/r8/graph/proto/e;
.super Lcom/android/tools/r8/graph/proto/d;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/K;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/K;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/graph/proto/d;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/proto/e;->b:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/tools/r8/internal/K;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/e;->a:Lcom/android/tools/r8/internal/K;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/e;->a:Lcom/android/tools/r8/internal/K;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/NE;->get(I)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    return p1
.end method
