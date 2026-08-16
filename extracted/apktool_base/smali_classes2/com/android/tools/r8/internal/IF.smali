.class public final Lcom/android/tools/r8/internal/IF;
.super Lcom/android/tools/r8/internal/b1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/IF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/b1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QF;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/QF;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/PF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/IF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/PF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/PF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/IF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/PF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IF;->b:Lcom/android/tools/r8/internal/QF;

    iget v0, v0, Lcom/android/tools/r8/internal/QF;->h:I

    return v0
.end method
