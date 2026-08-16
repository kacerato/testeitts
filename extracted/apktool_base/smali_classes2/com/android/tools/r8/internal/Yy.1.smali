.class public abstract Lcom/android/tools/r8/internal/Yy;
.super Lcom/android/tools/r8/internal/O0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/O0;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/internal/O0;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ty;Ljava/io/Serializable;Lcom/android/tools/r8/internal/Yy;ILcom/android/tools/r8/internal/Sx0;Ljava/lang/Class;)Lcom/android/tools/r8/internal/Wy;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/Wy;

    new-instance v4, Lcom/android/tools/r8/internal/Vy;

    const/4 v0, 0x0

    invoke-direct {v4, p3, p4, v0}, Lcom/android/tools/r8/internal/Vy;-><init>(ILcom/android/tools/r8/internal/Sx0;Z)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Wy;-><init>(Lcom/android/tools/r8/internal/Ty;Ljava/lang/Object;Lcom/android/tools/r8/internal/Yy;Lcom/android/tools/r8/internal/Vy;Ljava/lang/Class;)V

    return-object v6
.end method
