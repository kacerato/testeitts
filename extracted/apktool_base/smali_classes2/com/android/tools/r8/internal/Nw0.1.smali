.class public final Lcom/android/tools/r8/internal/Nw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public a:Ljava/util/List;

.field public final b:[Lcom/android/tools/r8/internal/T3;

.field public final c:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Nw0;->c:Lcom/android/tools/r8/internal/xw0;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/Nw0;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;[Lcom/android/tools/r8/internal/T3;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/Nw0;->c:Lcom/android/tools/r8/internal/xw0;

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/internal/Nw0;->b:[Lcom/android/tools/r8/internal/T3;

    return-void
.end method


# virtual methods
.method public final a()[Lcom/android/tools/r8/internal/T3;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/Nw0;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Nw0;->b:[Lcom/android/tools/r8/internal/T3;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nw0;->b:[Lcom/android/tools/r8/internal/T3;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Nw0;->a:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Nw0;->b:[Lcom/android/tools/r8/internal/T3;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/tools/r8/internal/xw0;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Nw0;->a:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nw0;->a:Ljava/util/List;

    return-object v0
.end method
