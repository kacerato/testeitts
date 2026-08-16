.class public LEg/g$a;
.super LEg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/io/InputStream;

.field public final c:LBg/s;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;LBg/s;LBg/m;)V
    .locals 0

    invoke-direct {p0, p3}, LEg/d;-><init>(LBg/m;)V

    iput-object p1, p0, LEg/g$a;->b:Ljava/io/InputStream;

    iput-object p2, p0, LEg/g$a;->c:LBg/s;

    return-void
.end method

.method public static synthetic a(LEg/g$a;)LBg/s;
    .locals 0

    iget-object p0, p0, LEg/g$a;->c:LBg/s;

    return-object p0
.end method

.method public static synthetic b(LEg/g$a;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, LEg/g$a;->b:Ljava/io/InputStream;

    return-object p0
.end method
