.class public final Lcom/android/tools/r8/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/B;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/E0;)Ljava/io/PrintStream;
    .locals 0

    .line 1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/graph/A0;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/a1;

    invoke-direct {p1}, Lcom/android/tools/r8/a1;-><init>()V

    return-object p1
.end method

.method public final a()Ljava/util/function/Consumer;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method
