.class public final Lcom/android/tools/r8/shaking/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/w3;


# instance fields
.field public final a:[B

.field public final b:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p2}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/x3;->a:[B

    iput-object p1, p0, Lcom/android/tools/r8/shaking/x3;->b:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/file/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final get()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/x3;->a:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x3;->b:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v0}, Lcom/android/tools/r8/origin/Origin;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x3;->b:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method
