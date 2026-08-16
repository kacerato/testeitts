.class public Lcom/android/tools/r8/internal/nJ$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public a:Z

.field public final b:Z

.field public c:Z

.field public d:Z

.field public final synthetic e:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/nJ$b;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$b;->a:Z

    const-string v0, "com.android.tools.r8.enableComposableArgumentRemoval"

    invoke-static {v0}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$b;->b:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$b;->c:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$b;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/android/tools/r8/internal/nJ$b;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$b;->c:Z

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$b;->a:Z

    return-void
.end method

.method public b(Z)Lcom/android/tools/r8/internal/nJ$b;
    .locals 0

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/tools/r8/internal/nJ$b;->f:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/nJ$b;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/nJ$b;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$b;->a:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ$b;->a()V

    return-object p0
.end method

.method public c(Z)Lcom/android/tools/r8/internal/nJ$b;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$b;->d:Z

    return-object p0
.end method
