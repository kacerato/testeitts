.class public final Lcom/android/tools/r8/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataEntryResource;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/DataEntryResource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/DataEntryResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/v;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/v;->b:Lcom/android/tools/r8/DataEntryResource;

    return-void
.end method


# virtual methods
.method public final getByteStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/v;->b:Lcom/android/tools/r8/DataEntryResource;

    invoke-interface {v0}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/v;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/v;->b:Lcom/android/tools/r8/DataEntryResource;

    invoke-interface {v0}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/v;->b:Lcom/android/tools/r8/DataEntryResource;

    invoke-interface {v0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method
