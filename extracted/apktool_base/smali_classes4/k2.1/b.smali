.class public Lk2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk2/a;

.field public static final b:Lk2/a;

.field public static final c:Lk2/a;

.field public static final d:Lk2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk2/b$a;

    invoke-direct {v0}, Lk2/b$a;-><init>()V

    sput-object v0, Lk2/b;->a:Lk2/a;

    new-instance v0, Lk2/b$b;

    invoke-direct {v0}, Lk2/b$b;-><init>()V

    sput-object v0, Lk2/b;->b:Lk2/a;

    new-instance v0, Lk2/b$c;

    invoke-direct {v0}, Lk2/b$c;-><init>()V

    sput-object v0, Lk2/b;->c:Lk2/a;

    new-instance v0, Lk2/b$d;

    invoke-direct {v0}, Lk2/b$d;-><init>()V

    sput-object v0, Lk2/b;->d:Lk2/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IZ)Lk2/a;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    sget-object p0, Lk2/b;->d:Lk2/a;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid fade mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p0, Lk2/b;->c:Lk2/a;

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p0, Lk2/b;->b:Lk2/a;

    goto :goto_0

    :cond_3
    sget-object p0, Lk2/b;->a:Lk2/a;

    :goto_0
    return-object p0

    :cond_4
    if-eqz p1, :cond_5

    sget-object p0, Lk2/b;->a:Lk2/a;

    goto :goto_1

    :cond_5
    sget-object p0, Lk2/b;->b:Lk2/a;

    :goto_1
    return-object p0
.end method
