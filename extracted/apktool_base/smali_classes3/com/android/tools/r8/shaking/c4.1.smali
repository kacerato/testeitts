.class public Lcom/android/tools/r8/shaking/c4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Z

.field public final b:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/tools/r8/shaking/c4;->a:Z

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/android/tools/r8/shaking/d4;

    invoke-direct {p1}, Lcom/android/tools/r8/shaking/d4;-><init>()V

    sget p2, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance p2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/c4;->b:Lcom/android/tools/r8/internal/hC;

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/shaking/c4;->c:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/shaking/c4;->b:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/c4;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/c4;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/g4;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/g4;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
