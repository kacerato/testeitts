.class public Lcom/android/tools/r8/DataEntryResource$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataEntryResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/DataEntryResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[B

.field public final b:Ljava/lang/String;

.field public final c:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>([BLjava/lang/String;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/DataEntryResource$a;->a:[B

    iput-object p2, p0, Lcom/android/tools/r8/DataEntryResource$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/DataEntryResource$a;->c:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public final getByteStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/tools/r8/DataEntryResource$a;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/DataEntryResource$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/DataEntryResource$a;->c:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method
