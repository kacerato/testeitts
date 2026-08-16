.class public abstract Lcom/android/tools/r8/graph/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/Z4$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/h3;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/graph/T5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/graph/H0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
