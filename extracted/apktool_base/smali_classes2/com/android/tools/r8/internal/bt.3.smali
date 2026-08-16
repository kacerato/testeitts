.class public final Lcom/android/tools/r8/internal/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public b:Lcom/android/tools/r8/internal/W5;

.field public final synthetic c:Lcom/android/tools/r8/internal/dt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/internal/W5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/bt;->c:Lcom/android/tools/r8/internal/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/bt;->b:Lcom/android/tools/r8/internal/W5;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bt;->b:Lcom/android/tools/r8/internal/W5;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bt;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/android/tools/r8/internal/bt;->b:Lcom/android/tools/r8/internal/W5;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/bt;->c:Lcom/android/tools/r8/internal/dt;

    iget-object v2, p0, Lcom/android/tools/r8/internal/bt;->b:Lcom/android/tools/r8/internal/W5;

    sget-boolean v3, Lcom/android/tools/r8/internal/dt;->f:Z

    if-nez v3, :cond_3

    iget-boolean v3, v1, Lcom/android/tools/r8/internal/dt;->e:Z

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_0
    iget-object v1, v1, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/tools/r8/internal/bt;->b:Lcom/android/tools/r8/internal/W5;

    sget-boolean v2, Lcom/android/tools/r8/internal/bt;->d:Z

    if-nez v2, :cond_5

    if-eq v1, v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    return-object v0
.end method
