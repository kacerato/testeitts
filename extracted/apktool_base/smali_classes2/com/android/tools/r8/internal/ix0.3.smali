.class public final Lcom/android/tools/r8/internal/ix0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/bx0;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/android/tools/r8/internal/mx0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/bx0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bx0;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-boolean v2, Lcom/android/tools/r8/internal/nx0;->d:Z

    .line 3
    new-instance v2, Lcom/android/tools/r8/internal/mx0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/mx0;-><init>()V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/ix0;->a:Lcom/android/tools/r8/internal/bx0;

    .line 6
    iput-object v1, p0, Lcom/android/tools/r8/internal/ix0;->b:Ljava/util/ArrayList;

    .line 7
    iput-object v2, p0, Lcom/android/tools/r8/internal/ix0;->c:Lcom/android/tools/r8/internal/mx0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/bx0;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/mx0;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/ix0;->a:Lcom/android/tools/r8/internal/bx0;

    .line 10
    iput-object p2, p0, Lcom/android/tools/r8/internal/ix0;->b:Ljava/util/ArrayList;

    .line 11
    iput-object p3, p0, Lcom/android/tools/r8/internal/ix0;->c:Lcom/android/tools/r8/internal/mx0;

    return-void
.end method
