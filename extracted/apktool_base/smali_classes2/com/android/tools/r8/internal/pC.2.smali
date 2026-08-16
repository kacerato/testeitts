.class public Lcom/android/tools/r8/internal/pC;
.super Lcom/android/tools/r8/internal/qC;
.source "SourceFile"


# instance fields
.field public final transient d:Lcom/android/tools/r8/internal/qC;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/qC;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/qC;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/pC;->d:Lcom/android/tools/r8/internal/qC;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/qC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pC;->d:Lcom/android/tools/r8/internal/qC;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
