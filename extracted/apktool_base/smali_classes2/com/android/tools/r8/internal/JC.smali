.class public abstract Lcom/android/tools/r8/internal/JC;
.super Lcom/android/tools/r8/internal/QC;
.source "SourceFile"


# instance fields
.field public transient d:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/QC;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/hC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/JC;->d:Lcom/android/tools/r8/internal/hC;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JC;->j()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/JC;->d:Lcom/android/tools/r8/internal/hC;

    :cond_0
    return-object v0
.end method

.method public j()Lcom/android/tools/r8/internal/hC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Se0;

    sget-object v1, Lcom/android/tools/r8/internal/XB;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/XB;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Se0;-><init>(Lcom/android/tools/r8/internal/XB;[Ljava/lang/Object;)V

    return-object v0
.end method
