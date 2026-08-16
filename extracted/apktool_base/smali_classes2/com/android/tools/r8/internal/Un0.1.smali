.class public Lcom/android/tools/r8/internal/Un0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/gt0;


# direct methods
.method public constructor <init>(IILcom/android/tools/r8/internal/gt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/Un0;->a:I

    iput p2, p0, Lcom/android/tools/r8/internal/Un0;->b:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/Un0;->c:Lcom/android/tools/r8/internal/gt0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Sn0;->e:Lcom/android/tools/r8/internal/Sn0;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
