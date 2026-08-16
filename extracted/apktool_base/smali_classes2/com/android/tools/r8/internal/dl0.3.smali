.class public final Lcom/android/tools/r8/internal/dl0;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/ob0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/dl0;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/dl0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qb0;->a()Lcom/android/tools/r8/internal/ob0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/dl0;->c:Lcom/android/tools/r8/internal/ob0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/dl0;->c:Lcom/android/tools/r8/internal/ob0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/dl0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/ob0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/internal/FW;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SamePartialSubCompilation"

    return-object v0
.end method
