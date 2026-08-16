.class public LEg/e$a;
.super LEg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LBg/s;


# direct methods
.method public constructor <init>(Ljava/util/List;LBg/s;LBg/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "LBg/s;",
            "LBg/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, LEg/d;-><init>(LBg/m;)V

    iput-object p1, p0, LEg/e$a;->b:Ljava/util/List;

    iput-object p2, p0, LEg/e$a;->c:LBg/s;

    return-void
.end method

.method public static synthetic a(LEg/e$a;)LBg/s;
    .locals 0

    iget-object p0, p0, LEg/e$a;->c:LBg/s;

    return-object p0
.end method

.method public static synthetic b(LEg/e$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LEg/e$a;->b:Ljava/util/List;

    return-object p0
.end method
