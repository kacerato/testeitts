.class public final Lcom/android/tools/r8/ir/optimize/G0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:I

.field public final b:Ljava/util/AbstractCollection;

.field public final c:Ljava/util/AbstractCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/ir/optimize/G0;->a:I

    move-object v0, p2

    check-cast v0, Ljava/util/AbstractCollection;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/G0;->b:Ljava/util/AbstractCollection;

    move-object v0, p3

    check-cast v0, Ljava/util/AbstractCollection;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/G0;->c:Ljava/util/AbstractCollection;

    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/G0;->d:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/ir/optimize/E0;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
