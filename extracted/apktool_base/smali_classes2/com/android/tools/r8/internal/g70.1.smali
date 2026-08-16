.class public final Lcom/android/tools/r8/internal/g70;
.super Lcom/android/tools/r8/origin/Origin;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/origin/Origin;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/g70;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final part()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/g70;->f:Ljava/lang/String;

    return-object v0
.end method
