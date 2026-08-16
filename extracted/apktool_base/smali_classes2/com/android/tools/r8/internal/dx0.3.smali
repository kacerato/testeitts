.class public Lcom/android/tools/r8/internal/dx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nJ;

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/dx0;->b:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/dx0;->c:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/dx0;->d:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/dx0;->a:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/dx0;->b(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/dx0;->d:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/dx0;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/dx0;->b:Z

    return-void
.end method
