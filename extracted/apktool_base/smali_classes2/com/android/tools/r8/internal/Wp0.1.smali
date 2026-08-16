.class public final Lcom/android/tools/r8/internal/Wp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:C


# direct methods
.method public constructor <init>(CI)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/Wp0;->a:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/android/tools/r8/internal/Wp0;->b:I

    .line 8
    iput-char p1, p0, Lcom/android/tools/r8/internal/Wp0;->c:C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Wp0;->a:Ljava/lang/String;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/Wp0;->b:I

    const/4 p1, 0x0

    .line 4
    iput-char p1, p0, Lcom/android/tools/r8/internal/Wp0;->c:C

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wp0;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
