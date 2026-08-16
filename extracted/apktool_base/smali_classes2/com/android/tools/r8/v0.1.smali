.class public interface abstract Lcom/android/tools/r8/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Resource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/v0$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;
    .locals 2

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 3
    new-instance v1, Lcom/android/tools/r8/v0$a;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/v0$a;-><init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/v0;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/w0;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/w0;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation
.end method
