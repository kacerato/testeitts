.class public final Lcom/android/tools/r8/naming/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/L;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/naming/a0;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/a0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/a0;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/a0;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/naming/a0;->b:Lcom/android/tools/r8/naming/a0;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/tools/r8/naming/a0;->f:I

    :goto_0
    iput v0, p0, Lcom/android/tools/r8/naming/a0;->f:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    iget p1, p1, Lcom/android/tools/r8/naming/a0;->e:I

    :goto_1
    iput p1, p0, Lcom/android/tools/r8/naming/a0;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/L2;)Ljava/util/Set;
    .locals 0

    .line 6
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/tools/r8/naming/a0;->f:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/naming/a0;->c:Ljava/util/HashMap;

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/naming/a0;->d:Ljava/util/HashMap;

    new-instance v0, Lcom/android/tools/r8/naming/I2;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/I2;-><init>()V

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/naming/a0;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/naming/a0;->f:I

    return v0
.end method

.method public final c()I
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/naming/a0;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/naming/a0;->b:Lcom/android/tools/r8/naming/a0;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/tools/r8/naming/a0;->e:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, v0, Lcom/android/tools/r8/naming/a0;->b:Lcom/android/tools/r8/naming/a0;

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/naming/a0;->g:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/tools/r8/naming/a0;->e:I

    if-gt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/naming/a0;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/naming/a0;->e:I

    return v0
.end method
