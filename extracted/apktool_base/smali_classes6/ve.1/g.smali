.class public abstract Lve/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lqe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lqe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lqe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe/s<",
            "Lve/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "image-destination"

    invoke-static {v0}, Lqe/s;->f(Ljava/lang/String;)Lqe/s;

    move-result-object v0

    sput-object v0, Lve/g;->a:Lqe/s;

    const-string v0, "image-replacement-text-is-link"

    invoke-static {v0}, Lqe/s;->f(Ljava/lang/String;)Lqe/s;

    move-result-object v0

    sput-object v0, Lve/g;->b:Lqe/s;

    const-string v0, "image-size"

    invoke-static {v0}, Lqe/s;->f(Ljava/lang/String;)Lqe/s;

    move-result-object v0

    sput-object v0, Lve/g;->c:Lqe/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
