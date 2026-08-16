.class public LEg/k$a;
.super LEg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEg/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;LBg/m;)V
    .locals 0

    invoke-direct {p0, p2}, LEg/d;-><init>(LBg/m;)V

    iput-object p1, p0, LEg/k$a;->b:Ljava/io/File;

    return-void
.end method

.method public static synthetic a(LEg/k$a;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, LEg/k$a;->b:Ljava/io/File;

    return-object p0
.end method
