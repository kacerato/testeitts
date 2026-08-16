.class public final Lcom/android/tools/r8/internal/DJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/DJ;

.field public static final c:Lcom/android/tools/r8/internal/DJ;


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/DJ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/DJ;-><init>(Z)V

    sput-object v0, Lcom/android/tools/r8/internal/DJ;->b:Lcom/android/tools/r8/internal/DJ;

    new-instance v0, Lcom/android/tools/r8/internal/DJ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/DJ;-><init>(Z)V

    sput-object v0, Lcom/android/tools/r8/internal/DJ;->c:Lcom/android/tools/r8/internal/DJ;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/DJ;->a:Z

    return-void
.end method
