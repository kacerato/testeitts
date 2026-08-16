.class public final Lcom/android/tools/r8/internal/r60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/T50;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/function/Predicate;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Predicate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/r60;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/r60;->a:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/r60;->a:Ljava/util/function/Predicate;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/r60;->c:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/r60;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/r60;->b:I

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
