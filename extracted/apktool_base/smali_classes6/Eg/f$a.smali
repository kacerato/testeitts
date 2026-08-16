.class public LEg/f$a;
.super LEg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/io/File;

.field public final c:LBg/s;


# direct methods
.method public constructor <init>(Ljava/io/File;LBg/s;LBg/m;)V
    .locals 0

    invoke-direct {p0, p3}, LEg/d;-><init>(LBg/m;)V

    iput-object p1, p0, LEg/f$a;->b:Ljava/io/File;

    iput-object p2, p0, LEg/f$a;->c:LBg/s;

    return-void
.end method

.method public static synthetic a(LEg/f$a;)LBg/s;
    .locals 0

    iget-object p0, p0, LEg/f$a;->c:LBg/s;

    return-object p0
.end method

.method public static synthetic b(LEg/f$a;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, LEg/f$a;->b:Ljava/io/File;

    return-object p0
.end method
