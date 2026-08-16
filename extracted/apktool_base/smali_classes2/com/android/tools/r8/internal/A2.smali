.class public final Lcom/android/tools/r8/internal/A2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/J2;

.field public final b:Lcom/android/tools/r8/internal/C2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/C2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/A2;->a:Lcom/android/tools/r8/graph/J2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/A2;->b:Lcom/android/tools/r8/internal/C2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/A2;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/A2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/A2;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/C2;)V

    return-object v0
.end method
