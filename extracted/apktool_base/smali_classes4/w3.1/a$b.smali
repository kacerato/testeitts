.class public final Lw3/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldPackageId",
            "newPackageId",
            "newTitle"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lw3/a$b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lw3/a$b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lw3/a$b;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lw3/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lw3/a$b;)Z
    .locals 0

    iget-boolean p0, p0, Lw3/a$b;->d:Z

    return p0
.end method

.method public static synthetic b(Lw3/a$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lw3/a$b;->d:Z

    return p1
.end method

.method public static synthetic c(Lw3/a$b;)Z
    .locals 0

    iget-boolean p0, p0, Lw3/a$b;->e:Z

    return p0
.end method

.method public static synthetic d(Lw3/a$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lw3/a$b;->e:Z

    return p1
.end method

.method public static synthetic e(Lw3/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw3/a$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lw3/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw3/a$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lw3/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw3/a$b;->a:Ljava/lang/String;

    return-object p0
.end method
