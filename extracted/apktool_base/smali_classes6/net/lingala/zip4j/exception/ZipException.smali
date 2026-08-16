.class public Lnet/lingala/zip4j/exception/ZipException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/exception/ZipException$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private type:Lnet/lingala/zip4j/exception/ZipException$a;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Lnet/lingala/zip4j/exception/ZipException$a;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$a;

    iput-object p1, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lnet/lingala/zip4j/exception/ZipException$a;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$a;

    iput-object p1, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Lnet/lingala/zip4j/exception/ZipException$a;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$a;

    iput-object p1, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lnet/lingala/zip4j/exception/ZipException$a;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Lnet/lingala/zip4j/exception/ZipException$a;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$a;

    .line 12
    iput-object p3, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object p1, Lnet/lingala/zip4j/exception/ZipException$a;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$a;

    .line 9
    iput-object p2, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$a;

    return-void
.end method


# virtual methods
.method public getType()Lnet/lingala/zip4j/exception/ZipException$a;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$a;

    return-object v0
.end method
