.class public LEg/m$a;
.super LEg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEg/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;LBg/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "LBg/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, LEg/d;-><init>(LBg/m;)V

    iput-object p1, p0, LEg/m$a;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(LEg/m$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LEg/m$a;->b:Ljava/util/Map;

    return-object p0
.end method
