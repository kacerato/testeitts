.class public final LA/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:[J

.field public final d:[Ljava/io/File;

.field public final synthetic e:LA/a;


# direct methods
.method public constructor <init>(LA/a;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    .line 2
    iput-object p1, p0, LA/a$e;->e:LA/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, LA/a$e;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, LA/a$e;->b:J

    .line 5
    iput-object p5, p0, LA/a$e;->d:[Ljava/io/File;

    .line 6
    iput-object p6, p0, LA/a$e;->c:[J

    return-void
.end method

.method public synthetic constructor <init>(LA/a;Ljava/lang/String;J[Ljava/io/File;[JLA/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, LA/a$e;-><init>(LA/a;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a()LA/a$c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LA/a$e;->e:LA/a;

    iget-object v1, p0, LA/a$e;->a:Ljava/lang/String;

    iget-wide v2, p0, LA/a$e;->b:J

    invoke-static {v0, v1, v2, v3}, LA/a;->b(LA/a;Ljava/lang/String;J)LA/a$c;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, LA/a$e;->d:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c(I)J
    .locals 3

    iget-object v0, p0, LA/a$e;->c:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public d(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, LA/a$e;->d:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, LA/a;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
