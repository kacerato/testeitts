.class public final Lu8/b$u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyStoreFile",
            "keyStorePassword",
            "keyAlias",
            "keyPassword"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lu8/b$u;->a:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lu8/b$u;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lu8/b$u;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lu8/b$u;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu8/b$k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lu8/b$u;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lu8/b$u;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lu8/b$u;->a:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic b(Lu8/b$u;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu8/b$u;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lu8/b$u;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu8/b$u;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lu8/b$u;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu8/b$u;->d:Ljava/lang/String;

    return-object p0
.end method
