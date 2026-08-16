.class public Lcom/android/tools/r8/internal/mu0;
.super Lcom/android/tools/r8/internal/J2;
.source "SourceFile"


# instance fields
.field public d:I

.field public final e:Lcom/android/tools/r8/internal/tu0;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p3}, Lcom/android/tools/r8/internal/J2;-><init>(ILjava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/mu0;->d:I

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/android/tools/r8/internal/mu0;

    if-ne p1, p2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;I)V
    .locals 0

    const/4 p4, 0x0

    .line 6
    invoke-direct {p0, p4, p3}, Lcom/android/tools/r8/internal/J2;-><init>(ILjava/lang/String;)V

    .line 7
    iput p1, p0, Lcom/android/tools/r8/internal/mu0;->d:I

    .line 8
    iput-object p2, p0, Lcom/android/tools/r8/internal/mu0;->e:Lcom/android/tools/r8/internal/tu0;

    return-void
.end method
