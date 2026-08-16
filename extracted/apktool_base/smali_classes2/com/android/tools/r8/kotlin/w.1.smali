.class public final Lcom/android/tools/r8/kotlin/w;
.super Lcom/android/tools/r8/kotlin/x;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/kotlin/x;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/w;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/yQ;Lcom/android/tools/r8/graph/y;)Z
    .locals 1

    .line 2
    new-instance p2, Lcom/android/tools/r8/internal/cQ$b;

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/w;->a:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/cQ$b;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p1, Lcom/android/tools/r8/internal/yQ;->b:Lcom/android/tools/r8/internal/cQ;

    const/4 p1, 0x0

    return p1
.end method
