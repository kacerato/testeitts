.class Lcom/android/tools/r8/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/internal/eC;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/p$a;->a:Lcom/android/tools/r8/internal/eC;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/p$a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/p$a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/p$a;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/p$a;->b:Z

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/p;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/p;

    iget-object v1, p0, Lcom/android/tools/r8/p$a;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/p;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object v0
.end method
