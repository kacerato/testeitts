.class public final Lcom/android/tools/r8/internal/Yl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lcom/android/tools/r8/internal/Wl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Yl;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Yl;->b:Lcom/android/tools/r8/internal/Wl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;
    .locals 2

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/Yl;->c:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Yl;->b:Lcom/android/tools/r8/internal/Wl;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/Yl;->b:Lcom/android/tools/r8/internal/Wl;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Zl;)Lcom/android/tools/r8/internal/Yl;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Yl;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
