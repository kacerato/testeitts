.class public final Lcom/android/tools/r8/internal/z60;
.super Lcom/android/tools/r8/internal/B60$a;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public h:Lcom/android/tools/r8/graph/A2;


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
.method public final a()Lcom/android/tools/r8/internal/B60;
    .locals 7

    sget-boolean v0, Lcom/android/tools/r8/internal/z60;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/A60;

    iget v2, p0, Lcom/android/tools/r8/internal/B60$a;->a:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/B60$a;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/B60$a;->d:Z

    iget-object v6, p0, Lcom/android/tools/r8/internal/z60;->h:Lcom/android/tools/r8/graph/A2;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/A60;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZLcom/android/tools/r8/graph/A2;)V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/B60$a;
    .locals 0

    return-object p0
.end method
