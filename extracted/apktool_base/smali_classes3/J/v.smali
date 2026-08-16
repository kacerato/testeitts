.class public LJ/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJ/v$a;,
        LJ/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LJ/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:LJ/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ/v;

    invoke-direct {v0}, LJ/v;-><init>()V

    sput-object v0, LJ/v;->a:LJ/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()LJ/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LJ/v<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LJ/v;->a:LJ/v;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILC/h;)LJ/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LC/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "LC/h;",
            ")",
            "LJ/n$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p2, LJ/n$a;

    new-instance p3, LX/e;

    invoke-direct {p3, p1}, LX/e;-><init>(Ljava/lang/Object;)V

    new-instance p4, LJ/v$b;

    invoke-direct {p4, p1}, LJ/v$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, LJ/n$a;-><init>(LC/e;LD/d;)V

    return-object p2
.end method
