.class public final Lcom/android/tools/r8/internal/Ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nl0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nl0;

.field public final b:Lcom/android/tools/r8/internal/ny;

.field public final c:Lcom/android/tools/r8/internal/ny;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;Lcom/android/tools/r8/internal/ny;)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ax;->a:Lcom/android/tools/r8/internal/nl0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ax;->b:Lcom/android/tools/r8/internal/ny;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ax;->c:Lcom/android/tools/r8/internal/ny;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/zx;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/zx;-><init>(Lcom/android/tools/r8/internal/Ax;)V

    return-object v0
.end method
