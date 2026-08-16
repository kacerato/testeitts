.class public final Lcom/android/tools/r8/graph/d0;
.super Lcom/android/tools/r8/graph/F0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/c0;


# static fields
.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/I0;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/F0;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method


# virtual methods
.method public final getHolder()Lcom/android/tools/r8/graph/E0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    sget-boolean v1, Lcom/android/tools/r8/graph/d0;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/android/tools/r8/graph/I0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object v0

    return-object v0
.end method
