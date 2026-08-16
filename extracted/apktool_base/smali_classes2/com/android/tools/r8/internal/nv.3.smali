.class public final Lcom/android/tools/r8/internal/nv;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:Lcom/android/tools/r8/origin/Origin;

.field public final c:Lcom/android/tools/r8/position/Position;


# direct methods
.method public constructor <init>(Ljava/lang/RuntimeException;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/nv;->b:Lcom/android/tools/r8/origin/Origin;

    iput-object p3, p0, Lcom/android/tools/r8/internal/nv;->c:Lcom/android/tools/r8/position/Position;

    return-void
.end method
