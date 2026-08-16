.class public Lcom/android/tools/r8/origin/ArchiveEntryOrigin;
.super Lcom/android/tools/r8/origin/Origin;
.source "SourceFile"


# instance fields
.field final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/origin/Origin;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    iput-object p1, p0, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;->f:Ljava/lang/String;

    return-object v0
.end method

.method public part()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/origin/ArchiveEntryOrigin;->f:Ljava/lang/String;

    return-object v0
.end method
