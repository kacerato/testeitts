.class public abstract Lcom/android/tools/r8/internal/TX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/TX;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/TX;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x90000

    const/high16 v1, 0x10a0000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported api "

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lcom/android/tools/r8/internal/Dh;->a(Ljava/lang/Object;)V

    :cond_2
    iput-object p2, p0, Lcom/android/tools/r8/internal/TX;->a:Lcom/android/tools/r8/internal/TX;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public varargs abstract a(ILjava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public varargs abstract a(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public varargs abstract b(ILjava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method
