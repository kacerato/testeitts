.class public final Lcom/android/tools/r8/internal/Mc0;
.super Lcom/android/tools/r8/internal/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Uc0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Uc0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mc0;->b:Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mc0;->b:Lcom/android/tools/r8/internal/Uc0;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    iget-object v2, v0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/Uc0;->e:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/android/tools/r8/internal/Uc0;->f:I

    aget-boolean v3, v1, v3

    if-ne v3, p1, :cond_0

    return v4

    :cond_0
    iget v0, v0, Lcom/android/tools/r8/internal/Uc0;->f:I

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_2

    aget-object v0, v2, v3

    if-eqz v0, :cond_1

    aget-boolean v0, v1, v3

    if-ne v0, p1, :cond_1

    return v4

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mc0;->b:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Uc0;->clear()V

    return-void
.end method

.method public final iterator()Lcom/android/tools/r8/internal/a7;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Tc0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mc0;->b:Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Tc0;-><init>(Lcom/android/tools/r8/internal/Uc0;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Tc0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mc0;->b:Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Tc0;-><init>(Lcom/android/tools/r8/internal/Uc0;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mc0;->b:Lcom/android/tools/r8/internal/Uc0;

    iget v0, v0, Lcom/android/tools/r8/internal/Uc0;->h:I

    return v0
.end method
