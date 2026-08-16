.class public final LA3/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "success",
            "result"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, LA3/a$d;->a:Z

    .line 4
    iput-object p2, p0, LA3/a$d;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;LA3/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LA3/a$d;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(LA3/a$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LA3/a$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(LA3/a$d;)Z
    .locals 0

    iget-boolean p0, p0, LA3/a$d;->a:Z

    return p0
.end method
