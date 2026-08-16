.class public Lhm/g;
.super Lhm/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lhm/a$b;

    invoke-static {p1}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lhm/a$b;-><init>([B)V

    const/4 p1, 0x1

    new-array p1, p1, [Lhm/a$e;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-direct {p0, p1}, Lhm/a;-><init>([Lhm/a$e;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 2
    new-instance v0, Lhm/a$b;

    invoke-direct {v0, p1}, Lhm/a$b;-><init>([B)V

    const/4 p1, 0x1

    new-array p1, p1, [Lhm/a$e;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-direct {p0, p1}, Lhm/a;-><init>([Lhm/a$e;)V

    return-void
.end method
