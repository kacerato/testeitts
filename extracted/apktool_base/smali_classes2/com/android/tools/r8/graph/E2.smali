.class public final Lcom/android/tools/r8/graph/E2;
.super Lcom/android/tools/r8/graph/F2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/L2;

.field public final d:Lcom/android/tools/r8/graph/I2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/F2;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/graph/E2;->c:Lcom/android/tools/r8/graph/L2;

    iput-object p1, p0, Lcom/android/tools/r8/graph/E2;->d:Lcom/android/tools/r8/graph/I2;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E2;->c:Lcom/android/tools/r8/graph/L2;

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/graph/I2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E2;->d:Lcom/android/tools/r8/graph/I2;

    return-object v0
.end method
