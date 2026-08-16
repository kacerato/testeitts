.class public LIb/f$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIb/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:[I

.field public final b:[D

.field public c:Z

.field public d:Z

.field public final e:LIb/f$a;


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, LIb/f$d;->a:[I

    const/4 v1, 0x4

    new-array v1, v1, [D

    iput-object v1, p0, LIb/f$d;->b:[D

    const/4 v1, 0x0

    iput-boolean v1, p0, LIb/f$d;->c:Z

    iput-boolean v1, p0, LIb/f$d;->d:Z

    new-instance v2, LIb/f$a;

    invoke-direct {v2}, LIb/f$a;-><init>()V

    iput-object v2, p0, LIb/f$d;->e:LIb/f$a;

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    return-void
.end method

.method public static synthetic a(LIb/f$d;)[I
    .locals 0

    iget-object p0, p0, LIb/f$d;->a:[I

    return-object p0
.end method

.method public static synthetic b(LIb/f$d;)Z
    .locals 0

    iget-boolean p0, p0, LIb/f$d;->c:Z

    return p0
.end method

.method public static synthetic c(LIb/f$d;Z)Z
    .locals 0

    iput-boolean p1, p0, LIb/f$d;->c:Z

    return p1
.end method

.method public static synthetic d(LIb/f$d;)LIb/f$a;
    .locals 0

    iget-object p0, p0, LIb/f$d;->e:LIb/f$a;

    return-object p0
.end method

.method public static synthetic e(LIb/f$d;)Z
    .locals 0

    iget-boolean p0, p0, LIb/f$d;->d:Z

    return p0
.end method

.method public static synthetic f(LIb/f$d;Z)Z
    .locals 0

    iput-boolean p1, p0, LIb/f$d;->d:Z

    return p1
.end method

.method public static synthetic g(LIb/f$d;)[D
    .locals 0

    iget-object p0, p0, LIb/f$d;->b:[D

    return-object p0
.end method
