.class public LQ/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LQ/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field public static final a:LQ/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQ/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LQ/g;

    invoke-direct {v0}, LQ/g;-><init>()V

    sput-object v0, LQ/g;->a:LQ/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()LQ/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "LQ/e<",
            "TZ;TZ;>;"
        }
    .end annotation

    sget-object v0, LQ/g;->a:LQ/g;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/t;LC/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "TZ;>;",
            "LC/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/t<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
