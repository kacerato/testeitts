.class public final Lcom/android/tools/r8/origin/d;
.super Lcom/android/tools/r8/origin/Origin;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/origin/Origin;-><init>(Lcom/android/tools/r8/origin/g;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/tools/r8/origin/Origin;

    invoke-super {p0, p1}, Lcom/android/tools/r8/origin/Origin;->compareTo(Lcom/android/tools/r8/origin/Origin;)I

    move-result p1

    return p1
.end method

.method public final part()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
