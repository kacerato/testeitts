.class public final Lcom/android/tools/r8/internal/sS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/tS;

.field public b:Lcom/android/tools/r8/internal/tS;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/tS;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sS;->a:Lcom/android/tools/r8/internal/tS;

    iput-object p1, p0, Lcom/android/tools/r8/internal/sS;->b:Lcom/android/tools/r8/internal/tS;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    iput-object v0, p1, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sS;->c:I

    return-void
.end method
