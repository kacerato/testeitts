.class public final Lcom/android/tools/r8/internal/jX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/F1;

.field public b:Lcom/android/tools/r8/internal/xt;

.field public c:Z

.field public d:Z

.field public e:Ljava/util/BitSet;

.field public f:Ljava/util/BitSet;

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jX;->a:Lcom/android/tools/r8/internal/F1;

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/jX;->b:Lcom/android/tools/r8/internal/xt;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/jX;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/jX;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/internal/jX;->e:Ljava/util/BitSet;

    iput-object v1, p0, Lcom/android/tools/r8/internal/jX;->f:Ljava/util/BitSet;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/jX;->g:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/jX;->h:Z

    return-void
.end method


# virtual methods
.method public final a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/internal/jX;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method
