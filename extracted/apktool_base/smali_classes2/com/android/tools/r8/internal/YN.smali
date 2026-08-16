.class public final Lcom/android/tools/r8/internal/YN;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/H50;

.field public final d:Lcom/android/tools/r8/internal/pO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/pO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/YN;->c:Lcom/android/tools/r8/internal/H50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/YN;->d:Lcom/android/tools/r8/internal/pO;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/YN;->e:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "Landroidx/annotation/keep/KeepBinding;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/KeepBinding;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/XN;

    iget-object v0, p0, Lcom/android/tools/r8/internal/YN;->c:Lcom/android/tools/r8/internal/H50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/B50;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/YN;->d:Lcom/android/tools/r8/internal/pO;

    invoke-direct {p1, v1, p2}, Lcom/android/tools/r8/internal/XN;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/pO;)V

    return-object p1
.end method
