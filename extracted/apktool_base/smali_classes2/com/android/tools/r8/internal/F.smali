.class public abstract Lcom/android/tools/r8/internal/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lA;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/tools/r8/internal/lA;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/F;->a([B)Lcom/android/tools/r8/internal/lA;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Lcom/android/tools/r8/internal/lA;
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/lA;->a([BII)Lcom/android/tools/r8/internal/lA;

    move-result-object p1

    return-object p1
.end method
