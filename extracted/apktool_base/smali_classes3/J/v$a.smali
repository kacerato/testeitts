.class public LJ/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LJ/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:LJ/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/v$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ/v$a;

    invoke-direct {v0}, LJ/v$a;-><init>()V

    sput-object v0, LJ/v$a;->a:LJ/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()LJ/v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LJ/v$a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LJ/v$a;->a:LJ/v$a;

    return-object v0
.end method


# virtual methods
.method public a(LJ/r;)LJ/n;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/r;",
            ")",
            "LJ/n<",
            "TModel;TModel;>;"
        }
    .end annotation

    invoke-static {}, LJ/v;->c()LJ/v;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
