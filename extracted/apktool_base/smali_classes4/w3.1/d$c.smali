.class public final Lw3/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "manifestBytes",
            "mainSectionBytes",
            "sectionBytesByName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lw3/d$c;->a:[B

    .line 4
    iput-object p2, p0, Lw3/d$c;->b:[B

    .line 5
    iput-object p3, p0, Lw3/d$c;->c:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>([B[BLjava/util/Map;Lw3/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lw3/d$c;-><init>([B[BLjava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lw3/d$c;)[B
    .locals 0

    iget-object p0, p0, Lw3/d$c;->a:[B

    return-object p0
.end method

.method public static synthetic b(Lw3/d$c;)[B
    .locals 0

    iget-object p0, p0, Lw3/d$c;->b:[B

    return-object p0
.end method

.method public static synthetic c(Lw3/d$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lw3/d$c;->c:Ljava/util/Map;

    return-object p0
.end method
