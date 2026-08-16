.class public interface abstract Lcom/android/tools/r8/synthesis/E;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/synthesis/A;)Lcom/android/tools/r8/synthesis/A;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/C;)Lcom/android/tools/r8/synthesis/A;
    .locals 0

    .line 2
    return-object p0
.end method

.method public static b()Lcom/android/tools/r8/synthesis/E;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/synthesis/e0;

    invoke-direct {v0}, Lcom/android/tools/r8/synthesis/e0;-><init>()V

    return-object v0
.end method

.method public static synthetic c()Lcom/android/tools/r8/synthesis/A;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/synthesis/B;

    invoke-direct {v0}, Lcom/android/tools/r8/synthesis/B;-><init>()V

    return-object v0
.end method

.method public static d()Lcom/android/tools/r8/synthesis/E;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/synthesis/D;

    invoke-direct {v0}, Lcom/android/tools/r8/synthesis/D;-><init>()V

    new-instance v1, Lcom/android/tools/r8/synthesis/f0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/synthesis/f0;-><init>(Lcom/android/tools/r8/synthesis/C;)V

    return-object v1
.end method

.method public static e()Lcom/android/tools/r8/synthesis/E;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/synthesis/C;

    invoke-direct {v0}, Lcom/android/tools/r8/synthesis/C;-><init>()V

    new-instance v1, Lcom/android/tools/r8/synthesis/d0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/synthesis/d0;-><init>(Lcom/android/tools/r8/synthesis/A;)V

    return-object v1
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/synthesis/A;
.end method
