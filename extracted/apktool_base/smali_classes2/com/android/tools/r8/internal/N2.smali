.class public final Lcom/android/tools/r8/internal/N2;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/I50;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/O2;

    sget-boolean v0, Lcom/android/tools/r8/internal/N2;->g:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/O2;->b:Lcom/android/tools/r8/internal/O2;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-string p1, "Ljava/lang/annotation/RetentionPolicy;"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Ljava/lang/annotation/RetentionPolicy;->valueOf(Ljava/lang/String;)Ljava/lang/annotation/RetentionPolicy;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
