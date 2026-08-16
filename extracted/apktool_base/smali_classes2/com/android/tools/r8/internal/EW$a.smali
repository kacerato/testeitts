.class public Lcom/android/tools/r8/internal/EW$a;
.super Lcom/android/tools/r8/internal/EW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/EW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/android/tools/r8/internal/FW;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/FW;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/EW;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/EW$a;->b:Lcom/android/tools/r8/internal/FW;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/EW$a;->b:Lcom/android/tools/r8/internal/FW;

    sget-object v1, Lcom/android/tools/r8/internal/FW;->b:Lcom/android/tools/r8/internal/FW;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/EW$a;->b:Lcom/android/tools/r8/internal/FW;

    sget-object v1, Lcom/android/tools/r8/internal/FW;->c:Lcom/android/tools/r8/internal/FW;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/EW$a;->b:Lcom/android/tools/r8/internal/FW;

    sget-object v1, Lcom/android/tools/r8/internal/FW;->d:Lcom/android/tools/r8/internal/FW;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/EW$a;->c:Z

    return v0
.end method
