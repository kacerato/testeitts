.class public Lcom/android/tools/r8/internal/B60$c$a;
.super Lcom/android/tools/r8/internal/B60$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/B60$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/B60$a<",
        "Lcom/android/tools/r8/internal/B60$c;",
        "Lcom/android/tools/r8/internal/B60$c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic h:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/B60$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/android/tools/r8/internal/B60;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/B60$a;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/android/tools/r8/internal/B60$c;
    .locals 7

    sget-boolean v0, Lcom/android/tools/r8/internal/B60$c$a;->h:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/B60$a;->f:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/B60$a;->a:I

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/B60$a;->g:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/B60$a;->b:Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/B60$c;

    iget v2, p0, Lcom/android/tools/r8/internal/B60$a;->a:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/B60$a;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/B60$a;->d:Z

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/B60$c;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZ)V

    return-object v0
.end method
