.class public abstract Lcom/android/tools/r8/internal/Sf;
.super Lcom/android/tools/r8/internal/Of;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Vf;

.field public final b:Lcom/android/tools/r8/internal/Vf;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Vf;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Of;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Sf;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final y()Lcom/android/tools/r8/internal/Q5;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sf;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Vf;->y()Lcom/android/tools/r8/internal/Q5;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/Vf;->y()Lcom/android/tools/r8/internal/Q5;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sf;->b:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Vf;->y()Lcom/android/tools/r8/internal/Q5;

    move-result-object v0

    return-object v0
.end method
