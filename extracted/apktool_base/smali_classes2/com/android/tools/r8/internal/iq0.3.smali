.class public final Lcom/android/tools/r8/internal/iq0;
.super Lcom/android/tools/r8/internal/y80;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/B50;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/y80;-><init>(Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/hq0;

    sget-boolean p2, Lcom/android/tools/r8/internal/iq0;->g:Z

    if-nez p2, :cond_1

    sget-object p2, Lcom/android/tools/r8/internal/hq0;->b:Lcom/android/tools/r8/internal/hq0;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    instance-of p1, p3, Ljava/lang/String;

    if-eqz p1, :cond_2

    check-cast p3, Ljava/lang/String;

    invoke-interface {p4, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
