.class public final Lcom/android/tools/r8/graph/T5;
.super Lcom/android/tools/r8/graph/h3;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/H0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/graph/h3;-><init>(Lcom/android/tools/r8/graph/Z4$c;)V

    sget-boolean p2, Lcom/android/tools/r8/graph/T5;->c:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/T5;->b:Lcom/android/tools/r8/graph/H0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/T5;
    .locals 0

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/graph/H0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/T5;->b:Lcom/android/tools/r8/graph/H0;

    return-object v0
.end method
