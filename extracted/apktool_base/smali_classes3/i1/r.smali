.class public final Li1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li1/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li1/s;

    invoke-direct {v0}, Li1/s;-><init>()V

    sput-object v0, Li1/r;->a:Li1/s;

    return-void
.end method

.method public static synthetic a()Li1/s;
    .locals 1

    sget-object v0, Li1/r;->a:Li1/s;

    return-object v0
.end method
