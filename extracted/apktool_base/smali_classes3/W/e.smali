.class public LW/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LW/f<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final a:LW/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LW/e<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:LW/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LW/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LW/e;

    invoke-direct {v0}, LW/e;-><init>()V

    sput-object v0, LW/e;->a:LW/e;

    new-instance v0, LW/e$a;

    invoke-direct {v0}, LW/e$a;-><init>()V

    sput-object v0, LW/e;->b:LW/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()LW/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "LW/f<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, LW/e;->a:LW/e;

    return-object v0
.end method

.method public static c()LW/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "LW/g<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, LW/e;->b:LW/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;LW/f$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
