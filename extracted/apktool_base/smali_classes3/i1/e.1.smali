.class public final Li1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li1/f;

    invoke-direct {v0}, Li1/f;-><init>()V

    sput-object v0, Li1/e;->a:Li1/f;

    return-void
.end method

.method public static synthetic a()Li1/f;
    .locals 1

    sget-object v0, Li1/e;->a:Li1/f;

    return-object v0
.end method
