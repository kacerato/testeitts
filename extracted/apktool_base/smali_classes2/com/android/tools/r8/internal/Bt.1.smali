.class public final Lcom/android/tools/r8/internal/Bt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Pm0;

.field public final b:Lcom/android/tools/r8/internal/xw0;

.field public final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/internal/Bt;->a:Lcom/android/tools/r8/internal/Pm0;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/Bt;->b:Lcom/android/tools/r8/internal/xw0;

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/internal/Bt;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/Bt;->a:Lcom/android/tools/r8/internal/Pm0;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/Bt;->b:Lcom/android/tools/r8/internal/xw0;

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/internal/Bt;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/internal/Pm0;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/android/tools/r8/internal/Bt;->a:Lcom/android/tools/r8/internal/Pm0;

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lcom/android/tools/r8/internal/Bt;->b:Lcom/android/tools/r8/internal/xw0;

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/internal/Bt;->c:Ljava/util/Set;

    return-void
.end method
