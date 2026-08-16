.class public final Lw3/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[B

.field public final b:Lw3/j$c;

.field public final c:I


# direct methods
.method public constructor <init>([BLw3/j$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xmlBytes",
            "stringPool",
            "stringIndex"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lw3/j$b;->a:[B

    .line 4
    iput-object p2, p0, Lw3/j$b;->b:Lw3/j$c;

    .line 5
    iput p3, p0, Lw3/j$b;->c:I

    return-void
.end method

.method public synthetic constructor <init>([BLw3/j$c;ILw3/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lw3/j$b;-><init>([BLw3/j$c;I)V

    return-void
.end method

.method public static synthetic a(Lw3/j$b;)[B
    .locals 0

    iget-object p0, p0, Lw3/j$b;->a:[B

    return-object p0
.end method

.method public static synthetic b(Lw3/j$b;)Lw3/j$c;
    .locals 0

    iget-object p0, p0, Lw3/j$b;->b:Lw3/j$c;

    return-object p0
.end method

.method public static synthetic c(Lw3/j$b;)I
    .locals 0

    iget p0, p0, Lw3/j$b;->c:I

    return p0
.end method
