.class public final Lcom/android/tools/r8/internal/Bd0;
.super Lcom/android/tools/r8/internal/y1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Jd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Jd0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bd0;->b:Lcom/android/tools/r8/internal/Jd0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bd0;->b:Lcom/android/tools/r8/internal/Jd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jd0;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bd0;->b:Lcom/android/tools/r8/internal/Jd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Jd0;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Id0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bd0;->b:Lcom/android/tools/r8/internal/Jd0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Id0;-><init>(Lcom/android/tools/r8/internal/Jd0;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Id0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bd0;->b:Lcom/android/tools/r8/internal/Jd0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Id0;-><init>(Lcom/android/tools/r8/internal/Jd0;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bd0;->b:Lcom/android/tools/r8/internal/Jd0;

    iget v0, v0, Lcom/android/tools/r8/internal/Jd0;->h:I

    return v0
.end method
