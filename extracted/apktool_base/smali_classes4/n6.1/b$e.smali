.class public final Ln6/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ln6/b$g;

.field public final c:Ljava/lang/Float;


# direct methods
.method public constructor <init>(ILn6/b$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coreIndex",
            "times"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Ln6/b$e;-><init>(ILn6/b$g;Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(ILn6/b$g;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "coreIndex",
            "times",
            "overrideUsagePercent"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Ln6/b$e;->a:I

    .line 6
    iput-object p2, p0, Ln6/b$e;->b:Ln6/b$g;

    .line 7
    iput-object p3, p0, Ln6/b$e;->c:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(ILn6/b$g;Ljava/lang/Float;Ln6/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ln6/b$e;-><init>(ILn6/b$g;Ljava/lang/Float;)V

    return-void
.end method

.method public synthetic constructor <init>(ILn6/b$g;Ln6/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ln6/b$e;-><init>(ILn6/b$g;)V

    return-void
.end method

.method public static synthetic a(Ln6/b$e;)I
    .locals 0

    iget p0, p0, Ln6/b$e;->a:I

    return p0
.end method

.method public static synthetic b(Ln6/b$e;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Ln6/b$e;->c:Ljava/lang/Float;

    return-object p0
.end method

.method public static synthetic c(Ln6/b$e;)Ln6/b$g;
    .locals 0

    iget-object p0, p0, Ln6/b$e;->b:Ln6/b$g;

    return-object p0
.end method
